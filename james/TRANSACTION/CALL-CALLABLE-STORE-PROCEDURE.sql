-- STORED PROCEDURE TỪ JDBC
-- Gọi Stored Procedures từ JDBC sử dụng CallableStatement
-- cho chức năng hiển thị danh sách users.
use demo;
DELIMITER $$ 

CREATE PROCEDURE show_user()
BEGIN
	SELECT * 
    FROM users;
END $$ 

DELIMITER ;


-- Gọi Stored Procedures từ JDBC sử dụng CallableStatement
--  cho chức năng sửa thông tin users .
DELIMITER $$

CREATE PROCEDURE edit_user(
IN user_id INT,
IN user_name varchar(50),
IN user_email varchar(50),
IN user_country varchar(50)
)

BEGIN
	UPDATE users
    SET users.`name` = user_name, users.email = user_email, users.country = user_country
    WHERE users.id = user_id;
END $$

DELIMITER ;

-- Gọi Stored Procedures từ JDBC sử dụng CallableStatement cho chức năng xoá user

DELIMITER $$

CREATE PROCEDURE delete_user(IN user_id INT)


BEGIN
	DELETE FROM users
    WHERE users.id = user_id;
END $$

DELIMITER ;