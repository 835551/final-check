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
   select * from movie ; 
   -- -------------------------------------------------------
-- Updating movie in movie table------------------
-- -------------------------------------------------------

update movie
set m_title='Hero',m_box_office=306373643494,m_active='yes',m_date_of_launch='2019-12-9',m_genre='Science Fiction',m_has_teaser='yes'
where m_id=2;
 
-- -------------------------------------------------------
-- user details in user table------------------
-- -------------------------------------------------------

insert into user(us_id,us_name)
values
(1,'maddy'),(2,'priya');
select * from user;

 -- -------------------------------------------------------
-- movie table table------------------
-- -------------------------------------------------------

 select m_title,m_date_of_launch,m_genre,m_has_teaser
 from movie
 where m_active='yes'
 and m_date_of_launch<(select(current_date()));
 -- -------------------------------------------------------
-- adding favorite movie in favorite table------------------
-- -------------------------------------------------------
insert into favorite(fv_id,fv_us_id,fv_pr_id)
values
	(1,1,3),(2,1,4);

 select * from favorite;
 -- -------------------------------------------------------
-- -------view favorite------------------
-- -------------------------------------------------------
 select m_title,m_box_office,m_genre
 from movie
 inner join favorite 
 on fv_pr_id=m_id
 where fv_us_id=1;
 
 select count(m_box_office) as "No_of-favorite"
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
 
 select * from favorite;
 
 