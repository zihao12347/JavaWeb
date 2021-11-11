package com.itcast.servlet;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

@WebServlet("/checkCodeServlet")
public class CheckCodeServlet extends HttpServlet {
    /**
     * 验证码图片
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("image/jpeg"); // 设置响应正文的MIME类型为图片
        /**
         * 一：创建一个对象，在内存中的图片（验证码图片对象）
         */

        int height=50;
        int width=100;

        BufferedImage image=new BufferedImage(width,height,BufferedImage.TYPE_3BYTE_BGR);

        /**
         * 二：美化图片
         */

        //1)填充图片背景色
        Graphics graphics = image.getGraphics();
        graphics.setColor(Color.pink);
        graphics.fillRect(0,0,width,height);
        //2)画边框时右下方的坐标点要减去1.因为边框要占一个像素，不然就画到图片对象外面不能显示
        graphics.setColor(Color.BLUE);
        //注意画边框的
        graphics.drawRect(0,0,width-1,height-1);
        //3)向图片内中写入文字
        //1列出随机的所有字符
        String string="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
        //2创建random对象,
        Random random=new Random();
        //创建一个可变字符序列的StringBuilder类，用于保存每次随机生成的ch字符
        StringBuilder sb=new StringBuilder();
        for (int i = 0; i <4 ; i++) {
            //3获取string的引索长度
            int  index = random.nextInt(string.length());
            //4获取返回的string中返回的字符
            char ch=string.charAt(index);
            //将每次随机生成的ch添加到sb对象中
            sb.append(ch);
            graphics.drawString(ch+"",20+20*i,25);
        }
        //将获取的每个ch字符，以字符串形式保存在checkcode中，形成完整的chockcode验证码
        String checkcode = sb.toString();
        //将验证码保存到session中，先获取request中的session对象，在使用setAttribute方法将保存验证码保存在session对象中
        request.getSession().setAttribute("checkcode",checkcode);




        //4)画干扰线
        graphics.setColor(Color.GREEN);
        for (int i = 0; i <10 ; i++) {
            //随机生成划线坐标
            int x1 = random.nextInt(width);
            int x2 = random.nextInt(width);

            int y1 = random.nextInt(height);
            int y2 = random.nextInt(height);

            //drawLine()方法画干扰线
            graphics.drawLine(x1,y1,x2,y2);

        }



        /**
         * 三：将图片输出到页面中
         */
        //3.ImagIO的write（图片对象，图片格式名称，response.getOutputStream()）方法
        ImageIO.write(image,"JPEG",response.getOutputStream());

    }
}
