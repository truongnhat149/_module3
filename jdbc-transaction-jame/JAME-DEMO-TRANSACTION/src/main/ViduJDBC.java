import java.sql.*;

public class ViduJDBC {
    static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    static final String DB_URL = "jdbc:mysql://localhost/sinhvien";

    static final String USER = "root";
    static final String PASS = "123456";

    public static void main(String[] args) {
        Connection connection = null;
        Statement statement = null;

        try {
            // đăng ký driver
            Class.forName("com.mysql.jdbc.Driver");

            // mở kết nối
            System.out.println("Đang kết nối dữ liệu...");
            connection = DriverManager.getConnection(DB_URL, USER, PASS);

            // thiết lập auto-commit là false để có thể bắt đầu transaction
            connection.setAutoCommit(false);

            // thực thi truy vấn
            System.out.println("Tạo câu lệnh truy vấn SQL");
            statement = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);

            // chèn 1 hàng vào bảng sinh vien
            System.out.println("đang chèn 1 hàng");
            String INSERT_SQL = "INSERT INTO sinhvientable(name, age, address) VALUES('truong',12,'hue');";
            statement.executeUpdate(INSERT_SQL);

            // chèn 1 hàng tiếp
            String INSERT_SQL2 = "INSERT INTO sinhvientable(name, age, address) VALUES('nhat',24,'da nang');";
            statement.executeUpdate(INSERT_SQL2);

            // ký thác thay đổi
            System.out.println("Ký thác các thay đổi...");
            connection.commit();


            // liệt kê tất cả các bản ghi
            String SELECT_ALL = "SELECT * from sinhvientable";
            ResultSet rs = statement.executeQuery(SELECT_ALL);
            System.out.println("Liệt kê result set để tham chiếu...");
            printRs(rs);

            // dọn sạch môi trường giải phóng resource
            rs.close();
            statement.close();
            connection.close();

        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("QUay về trạng thái trước thay đổi");
            try {
                if (connection != null)
                    connection.rollback();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (statement != null) {
                    statement.close();
                }
            } catch (SQLException ex) {

            } try {
                if (connection != null)
                    connection.close();
            } catch (SQLException se){
                se.printStackTrace();
            }
        }
    }

    private static void printRs(ResultSet rs) throws SQLException{
        // bảo đảm đang đứng hàng từ hàng đầu tiên
        rs.beforeFirst();
        while (rs.next()) {
            // lấy dữ liệu bởi sử dụng tên cột
            int id = rs.getInt("id");
            String name = rs.getString("name");
            int age = rs.getInt("age");
            String address = rs.getString("address");

            // hiển thị giá trị
            System.out.println("id " +id);
            System.out.println("name" + name);
            System.out.println("age " + age);
            System.out.println("address" + address);
            System.out.println("===================");
        }
    }
}
