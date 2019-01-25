<?php

namespace app\admin\controller;

use app\admin\model\AdminUser as AdminUser_model;
use app\common\controller\Adminbase;
use think\Cache;

/**
 * 后台首页
 * @internal
 */
class Index extends Adminbase
{

    public function _initialize()
    {
        parent::_initialize();
    }

    /**
     * 后台架构页
     */
    public function index()
    {
        $this->assign('userInfo', $this->_userinfo);
        $SUBMENU_CONFIG = model("admin/Menu")->getMenuList();
        // dump($SUBMENU_CONFIG);die;
        $this->assign("SUBMENU_CONFIG", json_encode($SUBMENU_CONFIG));
        return $this->view->fetch();
    }

    //登录判断
    public function login()
    {
        $AdminUser_model = new AdminUser_model;
        if ($AdminUser_model->isLogin()) {
            $this->redirect('admin/index/index');
        }
        if ($this->request->isPost()) {
            $data = $this->request->post();
            // 验证数据
            $result = $this->validate($data, 'AdminUser.checklogin');
            if (true !== $result) {
                $this->error($result);
            }
            //验证码
            if (!captcha_check($data['captcha'])) {
                $this->error('验证码输入错误！');
                return false;
            }
            if ($AdminUser_model->login($data['username'], $data['password'])) {
                $this->success('恭喜您，登陆成功', url('admin/Index/index'));
            } else {
                $this->error($AdminUser_model->getError(), url('admin/index/login'));
            }

        } else {
            return $this->fetch();
        }

    }

    //手动退出登录
    public function logout()
    {
        $AdminUser_model = new AdminUser_model;
        if ($AdminUser_model->logout()) {
            //手动登出时，清空forward
            // cookie("forward", null);
            $this->success('注销成功！', url("admin/index/login"));
        }
    }

    //缓存更新
    public function cache()
    {
        $type = $this->request->request("type");
        switch ($type) {
            case 'data' || 'all':
                \util\Dir::del_dir(ROOT_PATH . 'runtime' . DIRECTORY_SEPARATOR . 'cache');
                Cache::clear();
                if ($type == 'content') {
                    break;
                }

            case 'template' || 'all':
                \util\Dir::del_dir(ROOT_PATH . 'runtime' . DIRECTORY_SEPARATOR . 'temp');
                if ($type == 'template') {
                    break;
                }
        }
        $this->success('清理缓存');
    }

}
