create database Blogsaytı 
use Blogsaytı
create table Users
(
 [id] int primary key identity,
 [Name] nvarchar(20),
 [Surname] nvarchar(50),
 [Email] nvarchar(100) 
)
use Blogsaytı
create table Posts
(
  [UserId] nvarchar primary key not null check([UserId] between 4 and 100),
  [LikeCount] int,
  [CreatedAt] datetime2,
  [Title] nvarchar constraint post_aztu_chek not null,
   [text] nvarchar constraint post_aztu_chek not null
)
alter table Posts
add constraint post_aztu_chek check([text]<=500)
insert into Users (name,surname)
values 
('azad','huseynov'),
('huseyn','memmedov')
select*from Users
select*from Posts where LikeCount>10
select*from Posts where Title>20 and Title<100
