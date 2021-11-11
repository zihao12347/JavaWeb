package cn.itcast.domain;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class DateBean {
    private String datetime;
    private String week;
    //创建Calendar对象
    private Calendar calendar=Calendar.getInstance();

    public String getDatetime() {
        //getTime方法获取当前时间
        Date time = calendar.getTime();
        //实例化SimpleDateFormat
        SimpleDateFormat sdf= new SimpleDateFormat("yyyy年MM月dd日 HH时mm分钟ss秒");
        datetime = sdf.format(time);
        return datetime;
    }

    public void setDatetime(String datetime) {
        this.datetime = datetime;
    }

    public String getWeek() {
        String [] arr={"星期日","星期一","星期二","星期三","星期四","星期五","星期六",};
        //Calendar类get方法中的Calendar.DAY_OF_WEEK参数返回的是int类型的0-6数字；
        int i=calendar.get(Calendar.DAY_OF_WEEK);
        week=arr[i-1];
        return week;
    }

    public void setWeek(String week) {
        this.week = week;
    }
}
