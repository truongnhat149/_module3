SELECT * FROM demo.users;
use demo;
DELIMITER $$

CREATE PROCEDURE get_user_by_id(IN user_id INT)

BEGIN

    SELECT users.`name`, users.email, users.country

    FROM users

    where users.id = user_id;

    END$$

DELIMITER ;

DELIMITER $$

CREATE PROCEDURE insert_user(

IN user_name varchar(50),

IN user_email varchar(50),

IN user_country varchar(50)

)

BEGIN

    INSERT INTO users(`name`, email, country) VALUES(user_name, user_email, user_country);

    END$$

DELIMITER ;

create table Permision(

id int(11) primary key,

name varchar(50)

);

 

create table User_Permision(

permision_id int(11),

user_id int(11)

);

insert into Permision(id, `name`) values (1, 'add');

insert into Permision(id, `name`) values(2, 'edit');

insert into Permision(id, `name`) values(3, 'delete');

insert into Permision(id, `name`) values(4, 'view');

