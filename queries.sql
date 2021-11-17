-- #1
select emp_no, last_name, first_name, sex, salary 
from "Employees"
join "Salaries"
using (emp_no);


-- #2
select first_name,last_name, hire_date
from "Employees"
where extract(year from hire_date) = 1986;


-- #3
select dept_no, dept_name, emp_no, last_name, first_name
from "Department Managers"
join "Departments"
using (dept_no)
join "Employees"
using (emp_no);


-- #4
select emp_no, last_name, first_name, dept_name
from "Department Employees"
join "Departments"
using (dept_no)
join "Employees"
using (emp_no);


-- #5
select first_name, last_name, sex
from "Employees"
where first_name = 'Hercules' and last_name like 'B%';


-- #6
select emp_no, last_name, first_name, dept_name
from "Department Employees"
join "Departments"
using (dept_no)
join "Employees"
using (emp_no)
where dept_name = 'Sales';


-- #7
select emp_no, last_name, first_name, dept_name
from "Department Employees"
join "Departments"
using (dept_no)
join "Employees"
using (emp_no)
where dept_name in ('Sales','Development');


-- #8
select last_name, count(last_name)
from "Employees"
group by last_name
order by count desc;