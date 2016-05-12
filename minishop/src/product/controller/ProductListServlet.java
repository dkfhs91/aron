package product.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import product.dto.ProductDTO;
import product.service.ProductServiceImpl;
import product.service.ProductService;

@WebServlet(name = "prdlist", urlPatterns = {"/prdlist.do"})
public class ProductListServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		
		//요청정보 추출
		
		String category=request.getParameter("category");
		String pathurl=request.getParameter("pathurl");
		String forwardview = "";
		
		//비지니스 메소드 call
		ProductService service = new ProductServiceImpl();
		
		
		//상품목록
		ArrayList<ProductDTO> prdlist = service.productlist(category);
		System.out.println("prdlist서블릿=>"+prdlist.size());
		
		request.setAttribute("prdlist", prdlist);
		
		if(category==null){
			forwardview="/layout/indexLayout.jsp";
			//아코디언 이미지에 보여질 상품을 추가
			ArrayList<ProductDTO> toplist = service.searchTopProduct();
			System.out.println("toplist서블릿=>"+toplist.size());
			request.setAttribute("toplist", toplist);
		}else{
			request.setAttribute("pathurl", pathurl);
			forwardview="/layout/mainLayout.jsp";
		}
		//요청 재지정 - 분리해놓은 응답화면이 요청되도록 재지정(list.jsp)
		RequestDispatcher rd = request.getRequestDispatcher(forwardview);
		rd.forward(request, response);
	}

}
