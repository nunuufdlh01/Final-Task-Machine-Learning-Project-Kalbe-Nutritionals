# Berapa rata-rata umur customer jika dilihat dari marital statusnya ?

select
	"Marital Status" as marital_status,
	round(avg(age), 2) as avg_age
from 
	customer
where 
	"Marital Status" != ''
group by
	marital_status
order by
	avg_age asc
;

# Berapa rata-rata umur customer jika dilihat dari gender nya?
select
	gender,
	round(avg(age), 2) as avg_age
from
	customer
group by
	gender
order by
	avg_age asc
;

#  Tentukan nama store dengan total quantity terbanyak!
select
	st.storename as store_name,
	sum(tr.qty) as quantity
from 
	transaction as tr
join 
	store as st
	on 
		tr.storeid = st.storeid
group by 
	store_name
order by 
	quantity desc
;

# Tentukan nama produk terlaris dengan total amount terbanyak!
select
	pr."Product Name" as product_name,
	sum(tr.totalamount) as total_amount
from 
	product as pr
join 
	transaction as tr
	on 
		pr.productid = tr.productid
group by 
	product_name
order by 
	total_amount desc
;
