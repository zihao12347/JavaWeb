package cn.itcast.domain;

import java.util.Date;

public class User {
    private String name;
    private int age;
    private String brithday;

    public User(String name, int age, String brithday) {
        this.name = name;
        this.age = age;
        this.brithday = brithday;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getBrithday() {
        return brithday;
    }

    public void setBrithday(String brithday) {
        this.brithday = brithday;
    }

    @Override
    public String toString() {
        return "User{" +
                "name='" + name + '\'' +
                ", age=" + age +
                ", brithday='" + brithday + '\'' +
                '}';
    }
}
