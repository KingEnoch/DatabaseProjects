--   Author:           Enoch Oppong - D19126484
--   Description:      Catering For Kings Case Study 
--   site/type:        Oracle Database 12c
--   Transactions:     Making Transactions


SELECT * FROM PARTY_SERVICE;

UPDATE PARTY_SERVICE
SET P_STARTERS = '&NEW_P_STARTERS'
WHERE P_STARTERS = 'Naan Bread';

UPDATE PARTY_SERVICE
SET P_DESSERTS = '&NEW_P_DESSERTS'
WHERE P_DESSERTS = 'Chocolate Ice-cream';

-- This is to change my record to its inital stage
--UPDATE PARTY_SERVICE
--SET P_STARTERS = 'Naan Bread'
--WHERE P_STARTERS = '__';

-- This is to change my record to its inital stage
--UPDATE PARTY_SERVICE
--SET P_DESSERTS = 'Chocolate Ice-cream'
--WHERE P_DESSERTS = '__';

--COMMIT;

--UNDEFINE NEW_P_STARTERS;
--UNDEFINE NEW_P_DESSERTS;
