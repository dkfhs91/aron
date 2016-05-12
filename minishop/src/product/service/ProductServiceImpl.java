package product.service;

import static fw.jdbcTemplate.getConnect;
import static fw.jdbcTemplate.close;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import product.dao.ProductDAO;
import product.dao.ProductDAOImpl;
import product.dto.ProductDTO;

public class ProductServiceImpl implements ProductService {

	@Override
	public ArrayList<ProductDTO> productlist(String category) {
		ArrayList<ProductDTO> deptlist = new ArrayList<ProductDTO>();
		Connection con = getConnect();
		ProductDAO dao = new ProductDAOImpl();
		try{
			deptlist=dao.productlist(con, category);
			System.out.println("service =>"+deptlist.size());
		}catch(SQLException e){
			e.printStackTrace();
		}
		return deptlist;
	}

	@Override
	public ArrayList<ProductDTO> searchTopProduct() {
		ArrayList<ProductDTO> deptlist = null;
		Connection con = getConnect();
		ProductDAO dao = new ProductDAOImpl();
		try{
			deptlist=dao.searchTopProduct(con);
		}catch(SQLException e){
			e.printStackTrace();
		}
		close(null,null,con);
		return deptlist;
	}
	public static void main(String[] args){
		ProductServiceImpl obj = new ProductServiceImpl();
		System.out.println("¸î°³=>"+obj.searchTopProduct().size());
	}

	@Override
	public ProductDTO read(String prd_no) {
		// TODO Auto-generated method stub
		return null;
	}

}
