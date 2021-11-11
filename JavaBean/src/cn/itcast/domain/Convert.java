package cn.itcast.domain;

public class Convert {
    public Convert() {
    }
    public String arr2str(String[]arr){
        StringBuffer sb=new StringBuffer();//实例StringBuffer对象
        if (arr!=null&&arr.length>0) {//判断传递过来的数组是否有效
            for (String s : arr) {//遍历数组元素
                sb.append(s);//将每个元素添加到sb对象后面
                sb.append(",");//用","分隔每个元素
            }
            if (sb.length()>0) {//判断当sb不为空的时候
                sb.deleteCharAt(sb.length()-1);//删掉最后一个","分隔符，
            }
        }
        return sb.toString();   //返回字符串
    }
}
