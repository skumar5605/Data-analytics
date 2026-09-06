use intro;
show tables;
select * from regex_practice;
CREATE TABLE regex_practice (
    ID INT PRIMARY KEY,
    Email VARCHAR(100),
    PhoneNumber VARCHAR(20),
    PostalCode VARCHAR(10),
    ProductCode VARCHAR(20)
);

INSERT INTO regex_practice (ID, Email, PhoneNumber, PostalCode, ProductCode) VALUES
(1, 'john.doe@example.com', '+1-555-0199', '90210', 'PROD-100-A'),
(2, 'jane_smith123@gmail.co.uk', '555.014.2839', '10001', 'PROD-205-B'),
(3, 'support.team@domain.org', '555 018 3948', 'SW1A 1AA', 'ITEM-99-X'),
(4, 'invalid-email-format', '1-800-555-0199', 'ABC 123', 'PROD-300-A'),
(5, 'alice.jones@workplace.net', '(555) 012-3456', '75001', 'ITEM-45-Z'),
(6, 'bob@sub.domain.com', '5550198765', 'K1A 0B1', 'PROD-100-C'),
(7, 'test.email+alex@sub.org', '+44 20 7946 0918', '2000', 'ITEM-88-B'),
(8, 'bad.email.com', '555-0111', 'XYZ', 'INVALID');

select *from regex_practice 
where Email like 'j%';
select *from regex_practice 
where Email regexp '^j';

select *from regex_practice
where Email like '%j%'
or Email like '%p%'
or Email like '%k%';

select *from regex_practice
where Email regexp '[jpk]';

customer_having-the letters_in_between x-z;

select *from regex_practice
where Email like '%x%'
or Email like '%y%'
or Email like '%z%';

select *from regex_practice
where Email regexp '[x-z]';