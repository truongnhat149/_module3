package controller;

import model.Customers;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
//urlPatterns = "/list-customer
@WebServlet(name = "ListCustomerServlet")
public class ListCustomerServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        processRequest(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        processRequest(req,resp);

    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Customers> customers = new ArrayList<>();
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        customers.add(new Customers("Mai Văn Hoàn", "1983-08-20", "Hà Nội", "img/lu1.jpg"));
        customers.add(new Customers("Nguyễn Văn Nam", "1983-08-21", "Bắc Giang", "img/lu2.jpg"));
        customers.add(new Customers("Nguyễn Thái Hóa", "1983-08-22", "Nam Định", "img/lu3.jpg"));
        customers.add(new Customers("Trần Đăng Khoa", "1983-08-16", "Hà Tây", "img/lu4.jpg"));

        request.setAttribute("list", customers);

        RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
        rd.forward(request, response);
    }
}
