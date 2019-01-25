<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006-2016 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: che-my <https://github.com/che-my>
// +----------------------------------------------------------------------

// +----------------------------------------------------------------------
// | 全局函数文件
// +----------------------------------------------------------------------

if(!function_exists('cache')){
    /**
     * 系统缓存缓存管理
     * cache('model') 获取model缓存
     * cache('model',null) 删除model缓存
     * @param mixed $name 缓存名称
     * @param mixed $value 缓存值
     * @param mixed $options 缓存参数
     * @return mixed
     */
    function cache($name, $value = '', $options = null)
    {
        static $cache = '';
        if (empty($cache)) {
            $cache = \libs\Cache_factory::instance();
        }
        // 获取缓存
        if ('' === $value) {
            if (false !== strpos($name, '.')) {
                $vars = explode('.', $name);
                $data = $cache->get($vars[0]);
                return is_array($data) ? $data[$vars[1]] : $data;
            } else {
                return $cache->get($name);
            }
        } elseif (is_null($value)) {
            //删除缓存
            return $cache->remove($name);
        } else {
            //缓存数据
            if (is_array($options)) {
                $expire = isset($options['expire']) ? $options['expire'] : null;
            } else {
                $expire = is_numeric($options) ? $options : null;
            }
            return $cache->set($name, $value, $expire);
        }
    }
}

if(!function_exists('encrypt_password')){
    /**
     * 对用户的密码进行加密
     * @param $password
     * @param $encrypt //传入加密串，在修改密码时做认证
     * @return array/password
     */
    function encrypt_password($password, $encrypt = '')
    {
        $pwd             = array();
        $pwd['encrypt']  = $encrypt ? $encrypt : genRandomString();
        $pwd['password'] = md5(trim($password) . $pwd['encrypt']);
        return $encrypt ? $pwd['password'] : $pwd;
    }
}

if(!function_exists('genRandomString')){
    /**
     * 产生一个指定长度的随机字符串,并返回给用户
     * @param type $len 产生字符串的长度
     * @return string 随机字符串
     */
    function genRandomString($len = 6)
    {
        $chars = array(
            "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k",
            "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v",
            "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G",
            "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R",
            "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2",
            "3", "4", "5", "6", "7", "8", "9",
        );
        $charsLen = count($chars) - 1;
        // 将数组打乱
        shuffle($chars);
        $output = "";
        for ($i = 0; $i < $len; $i++) {
            $output .= $chars[mt_rand(0, $charsLen)];
        }
        return $output;
    }
}

if(!function_exists('data_auth_sign')){
    /**
     * 数据签名认证
     * @param  array  $data 被认证的数据
     * @return string       签名
     */
    function data_auth_sign($data)
    {
        //数据类型检测
        if (!is_array($data)) {
            $data = (array) $data;
        }
        ksort($data); //排序
        $code = http_build_query($data); //url编码并生成query字符串
        $sign = sha1($code); //生成签名
        return $sign;
    }
}

if(!function_exists('parse_attr')){
    /**
     * 解析配置
     * @param string $value 配置值
     * @return array|string
     */
    function parse_attr($value = '')
    {
        $array = preg_split('/[,;\r\n]+/', trim($value, ",;\r\n"));
        if (strpos($value, ':')) {
            $value = array();
            foreach ($array as $val) {
                list($k, $v) = explode(':', $val);
                $value[$k]   = $v;
            }
        } else {
            $value = $array;
        }
        return $value;
    }
}

if(!function_exists('time_format')){
    /**
     * 时间戳格式化
     * @param int $time
     * @return string 完整的时间显示
     */
    function time_format($time = null, $format = 'Y-m-d H:i')
    {
        $time = $time === null ? $_SERVER['REQUEST_TIME'] : intval($time);
        return date($format, $time);
    }
}


if(!function_exists('format_bytes')){
    /**
     * 格式化字节大小
     * @param  number $size      字节数
     * @param  string $delimiter 数字和单位分隔符
     * @return string            格式化后的带单位的大小
     */
    function format_bytes($size, $delimiter = '')
    {
        $units = array('B', 'KB', 'MB', 'GB', 'TB', 'PB');
        for ($i = 0; $size >= 1024 && $i < 5; $i++) {
            $size /= 1024;
        }

        return round($size, 2) . $delimiter . $units[$i];
    }
}

if(!function_exists('datetime')){

    function datetime($data, $rule = 0)
    {
        if ($rule) {
            $time = function ($value, $data) {
                return date('Y-m-d', $value);
            };
        } else {
            $time = function ($value, $data) {
                return date('Y-m-d H:i:s', $value);
            };
        }

        return $time;
    }
}

if(!function_exists('emoji_encode')){
    // 微信昵称特殊符号过滤
    function emoji_encode($nickname)
    {
        $nickname = json_encode($nickname);
        $nickname = str_replace(' ', '', $nickname);
        for ($i = 0; $i <= 5; $i++) {
            $a = strpos($nickname, "\\ud83d");
            if ($a !== false) {
                $nickname = substr_replace($nickname, '', $a, 12);
            }
        }

        for ($i = 0; $i <= 5; $i++) {
            $a = strpos($nickname, "\\ud83c");
            if ($a !== false) {
                $nickname = substr_replace($nickname, '', $a, 12);
            }
        }
        $nickname = json_decode($nickname);
        return $nickname;
    }

}

if(!function_exists('list_to_tree')){
    /**
     * 把返回的数据集转换成Tree
     * @param array $list 要转换的数据集
     * @param string $pid parent标记字段
     * @param string $level level标记字段
     * @return array
     * @author 麦当苗儿 <zuojiazi@vip.qq.com>
     */
    function list_to_tree($list, $pk = 'id', $pid = 'parentid', $child = '_child', $root = 0)
    {
        // 创建Tree
        $tree = array();
        if (is_array($list)) {
            // 创建基于主键的数组引用
            $refer = array();
            foreach ($list as $key => $data) {
                $refer[$data[$pk]] = &$list[$key];
            }
            foreach ($list as $key => $data) {
                // 判断是否存在parent
                $parentId = $data[$pid];
                if ($root == $parentId) {
                    $tree[] = &$list[$key];
                } else {
                    if (isset($refer[$parentId])) {
                        $parent           = &$refer[$parentId];
                        $parent[$child][] = &$list[$key];
                    }
                }
            }
        }
        return $tree;
    }
}

if (!function_exists('list_to_tree')) {
    /**
     * 将list_to_tree的树还原成列表
     * @param  array $tree 原来的树
     * @param  string $child 孩子节点的键
     * @param  string $order 排序显示的键，一般是主键 升序排列
     * @param  array $list 过渡用的中间数组，
     * @return array        返回排过序的列表数组
     * @author yangweijie <yangweijiester@gmail.com>
     */
    function tree_to_list($tree, $child = 'children', $order = 'id', &$list = array())
    {
        if (is_array($tree)) {
            $refer = array();
            foreach ($tree as $key => $value) {
                $reffer = $value;
                if (isset($reffer[$child])) {
                    unset($reffer[$child]);
                    tree_to_list($value[$child], $child, $order, $list);
                }
                $list[] = $reffer;
            }
            $list = list_sort_by($list, $order, $sortby = 'asc');
        }
        return $list;
    }
}

