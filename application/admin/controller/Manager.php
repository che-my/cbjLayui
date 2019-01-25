<?php
namespace app\admin\controller;

use app\admin\model\AdminUser;
use app\admin\model\AuthGroup as AuthGroup_Model;
use app\common\controller\Adminbase;
use think\Db;
use think\db\Where;

/**
 * 管理员管理
 */
class Manager extends Adminbase
{
    protected function initialize()
    {
        parent::initialize();
        $this->AdminUser = new AdminUser;
        $this->redis     = new \think\cache\driver\Redis();
    }

    /**
     * 管理员管理列表
     */
    public function index()
    {
        if ($this->request->isAjax()) {
            $datas = $this->request->get('');
            $page  = $datas['page'];
            $limit = $datas['limit'];
            unset($datas['page']);
            unset($datas['limit']);
            $str = '';
            foreach ($datas as $k => $v) {
                $str .= $v;
            }
            if ($str) {
                if ($datas['work_num']) {
                    $map['work_num'] = ['like', '%' . trim($datas['work_num']) . '%'];
                }
                if ($datas['nickname']) {
                    $map['nickname'] = ['like', '%' . trim($datas['nickname']) . '%'];
                }
                if ($datas['phone']) {
                    $map['phone'] = ['like', '%' . trim($datas['phone']) . '%'];
                }
                if ($datas['pname']) {
                    $map['pname'] = ['like', "%" . trim($datas['pname']) . "%"];
                }
                if ($datas['username']) {
                    $map['username'] = ['like', '%' . trim($datas['username']) . '%'];
                }
            } else {
                $map = '';
            }
            $this->AuthGroup_Model = new AuthGroup_Model();
            if ($map) {
                $_list = Db::table("fy_admin")
                    ->where(new Where($map))
                    ->page($page, $limit)
                    ->order(array('userid' => 'DESC'))
                    ->withAttr('last_login_time', function ($value, $data) {
                        return date('Y-m-d H:i:s', $value);
                    })
                    ->withAttr('last_login_ip', function ($value, $data) {
                        return long2ip($value);
                    })
                    ->withAttr('roleid', function ($value, $data) {
                        return $this->AuthGroup_Model->getRoleIdName($value);
                    })
                    ->select();
                $total = count(Db::table("fy_admin")->where(new Where($map))->select());
                unset($map);
                unset($datas);
                unset($str);
            } else {
                $_list = Db::name("admin")
                    ->page($page, $limit)
                    ->order(array('userid' => 'DESC'))
                    ->withAttr('last_login_time', function ($value, $data) {
                        return date('Y-m-d H:i:s', $value);
                    })
                    ->withAttr('last_login_ip', function ($value, $data) {
                        return long2ip($value);
                    })
                    ->withAttr('roleid', function ($value, $data) {
                        return $this->AuthGroup_Model->getRoleIdName($value);
                    })
                    ->select();
                $total = count(Db::name('admin')->select());
            }
            $result = array("code" => 0, "count" => $total, "data" => $_list);
            return json($result);
        }
        $tree     = new \util\Tree();
        $parentid = $this->request->param('parentid/d', '');
        $result   = Db::name('framework')->order(array('listorder', 'id' => 'DESC'))->select();
        $array    = array();
        foreach ($result as $r) {
            $r['selected'] = $r['id'] == $parentid ? 'selected' : '';
            $array[]       = $r;
        }
        $str = "<option value='\$id' \$selected>\$spacer \$title</option>";
        $tree->init($array);
        $frameworks = $tree->get_tree(0, $str);
        $this->assign("frameworks", $frameworks);
        return $this->fetch();
    }

    /**
     * 添加管理员
     */
    public function add()
    {
        if ($this->request->isPost()) {
            $data = $this->request->post('');
            if ($data['pid'] == 'null') {
                $this->error('请选择最终团队！');
            }
            if (!isset($data['status'])) {
                $data['status'] = 0;
            } else {
                $data['status'] = 1;
            }
            if (isset($data['result'])) {
                $data['result'] = implode(',', $data['result']);
            }
            if ($this->AdminUser->createManager($data)) {
                $this->success("添加管理员成功！", url('admin/manager/index'));
            } else {
                $error = $this->AdminUser->getError();
                $this->error($error ? $error : '添加失败！');
            }

        } else {
            $framework = Db::name('framework')->where(['parentid' => 0])->order(array('listorder', 'id' => 'DESC'))->select();
            $this->assign("framework", $framework);
            $this->assign("roles", model('admin/AuthGroup')->getGroups());
            return $this->fetch();
        }
    }

