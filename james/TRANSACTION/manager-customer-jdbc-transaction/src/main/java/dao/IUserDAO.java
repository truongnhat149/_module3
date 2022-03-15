package dao;
import java.sql.SQLException;
import java.util.List;

import model.User;

public interface IUserDAO {
    void insertUser(User user) throws SQLException;
    User selectUser(int id);
    List<User> selectAllUsers();
    boolean deleteUser(int id) throws SQLException;
    boolean updateUser(User user) throws SQLException;

    // transaction
    User getUserById(int id);
    void insertUserStore(User user) throws SQLException;

    // thêm mới user = transaction
    void addUserTransaction(User user, int[] permision);

    void insertUpdateWithoutTransaction();

    // thêm mới bằng transaction
    void insertUpdateUseTransaction();

    // hiển thị danh sách = store procedure
    List<User> showUser();

    // sửa thông tin user = procedure
    boolean updateUserSP(User user) throws SQLException;

    // xóa user = store procedure
    boolean deleteUserSP(int id) throws  SQLException;

    // addUser = transaction
    void addUserUseTransaction();
}
