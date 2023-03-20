CREATE DATABASE miTiendaCastillejoLobatoJoseAntonio;

CREATE USER 'castillejoJose'@'%' IDENTIFIED BY 'castillejoJose';

GRANT ALL PRIVILEGES ON miTiendaCastillejoLobatoJoseAntonio.* to 'castillejoJose'@'%';

CREATE TABLE miTiendaCastillejoLobatoJoseAntonio.category(
id INT(6) AUTO_INCREMENT,
name VARCHAR(100),
description VARCHAR(500),

CONSTRAINT PK_CATEGORY PRIMARY KEY (id)
);

CREATE TABLE  miTiendaCastillejoLobatoJoseAntonio.article (
id INT(6) AUTO_INCREMENT,
title VARCHAR(150) unique,
sinopsis VARCHAR(500),
price FLOAT(5,2),
id_category INT(6),
stock INT(5),

CONSTRAINT PK_ARTICLE PRIMARY KEY (id),
CONSTRAINT FK_ARTICLE FOREIGN KEY (id_category) REFERENCES category(id) ON DELETE CASCADE
);

CREATE TABLE miTiendaCastillejoLobatoJoseAntonio.userDb(
userName VARCHAR(50),
password VARCHAR(33),
name VARCHAR(50),
surname VARCHAR(50),
birthdayDate DATE,
gender VARCHAR(1),
admin boolean,
CONSTRAINT PK_USER PRIMARY KEY (userName)
);

CREATE TABLE miTiendaCastillejoLobatoJoseAntonio.orders(
userName VARCHAR(50),
idaricle INT(6),
amount INT(11),
price FLOAT(5,2),
dateOfPurchase DATETIME,

CONSTRAINT PK_ORDERS PRIMARY KEY (idaricle,userName,dateOfPurchase),
CONSTRAINT FK_ORDERS FOREIGN KEY (idaricle) REFERENCES article (id) ON DELETE CASCADE,
CONSTRAINT FK2_ORDERS FOREIGN KEY (userName) REFERENCES userDb(userName) ON DELETE CASCADE
);




