package cn.sots.controller;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.RandomUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.alibaba.fastjson.JSON;

import cn.sots.pojo.User;
import cn.sots.service.UserService;

@Controller
public class UserController {
	
	@Autowired
    private UserService userService;
    
	//登录功能
	@RequestMapping(value="/logining",method=RequestMethod.GET)
    public String loginVeri(@RequestParam("userName") String userName,
        @RequestParam("userPassword") String userPassword,
        HttpSession session,@RequestParam("code") String code,HttpServletResponse response)  {
    	 if(!((String)session.getAttribute("yzm")).equals(code)) {
    		return "login";
         }
        User user = userService.loginVerification(userName, userPassword);
        if (user == null) {
        	return "login";
        } else {
        	session.setAttribute("loginUser", user);
            
            return "redirect:Index";
        }
    }
    
    //登出功能
    @RequestMapping(value = "loginOut",method = RequestMethod.GET)
    public String loginOut(HttpSession session) {
    	session.invalidate();
    	return "login";
    }
	/*
	 * @RequestMapping(value="/CodeImg",method=RequestMethod.GET) public void
	 * getCode(HttpServletRequest req,HttpServletResponse resp) throws Exception {
	 * // ������Ӧ�ĸ�ʽ���� resp.setHeader("Content-Type", "image/jpeg"); //
	 * ����ͼƬ�Ŀ�͸� int w = 80; int h = 30; // ����һ��RGB��ʽ���ڴ��е�ͼƬ BufferedImage
	 * img = new BufferedImage(w, h, BufferedImage.TYPE_INT_RGB); //
	 * ����һ������ͼ��Ķ��� Graphics g = img.getGraphics(); // �ѱ������ɫ
	 * g.setColor(Color.white); g.fillRect(0, 0, w, h); // �������� g.setFont(new
	 * Font("aa", Font.BOLD, 18)); // ������draw��4��������� Random r = new
	 * Random(); // ����һ�����������ĸ������ַ��� String yzm = ""; for (int i = 0; i <
	 * 4; i++) { int a = r.nextInt(10);// ����0~9֮���������� int y = 15 +
	 * r.nextInt(10);// ��������Ĵ�ֱλ�� // ���������ɫ Color c = new
	 * Color(r.nextInt(256), r.nextInt(256), r.nextInt(256)); g.setColor(c);
	 * g.drawString("" + a, i * 15, y); // ����֤��ת��Ϊ�ַ���׷�ӵ�yzm�� yzm += a; }
	 
        // ��yzm����session
        req.getSession().setAttribute("yzm", yzm);
        // ������������
        for (int i = 0; i < 10; i++) {
            // ���������ɫ
            Color c = new Color(r.nextInt(256), r.nextInt(256), r.nextInt(256));
            g.setColor(c);
            g.drawLine(r.nextInt(60), r.nextInt(30), r.nextInt(60), r.nextInt(30));
        }
        g.dispose();// ������IO�е�flush(),��ͼ������ˢ��img��
        // ���ڴ�ͼƬ img ���󱣴浽һ�� jpg �ļ�
        ImageIO.write(img, "JPEG", resp.getOutputStream());
    }*/
    
    
    
    //文件上传
  	@RequestMapping(value = "/upload",method = RequestMethod.POST)
  	@ResponseBody
  	public Object upload(@RequestParam("file") MultipartFile file, HttpSession session) {
  		  // 判断上传文件是否为空
          Map<String, Integer> map = new HashMap<String, Integer>();
          // 定义上传文件的路径
          String filePath = session.getServletContext().getRealPath("/file");
          if(!file.isEmpty()) {
              // 获得原文件名
              String oldName = file.getOriginalFilename();
              // 对文件名进行一个处理
              String newFileName = System.currentTimeMillis()+RandomUtils.nextInt(100,999)+oldName;
              // 创建上传文件对象
              File saveFile = new File(filePath, newFileName);
              // 判断文件对象是否存在，存在就创建
              if (!saveFile.exists()) {
                  saveFile.mkdirs();
              }
              // 将文件进行上传
              try {
                  file.transferTo(saveFile);
                  map.put("code",1);
              } catch (IllegalStateException e) {
                  e.printStackTrace();
                  map.put("code",0);
              } catch (IOException e) {
                  e.printStackTrace();
                  map.put("code",0);
              }
              // 将文件保存到本地文件夹中 E:/uploadFile/
              try {
                  DataInputStream dis = new DataInputStream(new FileInputStream(saveFile));
                  DataOutputStream dos = new DataOutputStream(new FileOutputStream("E:/JAVA/eclipse-workspace/Tourists/WebContent/static/img/userphotos/"+newFileName));
                  /*DataOutputStream dos = new DataOutputStream(new FileOutputStream("E:/uploadFile/"+newFileName));*/
                  int len = -1;
                  while ((len = dis.read()) != -1) {
                      dos.write(len);
                  }
                  dos.close();
                  dis.close();
                  String userPhoto = newFileName;
                  //将上传文件保存到session中
                  session.setAttribute("userPhoto", newFileName);
              } catch (FileNotFoundException e) {
                  e.printStackTrace();
              } catch (IOException e) {
                  e.printStackTrace();
              }
          }
          return JSON.toJSONString(map);
  	}
  	
