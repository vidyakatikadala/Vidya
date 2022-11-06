1)Create User Table
create table user(id int primarykey ,firstName varchar(100),lastName varchar(100),age int ,salary int);

2)Create Multiple Movies Tables and add to the User table
create table  movie(mid int primarykey,movieName varchar(100),hero varchar(100),heroine varchar(100),ticketPrice int,movieRating int,FOREIGN KEY (id) REFERENCES user(id));
insert into user values(1, "vidya","katikadala",20,50000);
insert into user values(2, "karthik","katikadala",18,60000);
insert into user values(3, "balu","katikadala",25,70000);
insert into movie values(1, "radhesyam","prabahas","puja",100,8);
insert into movie values(1, "bahubali","prabhas","anuskha",200,10);
insert into movie values(1, "lovestory","chaitanya","pallavi",110,5);
insert into movie values(2, "kaleja","mahesh","anuskha",100,4);
insert into movie values(2, "tiru","danush","nitya",100,6);
insert into movie values(3, "rangastalam","ramcharan","samanta",90,8);

3)Get List of all the movies watched by the User
select movieName from user,movie where id=mid;

4)Get List of movies watched by the User and which movie ticket price is more than 150
select movieName from user,movie where id=mid and ticketPrice>150

5)Get List of movies watched by the User and which movie rating below 5 out of 10
select movieName from user,movie where id=mid and movieRating<5;

6) Get List of movies watched by the User and where heroin repeats more than or equal to 2
times
select movieName from user,movie where id=mid where(select mid from movie group by heroine having count(*)>=2;

7)Print total and avg amount he spent on the movies
select sum(ticketPrice),avg(ticketPrice) from user,movie where id=mid;


