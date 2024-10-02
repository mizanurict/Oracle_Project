
-------------- For Dhaka & Kushtia Wing --------------------------
insert into sales_view (dept, sales_qty1, sales_amt1,target1, branch, month_name) 
select distinct a.department, sum(nvl(a.t_qty,0)), sum(nvl(a.g_total,0)) sales, sum(nvl(b.qty,0)) tar, a.branch, a.month  from sales a, target b
where a.department= b.department and a.branch=b.branch and a.branch='DHK_KST'
group by a.department, a.branch, a.month
order by a.department


--------------- For Chittagong & Bogura Wing ---------------------------
insert into sales_view (dept, sales_qty2, sales_amt2,target2, branch, month_name) 
select distinct a.department, sum(nvl(a.t_qty,0)), sum(nvl(a.g_total,0)) sales, sum(nvl(b.qty,0)) tar, a.branch, a.month  from sales a, target b
where a.department= b.department and a.branch=b.branch and  a.branch='CTG_BOG'
group by a.department, a.branch, a.month
order by a.department



-------------- For Khulna & Mymensingh Wing --------------------------
insert into sales_view (dept, sales_qty3, sales_amt3,target3, branch, month_name) 
select distinct a.department, sum(nvl(a.t_qty,0)), sum(nvl(a.g_total,0)) sales, sum(nvl(b.qty,0)) tar, a.branch, a.month  from sales a, target b
where a.department= b.department and a.branch=b.branch and  a.branch='KHL_MYM' 
group by a.department, a.branch, a.month
order by a.department


--------------- For Corporate & Others Wing ---------------------------

insert into sales_view (dept, sales_qty4, sales_amt4,target4, branch, month_name) 
select distinct a.department, sum(nvl(a.t_qty,0)), sum(nvl(a.g_total,0)) sales, sum(nvl(b.qty,0)) tar, a.branch, a.month  from sales a, target b
where a.department= b.department and a.branch=b.branch and  a.branch='COR_OTHERS'
group by a.department, a.branch, a.month
order by a.department



select distinct department from sales where department not in (select department from target)

select distinct department from target

update target set department = 'Die Casting Gift Box' where department = 'Die-Casting Gift Box'

select distinct dept from sales_view

delete from sales_view

select distinct dept, sum(nvl(target1,0)), sum(nvl(sales_qty1,0)), sum(nvl(sales_amt1,0)),sum(nvl(target2,0)), sum(nvl(sales_qty2,0)), sum(nvl(sales_amt2,.0)), 
sum(nvl(target3,0)), sum(nvl(sales_qty3,0)), sum(nvl(sales_amt3,0)), sum(nvl(target4,0)), sum(nvl(sales_qty4,0)), sum(nvl(sales_amt4,0)) from sales_view
group by dept
order by dept