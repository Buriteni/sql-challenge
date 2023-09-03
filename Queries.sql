select e.emp_no, last_name, first_name, sex, salary
from employees as e join salaries as s 
on e.emp_no = s.emp_no
limit 20

select first_name, last_name, hire_date
from employees 
where hire_date between '1986-01-01' and '1986-12-31'
limit 20

select dep.dept_no, dept_name, emp.emp_no, last_name, first_name
from dept_manager as mang join departments as dep
on mang.dept_no = dep.dept_no
join employees as emp
on emp.emp_no = mang.emp_no

select dep.dept_no, emp.emp_no, last_name, first_name, dept_name
from dept_emp as dep join employees as emp
on dep.emp_no = emp.emp_no
join departments as dept
on dep.emp_no = emp.emp_no
join dept_manager as mang
on mang.dept_no = dep.dept_no


select first_name, last_name, sex
from employees
where first_name = 'Hercules' 
and last_name like 'B%'

select dept_name, emp.emp_no, last_name, first_name
from dept_emp as dep join employees as emp
on dep.emp_no = emp.emp_no
join departments as dept
on dep.emp_no = emp.emp_no
join dept_manager as mang
on mang.dept_no = dep.dept_no
where dept_name = 'Sales'
limit 20

select dept_name, emp.emp_no, last_name, first_name
from dept_emp as dep join employees as emp
on dep.emp_no = emp.emp_no
join departments as dept
on dep.emp_no = emp.emp_no
join dept_manager as mang
on mang.dept_no = dep.dept_no
where dept_name = 'Sales'
or dept_name = 'Development'
limit 20

select last_name, count(last_name)
from employees
group by last_name
order by count(last_name) desc
limit 20
