package product.service;

import java.util.ArrayList;

import product.dto.ProductDTO;

public interface ProductService {
	
	ArrayList<ProductDTO> productlist(String category);	//ProductDAOImpl의 productlist()를 호출하는 메소드
	ArrayList<ProductDTO> searchTopProduct();
	ProductDTO read(String prd_no);
}
