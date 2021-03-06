--   Author:           Enoch Oppong - D19126484
--   Description:      Catering For Kings Case Study 
--   site/type:        Oracle Database 12c
--   SQL               Insert/Select Statements

--ALTER SCHEMA
ALTER SESSION SET CURRENT_SCHEMA = eoppong;

-- INSERT FOR CLIENT TABLE
SELECT * FROM CLIENT;

DELETE FROM CLIENT;

INSERT INTO CLIENT VALUES (001,'Enoch','21 Sunshine Street',0892095065,'YES','YES','YES');
INSERT INTO CLIENT VALUES (002,'Patricia','1 Database Drive',0624532425,'NO','YES','YES');
INSERT INTO CLIENT VALUES (003,'Markus','45 TalkToMuch Lane',0632575784,'NO','YES','YES');
INSERT INTO CLIENT VALUES (004,'Sultan','21 RichForever Terance',0263579075,'NO','NO','YES');
INSERT INTO CLIENT VALUES (005,'Ian','15 Cappagh Road',0124124685,'NO','YES','YES');
INSERT INTO CLIENT VALUES (006,'Chris','31 Sandyford Road',0954524674,'NO','NO','YES');
COMMIT;

-- INSERT FOR PARTY SERVICE TABLE
SELECT * FROM PARTY_SERVICE;

DELETE FROM PARTY_SERVICE;

INSERT INTO PARTY_SERVICE VALUES (301,'Indian Platter','Naan Bread','YES','Chocolate Ice-cream','Fanta',001);
INSERT INTO PARTY_SERVICE VALUES (302,'Chinese Platter','Dumplings','NO','Chocolate Cheesecake','Coke',002);
INSERT INTO PARTY_SERVICE VALUES (303,'Thai Platter','Crackers','YES','Chocolate Ice-cream','Wine',003);
INSERT INTO PARTY_SERVICE VALUES (304,'Italian Cuisine','Breadsticks','YES','Pavalova','Wine',004);
INSERT INTO PARTY_SERVICE VALUES (305,'Greek Platter','Caesar Salad','YES','Fruit Cake','Coke',006);
INSERT INTO PARTY_SERVICE VALUES (306,'Japanese Platter','Sushi','NO','Mochi','Iced Tea',005);
COMMIT;

-- INSERT FOR MINIMUM SERVICE TABLE
SELECT * FROM MINIMUM_SERVICE;

DELETE FROM MINIMUM_SERVICE;

INSERT INTO MINIMUM_SERVICE VALUES (201,'Garlic Bread','Spaggethi Squash','YES',001);
INSERT INTO MINIMUM_SERVICE VALUES (202,'Coddle','Ham and Cheese Quiche','NO',002);
INSERT INTO MINIMUM_SERVICE VALUES (203,'Chicken Soup','Spaggethi Bolgnse','YES',003);
INSERT INTO MINIMUM_SERVICE VALUES (204,'Chicken Soup','Egg Fried Rice','YES',004);
INSERT INTO MINIMUM_SERVICE VALUES (205,'Chips','Doner Kebab','YES',005);
INSERT INTO MINIMUM_SERVICE VALUES (206,'Vegetable Soup','Turkey','NO',006);
COMMIT;

-- INSERT FOR FULL SERVICE TABLE
SELECT * FROM FULL_SERVICE;

DELETE FROM FULL_SERVICE;

INSERT INTO FULL_SERVICE VALUES (101,'Rice and Cabbage','Bread','Vanilla Ice-cream',001,301);
INSERT INTO FULL_SERVICE VALUES (102,'Sunday Roast','Coddle','Lemon Cheesecake',006,302);
INSERT INTO FULL_SERVICE VALUES (103,'Fish Cakes','Bread','Chocolate Ice-cream',004,303);
INSERT INTO FULL_SERVICE VALUES (104,'Chicken Curry','Breadsticks','Strawberry Ice-cream',005,304);
INSERT INTO FULL_SERVICE VALUES (105,'Lamb Chops and Potatoes','Vegetable Soup','Vanilla Ice-cream',002,305);
INSERT INTO FULL_SERVICE VALUES (106,'Smoked Cod','Bread','Crepes',003,306);
COMMIT;

-- INSERT FOR RESOURCES TABLE
SELECT * FROM RESOURCES;

DELETE FROM RESOURCES;

INSERT INTO RESOURCES VALUES (401,'YES','NO','YES','NO','YES','YES',002);
INSERT INTO RESOURCES VALUES (402,'NO','NO','YES','NO','NO','NO',003);
INSERT INTO RESOURCES VALUES (403,'YES','YES','YES','YES','YES','YES',001);
INSERT INTO RESOURCES VALUES (404,'NO','NO','NO','NO','NO','NO',005);
INSERT INTO RESOURCES VALUES (405,'YES','NO','YES','YES','NO','YES',006);
INSERT INTO RESOURCES VALUES (406,'YES','YES','YES','NO','NO','YES',004);
COMMIT;

--INSERT FOR PARTY_SERVICE TO RESOURCES TABLE (AUTOMATICALLY GENERATED)
SELECT * FROM PARTY_SERVICE_TO_RESOURCES;

DELETE FROM PARTY_SERVICE_TO_RESOURCES;

INSERT INTO PARTY_SERVICE_TO_RESOURCES VALUES (301,401);
INSERT INTO PARTY_SERVICE_TO_RESOURCES VALUES (302,402);
INSERT INTO PARTY_SERVICE_TO_RESOURCES VALUES (303,403);
INSERT INTO PARTY_SERVICE_TO_RESOURCES VALUES (304,404);
INSERT INTO PARTY_SERVICE_TO_RESOURCES VALUES (305,405);
INSERT INTO PARTY_SERVICE_TO_RESOURCES VALUES (306,406);
COMMIT;