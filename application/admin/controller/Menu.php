<?php
// +----------------------------------------------------------------------
// | 后台菜单管理
// +----------------------------------------------------------------------
namespace app\admin\controller;

use app\admin\model\Menu as Menu_model;
use app\common\controller\Adminbase;
use think\Db;

class Menu extends Adminbase
{
    protected $Menu = null;

    protected function initialize()
    {
        parent::initialize();
        $this->Menu = new Menu_model;
    }

    //后台菜单首页
    public function index()
    {
        if ($this->request->isAjax()) {
            $tree       = new \util\Tree();
            $tree->icon = array('&nbsp;&nbsp;&nbsp;│ ', '&nbsp;&nbsp;&nbsp;├─ ', '&nbsp;&nbsp;&nbsp;└─ ');
            $tree->nbsp = '&nbsp;&nbsp;&nbsp;';
            $result     = Db::name('menu')->order(array('listorder', 'id' => 'DESC'))->select();
            $tree->init($result);
            $_list  = $tree->getTreeList($tree->getTreeArray(0), 'title');
            $total  = count($_list);
            $result = array("code" => 0, "count" => $total, "data" => $_list);
            return json($result);
        }
        return $this->fetch();

    }

    //添加后台菜单
    public function add()
    {
        if ($this->request->isPost()) {
            $data = $this->request->param();
            if (!isset($data['status'])) {
                $data['status'] = 0;
            } else {
                $data['status'] = 1;
            }
            if ($this->Menu->add($data)) {
                $this->success("添加成功！", url("Menu/index"));
            } else {
                $error = $this->Menu->getError();
                $this->error($error ? $error : '添加失败！');
            }
        } else {
            $tree     = new \util\Tree();
            $parentid = $this->request->param('parentid/d', '');
            $result   = Db::name('menu')->order(array('listorder', 'id' => 'DESC'))->select();
            $array    = array();
            foreach ($result as $r) {
                $r['selected'] = $r['id'] == $parentid ? 'selected' : '';
                $array[]       = $r;
            }
            $str = "<option value='\$id' \$selected>\$spacer \$title</option>";
            $tree->init($array);
            $select_categorys = $tree->get_tree(0, $str);
            // dump($select_categorys);
            $icons            = Db::name('icons')->select();
            $this->assign("icons", $icons);
            $this->assign("select_categorys", $select_categorys);
            return $this->fetch();
        }
    }

    /**
     *编辑后台菜单
     */
    public function edit()
    {
        if ($this->request->isPost()) {
            $data = $this->request->param();
            if (!isset($data['status'])) {
                $data['status'] = 0;
            } else {
                $data['status'] = 1;
            }
            if ($this->Menu->edit($data)) {
                $this->success("编辑成功！", url("Menu/index"));
            } else {
                $error = $this->Menu->getError();
                $this->error($error ? $error : '编辑失败！');
            }
        } else {
            $tree   = new \util\Tree();
            $id     = $this->request->param('id/d', '');
            $rs     = Db::name('menu')->where(["id" => $id])->find();
            $result = Db::name('menu')->order(array('listorder', 'id' => 'DESC'))->select();
            $array  = array();
            foreach ($result as $r) {
                $r['selected'] = $r['id'] == $rs['parentid'] ? 'selected' : '';
                $array[]       = $r;
            }
            $str = "<option value='\$id' \$selected>\$spacer \$title</option>";
            $tree->init($array);
            $select_categorys = $tree->get_tree(0, $str);
            $icons            = Db::name('icons')->select();
            $this->assign("icons", $icons);
            $this->assign("data", $rs);
            $this->assign("select_categorys", $select_categorys);
            return $this->fetch();
        }

    }

    /**
     * 菜单删除
     */
    public function delete()
    {
        $id = $this->request->param('id/d');
        if (empty($id)) {
            $this->error('ID错误');
        }
        $result = Db::name('menu')->where(["parentid" => $id])->find();
        if ($result) {
            $this->error("含有子菜单，无法删除！");
        }
        if (Db::name('menu')->where('id',$id)->delete()) {
            $this->success("删除菜单成功！");
        } else {
            $this->error("删除失败！");
        }
    }

    /**
     * 菜单排序
     */
    public function listorder()
    {
        $id        = $this->request->param('id/d', 0);
        $listorder = $this->request->param('value/d', 0);
        $res        = Db::name('menu')->where('id',$id)->update(['listorder' => $listorder]);
        if ($res) {
            $this->success("菜单排序成功！");
        } else {
            $this->error("菜单排序失败！");
        }
    }

}