  //验证码
  	@RequestMapping(value="/CodeImg",method=RequestMethod.GET)
    public void getCode(HttpServletRequest req,HttpServletResponse resp) throws Exception {
		// 设置响应的格式类型
		resp.setHeader("Content-Type", "image/jpeg");
		// 定义图片的宽和高
		int w = 80;
		int h = 30;
		// 声明一个RGB格式的内存中的图片
		BufferedImage img = new BufferedImage(w, h, BufferedImage.TYPE_INT_RGB);
		// 创建一个绘制图像的对象
		Graphics g = img.getGraphics();
		// 把背景变白色
		g.setColor(Color.white);
		g.fillRect(0, 0, w, h);
		// 设置字体
		g.setFont(new Font("aa", Font.BOLD, 18));
		// 产生并draw出4个随机数字
		Random r = new Random();
		// 创建一个保存生成四个数的字符串
		String yzm = "";
		for (int i = 0; i < 4; i++) {
			int a = r.nextInt(10);// 生成0~9之间的随机整数
			int y = 15 + r.nextInt(10);// 产生随机的垂直位置
			// 产生随机颜色
			Color c = new Color(r.nextInt(256), r.nextInt(256), r.nextInt(256));
			g.setColor(c);
			g.drawString("" + a, i * 15, y);
			// 把验证码转换为字符串追加到yzm中
			yzm += a;
		}
		// 把yzm放入session
		req.getSession().setAttribute("yzm", yzm);
		// 画几条干扰线
		for (int i = 0; i < 10; i++) {
			// 产生随机颜色
			Color c = new Color(r.nextInt(256), r.nextInt(256), r.nextInt(256));
			g.setColor(c);
			g.drawLine(r.nextInt(60), r.nextInt(30), r.nextInt(60), r.nextInt(30));
		}
		g.dispose();// 类似于IO中的flush(),把图形数据刷到img中
		// 把内存图片 img 对象保存到一个 jpg 文件
		ImageIO.write(img, "JPEG", resp.getOutputStream());
    }
  	
  	//用户的注册
  	@RequestMapping(value = "/addUser",method = RequestMethod.POST)
  	@ResponseBody
  	public Object addUser(User user, HttpSession session
  			,@RequestParam("code") String code,HttpServletResponse response) throws IOException {
  		Map<String, Integer> map = new HashMap<String, Integer>();
  		if(!((String)session.getAttribute("yzm")).equals(code)) {
  			response.sendRedirect("jsp/register.jsp");
  		}else {
  			//获得上传图片的信息
  			String userPhoto = (String)session.getAttribute("userPhoto");
  			user.setUserPhoto(userPhoto);
  			session.removeAttribute(userPhoto);
  			String userCode = "u"+RandomUtils.nextInt(10,99);
  			user.setUserCode(userCode);
  			user.setUcid(1);
  			boolean isOk = userService.addUser(user);
  			if(isOk) {
  				map.put("code", 1);
  			}else {
  				map.put("code", 0);
  			}  
  		}
  		return JSON.toJSONString(map);
  	}
  	
	/*
	 * //展示
	 * 
	 * @RequestMapping(value = "/getall",method = RequestMethod.GET) public String
	 * getUser(Model model) { List<User> list = userService.getUserList();
	 * model.addAttribute("list", list); return "NewFile"; }
	 */
    
}
