package product.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import product.dto.ProductDTO;

public interface ProductDAO {
	ArrayList<ProductDTO> productlist (Connection conn,
							String category)throws SQLException;
	ArrayList<ProductDTO> searchTopProduct(Connection conn) throws SQLException;
	ProductDTO read(Connection conn,String prd_no) throws SQLException;
}
