ALTER TABLE Users
ADD CONSTRAINT MLConstraint CHECK (DATALENGTH(Password) >= 5)