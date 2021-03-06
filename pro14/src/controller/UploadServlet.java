package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/upload.do")
public class UploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		
		String savePath="upload";	//서버프로그램에 저장할 폴더이름,실제로 저장되지는 않음.
		int maxFileSize=5*1024*1024;	//업로드파일 최대크기
		String encType="utf-8";	//인코딩 방식
		ServletContext context=getServletContext();
		String uploadPath=context.getRealPath(savePath);	//진짜 저장된 곳 경로 
		System.out.println(uploadPath);
		
		try {
			MultipartRequest multi=new MultipartRequest(	//
					request,
					uploadPath,
					maxFileSize,
					encType,
					new DefaultFileRenamePolicy());
			
			String fileName=multi.getFilesystemName("uploadFile"); //매개변수는 form의 name
			if(fileName == null) {
				System.out.println("파일 업로드 안됬다");
			}else {
				out.print("<br>글쓴이 : " + multi.getParameter("name"));
				out.print("<br>제 목 : " + multi.getParameter("title"));
				out.print("<br>파 일 : " + fileName);
			}
		}catch(Exception ex) {
			ex.printStackTrace();
		}
		
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);	//get,post 둘다 동일하게 처리할시
										//doHandle 메서드 생성
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}
	
}
