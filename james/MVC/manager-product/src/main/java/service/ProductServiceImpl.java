package service;

import model.Product;

import java.util.*;

public class ProductServiceImpl implements IProductService{
    private static Map<Integer, Product> products;

    static {
        products = new HashMap<>();
        products.put(1, new Product(1, "Black Coffee", 10000, 100,"Ca phe den","VN"));
        products.put(2, new Product(2, "Black And Milk Coffee", 12000, 100,"Ca phe sua","American"));
        products.put(3, new Product(3,"Sai Gon Black Coffee", 15000, 100,"Ca phe den","Japanese"));
        products.put(4, new Product(4, "Red Bull", 15000, 100,"Ca phe den","China"));
    }
    @Override
    public List<Product> findAll() {
        return new ArrayList<>(products.values());
    }

    @Override
    public Product findById(int id) {
        return products.get(id);
    }

    @Override
    public List<Product> findByName(String name) {
        List<Product> listProducts = new ArrayList<>(products.values());
        List<Product> listSearchName = new ArrayList<>();
        name = name.toLowerCase();
        for (Product product: listProducts) {
            if (product.getName().toLowerCase().contains(name)) {
                listSearchName.add(product);
            }
        }
        return listSearchName;
    }

    @Override
    public void save(Product product) {
        products.put(product.getId(), product);
    }

    @Override
    public void update(int id, Product product) {
        products.put(id, product);
    }

    @Override
    public void remove(int id) {
        products.remove(id);
    }
}
