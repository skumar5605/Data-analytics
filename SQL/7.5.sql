select *from customer_churn;

select Concat(customerID,"  ",Contract) from customer_churn;

select trim("  WORLD");
select concat("      Hello","world");
select concat(trim("      Hello"),"world");
select concat("Hello"," ",trim("  world"));

select substr(" hii rohit how are you doing",16,6);
select substr(" hii rohit how i am fucking",16,12) as adya;
select substr(Contract,1,7) as hii , churn from customer_churn ;

select Contract, upper(Contract),lower(Contract) from customer_churn;

select character_length("Hii puny god") as length;
select char_length(Contract) as length, Contract from customer_churn;

select mid(" hii rohit how are you doing",16,6);
select min(TotalCharges) from customer_churn;

select floor(char_length(Contract)/2) from customer_churn;
select ceiling(char_length(Contract)/2) from customer_churn;

