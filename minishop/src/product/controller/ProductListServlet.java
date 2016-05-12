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
		
		//��û���� ����
		
		String category=request.getParameter("category");
		String pathurl=request.getParameter("pathurl");
		String forwardview = "";
		
		//�����Ͻ� �޼ҵ� call
		ProductService service = new ProductServiceImpl();
		
		
		//��ǰ���
		ArrayList<ProductDTO> prdlist = service.productlist(category);
		System.out.println("prdlist����=>"+prdlist.size());
		
		request.setAttribute("prdlist", prdlist);
		
		if(category==null){
			forwardview="/layout/indexLayout.jsp";
			//���ڵ�� �̹����� ������ ��ǰ�� �߰�
			ArrayList<ProductDTO> toplist = service.searchTopProduct();
			System.out.println("toplist����=>"+toplist.size());
			request.setAttribute("toplist", toplist);
		}else{
			request.setAttribute("pathurl", pathurl);
			forwardview="/layout/mainLayout.jsp";
		}
		//��û ������ - �и��س��� ����ȭ���� ��û�ǵ��� ������(list.jsp)
		RequestDispatcher rd = request.getRequestDispatcher(forwardview);
		rd.forward(request, response);
	}

}
