<?php

namespace app\admin\controller;

use app\admin\model\AdminLog;
use app\common\controller\Adminbase;
use think\Config;
use think\Hook;
use think\Validate;

/**
 * 后台首页
 * @internal
 */
class Main extends Adminbase
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
        return $this->view->fetch();
    }

}