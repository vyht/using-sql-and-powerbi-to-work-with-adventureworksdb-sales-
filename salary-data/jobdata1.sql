select
work_year,
job_category,
salary_currency,
experience_level,
work_setting,
company_location,
company_size,
count(*) as no_of_positions,
sum(salary_in_usd) as salaries
from jobs_in_salary.dbo.[jobs_in_data.csv]
group by work_year,
    job_category,
    salary_currency,
    experience_level,
    work_setting,
    company_location,
    company_size;