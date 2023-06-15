use bank;
create temporary table bank.loan_and_account
select l.loan_id,l.account_id, a.district_id, l.amount, l.payments,a.frequency
from bank.loan l 
join bank.account a 
on l.account_id = a.account_id;

select * from bank.loan_and_account;