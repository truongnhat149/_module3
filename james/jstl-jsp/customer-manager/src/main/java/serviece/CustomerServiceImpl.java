package serviece;
import model.Customer;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CustomerServiceImpl implements CustomerService {
    private static Map<Integer, Customer> customers;

    static {
        customers = new HashMap<>();
        customers.put(1, new Customer(1, "Truong", "vjc.ichi@gmail.com","Hue"));
        customers.put(2, new Customer(2, "Phuong","Phuong@codegym.vn","Tinh Lo 10"));
        customers.put(3, new Customer(3, "Tung", "Tung@codegym.vn","Thuy Phuong"));
        customers.put(4, new Customer(4, "Duong", "duong123@codegym.vn", "Phu cát"));
        customers.put(5, new Customer(5, "Dung", "dung@123.codegym.vn","Le Loi"));

    }

    @Override
    public List<Customer> findAll() {
        return new ArrayList<>(customers.values());
    }

    @Override
    public void save(Customer customer) {
        customers.put(customer.getId(), customer);
    }

    @Override
    public Customer findById(int id) {
        return customers.get(id);
    }

    @Override
    public void update(int id, Customer customer) {
        customers.put(id, customer);
    }

    @Override
    public void remove(int id) {
        customers.remove(id);
    }
}
