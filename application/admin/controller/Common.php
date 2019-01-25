<?php
namespace app\admin\controller;
use think\Controller;

class Common extends Controller 
{

    public function captcha()
    {
        ob_clean();
        $config = [
            // 验证码字符集合
            'codeSet'  => '2345678abcdefhijkmnpqrstuvwxyzABCDEFGHJKLMNPQRTUVWXY',
            // 验证码字体大小(px)
            'fontSize' => 16,
            // 是否画混淆曲线
            'useCurve' => false,
            // 验证码图片高度
            'imageH'   => 42,
            // 验证码图片宽度
            'imageW'   => 135,
            // 验证码位数
            'length'   => 4,
            // 验证成功后是否重置
            'reset'    => true,
        ];
        return captcha('', $config);
    }
}