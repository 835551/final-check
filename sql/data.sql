-- Include table data insertion, updation, deletion and select scripts

-- -------------------------------------------------------

-- Adding Movie in movie table
-- -----------------------------------
insert into movie
values
	(1, 'Avatar', 2787965087, 'Yes','2017-03-15','Science Fiction', 'Yes'),
	(2, 'The Avangers', 1518812988, 'Yes','2017-12-23','Superhero', 'No'),
	(3, 'Titanic', 2187463944, 'Yes','2017-08-21', 'Romance','No'),
	(4, 'Jurassic World', 1671713208, 'No', '2017-07-02','Science Fiction', 'Yes'),
	(5, 'Avangers:End Game', 2750760348, 'Yes','2022-11-02','Superhero', 'Yes');			
   
select
 m_id as "ID",
 m_title as "Title" ,
 m_box_office as "Box Office",
 m_active as "Active",
 m_date_of_launch as "Date of Launch",
 m_genre as "Genre",
 m_has_teaser as "Has Treaser"
 from movie;   
 
 
   -- -------------------------------------------------------
-- Updating movie in movie table------------------
-- -------------------------------------------------------

update movie
set 
m_title='Hero',
m_box_office=306373643494,
m_active='Yes',
m_date_of_launch='2019-12-09',
m_genre='Science Fiction',
m_has_teaser='Yes'
where m_id=2;
 
-- -------------------------------------------------------
-- user details in user table------------------
-- -------------------------------------------------------

insert into user(us_id,us_name)
values
(1,'Maddy'),(2,'Priya');
select
 us_id as "User ID",
 us_name as "User Name" 
from user; 

 -- -------------------------------------------------------
-- movie table------------------
-- -------------------------------------------------------

 select
  m_title as "Title",
  m_date_of_launch  as "BoxOffice",
  m_genre as "Genre",
  m_has_teaser as "Has Treaser"
 from movie
 where m_active='Yes'
 and m_date_of_launch<curdate();
 -- -------------------------------------------------------
-- adding favorite movie in favorite table------------------
-- -------------------------------------------------------
insert into favorite(fv_id,fv_us_id,fv_pr_id)
values
	(1,1,3),(2,1,4);

 select
fv_id as "Favorite ID",
fv_us_id as "Favorite User ID",
fv_pr_id "Favorite Primary ID"
from favorite; 
 -- -------------------------------------------------------
-- -------view favorite------------------
-- -------------------------------------------------------
 select 
 m_title as "Title",
 m_box_office as "BoxOffice",
 m_genre as "Genre"
 from movie
 inner join favorite 
 on fv_pr_id=m_id
 where fv_us_id=1;
 
 select count(m_box_office) as "No of Favorite"
 from movie
 inner join favorite
 on fv_pr_id=m_id
 where fv_us_id=1;
  -- -------------------------------------------------------
-- -------remove movie from favorite------------------
-- -------------------------------------------------------
 delete from favorite
 where  fv_us_id=1 
 and fv_pr_id=3;
  -- -------------------------------------------------------
-- -------after deleting movie from the favorite ------------------
-- -------------------------------------------------------
 
  select
fv_id as "Favorite ID",
fv_us_id as "Favorite User ID",
fv_pr_id as "Favorite Primary ID"
from favorite
 
 