package Ajax.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.entity.Student;
import net.sf.json.JSONObject;
public class JSONServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		//接收前端传来的数据
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		System.out.print(name+"---"+age);
		
		Student stu1 = new Student();
		stu1.setName("aa");
		stu1.setAge(11);
		Student stu2 = new Student();
		stu2.setName("bb");
		stu2.setAge(22);
		Student stu3 = new Student();
		stu3.setName("cc");
		stu3.setAge(33);
		
		JSONObject json = new JSONObject() ;
		json.put("stu1", stu1);
		json.put("stu2", stu2);
		json.put("stu3", stu3);
		
		out.print(json);//向客户端返回JSON对象。比out.write()的参数类型更多。
		out.close();
	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
	}

}
