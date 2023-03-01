ALTER TABLE expenses
   ADD CHECK (amount >= 0.01);
