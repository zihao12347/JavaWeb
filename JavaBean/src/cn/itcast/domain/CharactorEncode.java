package cn.itcast.domain;

import java.io.UnsupportedEncodingException;

/**
 * 创建一个对字符编码的JavaBean,在该类中有一个toString()方法对字符进行转码
 *
 */
public class CharactorEncode {
    /**
     * 空参的构造方法
     */
    public CharactorEncode() {
    }

    /**
     * 对字符串进行转码处理
     * @param str 要转码的字符串
     * @return text 转码后的字符串
     */
    public String toString(String str){
        //转换字符
        String text="";
        //判断str不为空
        if (str!=null&&!"".equals(str)) {
            try {
                //将获取的字符串进行编码处理
                /**
                 * String的getBytes()方法是得到一个系统默认的编码格式的字节数组
                 * 将string转化成ISO-8859-1的字节数组，在转化成UTF-8的字节数组
                 */
                text=new String(str.getBytes("ISO-8859-1"),"UTF-8");
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        }
        return text;
    }
}