insert into miTiendaCastillejoLobatoJoseAntonio.category (name, description) values ('Animation|Comedy|Sci-Fi|War', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.');
insert into miTiendaCastillejoLobatoJoseAntonio.category (name, description) values ('Thriller', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.');
insert into miTiendaCastillejoLobatoJoseAntonio.category (name, description) values ('Drama|Romance', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.');
insert into miTiendaCastillejoLobatoJoseAntonio.category (name, description) values ('Drama|Fantasy|War', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.');
insert into miTiendaCastillejoLobatoJoseAntonio.category (name, description) values ('Comedy|Drama', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.');
insert into miTiendaCastillejoLobatoJoseAntonio.category (name, description) values ('Comedy', 'Fusce consequat. Nulla nisl. Nunc nisl.');
insert into miTiendaCastillejoLobatoJoseAntonio.category (name, description) values ('Action|Crime|Thriller', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.');
insert into miTiendaCastillejoLobatoJoseAntonio.category (name, description) values ('Comedy|Drama', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.');
insert into miTiendaCastillejoLobatoJoseAntonio.category (name, description) values ('Crime|Horror|Thriller', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.');
insert into miTiendaCastillejoLobatoJoseAntonio.category (name, description) values ('Drama', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.');
insert into miTiendaCastillejoLobatoJoseAntonio.category (name, description) values ('Documentary', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.');
insert into miTiendaCastillejoLobatoJoseAntonio.category (name, description) values ('Comedy', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.');
insert into miTiendaCastillejoLobatoJoseAntonio.category (name, description) values ('Comedy|Drama', 'In congue. Etiam justo. Etiam pretium iaculis justo.');
insert into miTiendaCastillejoLobatoJoseAntonio.category (name, description) values ('Horror|Mystery|Thriller', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.');
insert into miTiendaCastillejoLobatoJoseAntonio.category (name, description) values ('Crime|Drama|Horror|Thriller', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.');
insert into miTiendaCastillejoLobatoJoseAntonio.category (name, description) values ('Documentary', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.');
insert into miTiendaCastillejoLobatoJoseAntonio.category (name, description) values ('Action|Adventure|Fantasy|Sci-Fi', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.');
insert into miTiendaCastillejoLobatoJoseAntonio.category (name, description) values ('Comedy|Drama', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.');
insert into miTiendaCastillejoLobatoJoseAntonio.category (name, description) values ('Comedy|Drama', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.');
insert into miTiendaCastillejoLobatoJoseAntonio.category (name, description) values ('Action|Animation|Sci-Fi|Thriller', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.');



insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Concrete Night (Betoniyö)', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 23.43, 17, 100);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('One from the Heart', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 58.42, 11, 86);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Blade', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 96.69, 10, 67);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Bowfinger', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 5.68, 1, 82);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Blacksmith Scene', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 14.37, 7, 57);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Cave of the Yellow Dog, The', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 46.33, 14, 38);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Heli', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 86.69, 4, 80);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Torpedo Bombers (Torpedonostsy)', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 9.84, 18, 52);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Tree of Life, The', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 19.75, 20, 8);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Monkey''s Mask, The', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 77.46, 18, 14);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Island, The', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 21.13, 19, 56);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Sidewalks of New York', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 25.37, 2, 54);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('American Roulette', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 79.15, 2, 77);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Nude Nuns with Big Guns', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', 5.66, 20, 17);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Sweet Home Alabama', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 22.5, 18, 90);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Mighty Morphin Power Rangers: The Movie', 'Fusce consequat. Nulla nisl. Nunc nisl.', 81.09, 8, 52);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Relentless', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 80.08, 3, 82);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Source Code', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 84.37, 1, 51);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('My Blueberry Nights', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 98.2, 13, 79);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Let the Bullets Fly', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 48.43, 19, 62);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Tall in the Saddle', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 75.36, 9, 37);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Formula 51', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 66.25, 18, 35);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Love and a Bullet', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 10.52, 19, 45);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Batman Beyond: Return of the Joker', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 50.66, 14, 77);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Hiding Out', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 69.12, 14, 96);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Grand Illusion (La grande illusion)', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 77.14, 15, 38);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Maya Lin: A Strong Clear Vision', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 46.35, 6, 41);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Pin...', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', 86.21, 14, 56);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Month by the Lake, A', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 94.51, 3, 66);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Hotel for Dogs', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 87.25, 17, 58);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Chronos', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 42.21, 19, 22);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('The Infinite Man', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 85.28, 9, 43);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('When a Stranger Calls', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 5.06, 19, 22);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Scream 3', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 83.4, 3, 29);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Bobcat Goldthwait: You Don''t Look the Same Either', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 24.02, 8, 57);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Monday Morning (Lundi matin)', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 76.85, 18, 82);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('St. George Shoots the Dragon (Sveti Georgije ubiva azdahu)', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 96.62, 18, 61);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Otis', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 41.62, 4, 97);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Bad Seed, The', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 91.08, 17, 28);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('My Bloody Valentine 3-D', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 30.7, 18, 32);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Sebastiane', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 78.89, 6, 81);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Tom, Dick and Harry', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 80.02, 1, 85);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('In the Land of Women', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 71.96, 6, 61);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Safe Sex', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 99.4, 15, 39);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Gulliver''s Travels', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 12.3, 6, 94);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Tarzan''s Greatest Adventure', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 58.92, 2, 74);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Godzilla vs. The Sea Monster (Gojira-Ebira-Mosura: Nankai no daiketto)', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 86.7, 13, 84);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('The White Haired Witch of Lunar Kingdom', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 21.58, 15, 86);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Two Guys Talkin'' About Girls', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', 88.26, 15, 78);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Survive Style 5+', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 45.84, 10, 62);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Red Shoes, The', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 59.37, 20, 34);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Kiss Before Dying, A', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 94.23, 15, 92);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Love''s Labour''s Lost', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 18.39, 1, 64);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('The Last Train through Harecastle Tunnel', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 41.4, 18, 1);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Eichmann', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', 70.05, 10, 18);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Manufacturing Reality: Slavoj Zizek and the Reality of the Virtual (Slavoj Zizek: The Reality of the Virtual)', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 64.61, 12, 82);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Informers, The', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 61.01, 11, 43);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Misadventures of Margaret, The', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 47.08, 16, 87);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Clown, The', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 13.71, 17, 59);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Dolemite', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 43.95, 16, 36);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Undead, The', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 66.07, 19, 93);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Honey (Miele)', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 61.46, 5, 36);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Always Tell Your Wife', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 93.63, 19, 39);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Teen Beach Movie', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 27.87, 8, 23);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('All the Real Girls', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 32.19, 20, 92);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('It''s My Mother''s Birthday Today', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 13.01, 17, 79);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Resident, The', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 65.06, 13, 85);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('8 Seconds', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 33.62, 9, 85);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Children of Hiroshima (Gembaku no ko)', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 89.1, 12, 29);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Born to Be Bad', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 63.92, 13, 29);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('13 Frightened Girls! (Candy Web, The)', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', 12.53, 3, 42);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Me Myself I', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 19.97, 13, 67);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('One Week', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 65.76, 5, 42);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Babette Goes to War', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 70.84, 4, 6);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Tom & Thomas', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 59.98, 4, 99);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Ismael', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 77.68, 5, 40);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Best Boy', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 43.64, 9, 48);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Familiar Ground', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 36.57, 12, 83);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Escaflowne: The Movie (Escaflowne)', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 27.77, 17, 15);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Three Wise Fools', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 59.19, 10, 85);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Gold Diggers: The Secret of Bear Mountain', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 15.95, 2, 58);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Losers, The', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 21.34, 6, 10);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Waiting Room, The', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 9.5, 20, 81);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Aliens of the Deep', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 94.56, 3, 22);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Ski School', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 84.24, 16, 30);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Hansel & Gretel', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 27.45, 19, 9);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Bolt', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 70.84, 1, 35);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('The UFO Incident', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 94.58, 17, 47);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Russkies', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 40.79, 19, 29);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Stranger in Town, A', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 70.73, 10, 66);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Broadway Melody of 1940', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 61.67, 8, 78);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Other Son, The (Fils de l''autre, Le)', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 35.46, 10, 36);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Seize the Day', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 54.1, 14, 100);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Bringing Up Baby', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 5.78, 15, 75);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Clink of Ice, The (a.k.a.: Sound of Ice Cubes, The) (Le bruit des glaçons)', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 45.94, 16, 73);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Champagne for Caesar', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 64.95, 16, 92);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Married Couple, A', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 8.5, 12, 21);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Storefront Hitchcock', 'Fusce consequat. Nulla nisl. Nunc nisl.', 42.47, 3, 33);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Klown: The Movie (Klovn)', 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 14.58, 12, 35);
insert into miTiendaCastillejoLobatoJoseAntonio.article (title, sinopsis, price, id_category, stock) values ('Awesome; I Fuckin Shot That!', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 31.73, 18, 78);



insert into miTiendaCastillejoLobatoJoseAntonio.userDb (userName, password, name, surname, birthdayDate, gender, admin) values ('castillejo','jose', 'jose', 'castillejo', '1996-06-13','M',1);

