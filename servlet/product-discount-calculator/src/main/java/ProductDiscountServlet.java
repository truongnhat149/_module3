import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DecimalFormat;

@WebServlet(name = "ProductDiscountServlet", value = "/calculator")
public class ProductDiscountServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DecimalFormat format = new DecimalFormat("###,###,###" + "vnd");
        float listPrice = Float.parseFloat(request.getParameter("price"));
        float discountPercent = Float.parseFloat(request.getParameter("percent"));

        float discountAmount = (float) (listPrice * discountPercent * 0.01);

        PrintWriter writer = response.getWriter();

        writer.println("<html>");
        writer.println("<h1> Result </h1>");
        writer.println("<h1> " +
                "Discount Amount: " + format.format(discountAmount) +
                "</h1>");
        writer.println("<h1>" +
                "Discount Price: " + format.format(listPrice - discountAmount) +
                "</h1>");
        writer.println("</html>");
    }
}
