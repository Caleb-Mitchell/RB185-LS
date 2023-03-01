INSERT INTO expenses (amount, memo, created_on) VALUES (-9999.99, 'test', '07/20/1990');
-- INSERT 0 1

INSERT INTO expenses (amount, memo, created_on) VALUES (-10000, 'test', '07/20/1990');
-- ERROR:  numeric field overflow
-- DETAIL:  A field with precision 6, scale 2 must round to an absolute value less than 10^4.
