package Ajax.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class AjaxServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//设置请求响应编码
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		String name = request.getParameter("name");
		PrintWriter out = response.getWriter();//输出流，相当于JSP的out
		
		if("王寰".equals(name)){
//			out.write("true");//Servlet以输出流的方式将信息返回给客户端
			out.write("{\"msg\":\"true\"}");//转为JSON格式
		}else{
//			out.write("false");
			out.write("{\"msg\":\"false\"}");//转为JSON格式
		}
		out.close();
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
	}

}
