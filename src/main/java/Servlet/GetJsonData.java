package Servlet;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Services.FetchJsonData;

/**
 * Servlet implementation class GetJsonData
 */
@WebServlet("/GetJsonData")
public class GetJsonData extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		BufferedReader br = new BufferedReader(new InputStreamReader(request.getInputStream()));
		
		String json = "";
		if (br != null) {
			json = br.readLine();
		}
		System.out.println(json);
		
		new FetchJsonData().getBookData(json);
		
	}

}
