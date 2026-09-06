show databases;
use intro;

CREATE TABLE customer_subscriptions (
    SubscriptionID INT PRIMARY KEY,
    CustomerID INT,
    PlanName VARCHAR(50),
    StartDate DATE,
    EndDate DATE,
    LastLogin TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO customer_subscriptions (SubscriptionID, CustomerID, PlanName, StartDate, EndDate, LastLogin) VALUES
(1, 101, 'Basic', '2024-01-15', '2025-01-15', '2024-06-01 10:30:00'),
(2, 102, 'Premium', '2023-05-10', '2024-05-10', '2024-06-02 14:15:00'),
(3, 103, 'Standard', '2024-03-01', '2024-09-01', '2024-06-03 09:00:00'),
(4, 104, 'Basic', '2024-02-20', '2025-02-20', '2024-06-03 16:45:00'),
(5, 105, 'Premium', '2022-11-15', '2023-11-15', '2024-06-04 11:20:00'),
(6, 106, 'Standard', '2024-04-10', '2024-10-10', '2024-06-04 13:10:00'),
(7, 107, 'Basic', '2024-01-01', '2025-01-01', '2024-06-05 08:50:00'),
(8, 108, 'Premium', '2023-08-20', '2024-08-20', '2024-06-05 17:00:00'),
(9, 109, 'Standard', '2024-05-05', '2024-11-05', '2024-06-06 12:30:00'),
(10, 110, 'Basic', '2024-02-14', '2025-02-14', '2024-06-06 15:40:00');

select *from customer_subscriptions;

select PlanName,StartDate, datediff(sysdate(),StartDate) as differece from customer_subscriptions;

select date_format('2027-12-05','%Y');
select date_format('2027-12-05','%m');
select date_format('2027-12-05','%d');

select date_format(StartDate,'%y'),StartDate from customer_subscriptions;
select date_format(StartDate,'%m'),StartDate from customer_subscriptions;
select date_format(StartDate,'%d'),StartDate from customer_subscriptions;

select day(StartDate),StartDate from customer_subscriptions;
select month(StartDate),StartDate from customer_subscriptions;
select year(StartDate),StartDate from customer_subscriptions;
select quarter(StartDate),StartDate from customer_subscriptions;

select adddate('2027-12-25',interval 10 day);
select adddate('2027-12-25',interval -10 day);
select subdate('2027-12-25',interval 10 day);
select adddate('2027-12-25',interval -10 day);