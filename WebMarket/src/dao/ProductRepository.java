package dao;

import java.util.ArrayList;

import dto.Product;

public class ProductRepository {
	
	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
	private static ProductRepository instance = new ProductRepository();
	
	public static ProductRepository getInstance() {
		return instance;
	}
	
	public ProductRepository() {
		Product phone = new Product("sun", "고양이 선글라스", 8000);
		phone.setDescription("멋진 고양이로 변신할 수 있는 기회!"
				+ "지금 바로 구매하라냥.");
		phone.setCategory("뽐 악세사리");
		phone.setManufacturer("구매각");
		phone.setUnitsInStock(999);
		phone.setCondition("New");
		phone.setFilename("sun.png");
		
		Product notebook = new Product("painting", "진주 귀걸이를 한 고등어", 1500000);
		notebook.setDescription("아름다운 고등어 고양이의 명화, "
				+ "진주 귀걸이를 한 고등어");
		notebook.setCategory("명화");
		notebook.setManufacturer("다이아손");
		notebook.setUnitsInStock(2);
		notebook.setCondition("Refurbished");
		notebook.setFilename("painting.png");
		
		Product tablet = new Product("box cat", "아늑한 고양이 상자", 300000);
		tablet.setDescription("!주의! 너무 아늑해서 고양이가 흐를 수 있습니다, "
				+ "도로로로롱");
		tablet.setCategory("상자");
		tablet.setManufacturer("흐른다냥");
		tablet.setUnitsInStock(1000);
		tablet.setCondition("Old");
		tablet.setFilename("box.png");
		
		listOfProducts.add(phone);
		listOfProducts.add(notebook);
		listOfProducts.add(tablet);			
	}
	
	public ArrayList<Product> getAllProducts(){
		return listOfProducts;
	}
	
	public Product getProductById(String productId) {
		Product productById = null;
		
		for (int i = 0; i < listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			if(product != null && product.getProductId() != null
					&& product.getProductId().equals(productId)) {
				productById = product;
				break;
			}
		}		
		return productById;
	}
	public void addProduct(Product product) {
		listOfProducts.add(product);
	}

}
















