
select *
from credit_value
;
select*
from customer_demographics
;

select cd.customer_name , cd.customer_cstatus ,
case 
when credit_score <500 then "very_bad"
when credit_score >=500 and credit_score <650 then "bad"
when credit_score >=650 and credit_score <700 then "average"
when credit_score >=700 and credit_score <740 then "good"
when credit_score >=740 and credit_score <= 900 then "very good"
end as credit_rating
from customer_demographics as cd
join credit_value on cd.Customer_id = credit_value.customer_id