    /**
     * 管理员编辑
     */
    public function edit()
    {

        if ($this->request->isPost()) {
            header("Content-type: text/html; charset=utf-8");
            $data = $this->request->post('');
            if (isset($data['result'])) {
                $data['result'] = implode(',', $data['result']);
            }
            if ($data['pid'] == 'null') {
                $this->error('请选择最终团队！');
            }
            if (!isset($data['status'])) {
                $data['status'] = 0;
            } else {
                $data['status'] = 1;
            }
            if ($this->AdminUser->editManager($data)) {
                $admin = Db::name("admin")->where("userid", $data['userid'])->find();
                if ($admin['openid']) {
                    $this->redis->set("user_" . $admin['openid'], null);
                }
                $this->success("修改成功！", url('admin/manager/index'));
            } else {
                $this->error($this->AdminUser->getError() ?: '修改失败！');
            }
        } else {
            $id   = $this->request->param('id/d');
            $data = $this->AdminUser->where(array("userid" => $id))->find();
            if (empty($data)) {
                $this->error('该信息不存在！');
            }
            if ($data['pid'] != 'null') {
                if (strpos($data['pid'], '-') !== false) {
                    $pid  = explode('-', $data['pid']);
                    $pids = $pid[(count($pid) - 1)];
                } else {
                    $pids = $data['pid'];
                }
            }
            $result = explode(',', $data['result']);
            $this->assign("data", $data);
            $this->assign("result", $result);
            $this->assign("pids", $pids);
            $this->assign("roles", model('admin/AuthGroup')->getGroups());
            return $this->fetch();
        }
    }

    /**
     * 管理员删除
     */
    public function del()
    {
        $id    = $this->request->param('id/d');
        $admin = Db::name("admin")->where("userid", $id)->find();
        if ($this->AdminUser->deleteManager($id)) {
            if ($admin['openid']) {
                $this->redis->set("user_" . $admin['openid'], null);
            }
            $this->success("删除成功！");
        } else {
            $this->error($this->AdminUser->getError() ?: '删除失败！');
        }
    }

    /**
     * 获取部门团队
     */
    public function getchildarea()
    {
        $parentid = $this->request->param('parentid/w');
        if (preg_match('/\-/', $parentid)) {
            $arr       = explode('-', $parentid);
            $count     = count($arr) - 1;
            $parentids = $arr[$count];
        } else {
            $parentids = $parentid;
        }
        $option = '';
        if ($parentid != 'null') {
            $framework = Db::name('framework')->where(['parentid' => $parentids])->order(array('listorder', 'id' => 'DESC'))->select();
            foreach ($framework as $key => $value) {
                $option .= "<option value='" . $parentid . "-" . $value['id'] . "'>{$value['title']}</option>";
            }
            $result = array("code" => 0, "option" => $option);
            return json($result);
        } else {
            $result = array("code" => 1, "option" => $option);
            return json($result);
        }

    }

    //多选删除
    public function delall($id = '')
    {
        if ($this->request->isPost()) {
            $ids = input('post.ids/a', null, 'intval');
            if (empty($ids)) {
                $this->error('没有勾选需要删除的选项~');
            }
            if ($this->AdminUser->delAll($ids)) {
                $this->success('删除成功~');
            } else {
                $this->error($this->AdminUser->getError() ?: '删除失败！');
            }
        } else {
            $id = intval($id);
            if ($id <= 0) {
                $this->error('参数错误~');
            }
            if ($this->AdminUser->deleteManager($id)) {
                $this->success('删除成功~');
            } else {
                $this->error($this->AdminUser->getError() ?: '删除失败！');
            }

        }
    }

}
