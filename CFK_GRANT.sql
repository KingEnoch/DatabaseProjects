--   Author:           Enoch Oppong - D19126484
--   Description:      Catering For Kings Case Study 
--   site/type:        Oracle Database 12c
--   Grants:           Grant/Permission Statements

-- These tables are going to be used in my transaction
-- Granting access to vdrobovics on PATRTY_SERVICE
GRANT SELECT ON PARTY_SERVICE TO vdrobovics;
GRANT INSERT ON PARTY_SERVICE TO vdrobovics;
GRANT UPDATE ON PARTY_SERVICE TO vdrobovics;

GRANT SELECT,INSERT,UPDATE ON PARTY_SERVICE TO vdrobovics;

