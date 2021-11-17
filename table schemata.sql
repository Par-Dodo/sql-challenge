CREATE TABLE "Employees" (
    "emp_no" Int   NOT NULL,
    "emp_title_id" VARCHAR   NOT NULL,
    "birth_date" Date   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "sex" VARCHAR   NOT NULL,
    "hire_date" Date   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "Departments" (
    "dept_no" VARCHAR   NOT NULL,
    "dept_name" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "Department Employees" (
    "emp_no" Int   NOT NULL,
    "dept_no" VARCHAR   NOT NULL
);

CREATE TABLE "Department Managers" (
    "dept_no" VARCHAR   NOT NULL,
    "emp_no" Int   NOT NULL
);

CREATE TABLE "Salaries" (
    "emp_no" Int   NOT NULL,
    "salary" Int   NOT NULL
);

CREATE TABLE "Titles" (
    "title_id" VARCHAR   NOT NULL,
    "title" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Titles" PRIMARY KEY (
        "title_id"
     )
);

ALTER TABLE "Employees" ADD CONSTRAINT "fk_Employees_emp_title_id" FOREIGN KEY("emp_title_id")
REFERENCES "Titles" ("title_id");

ALTER TABLE "Department Employees" ADD CONSTRAINT "fk_Department Employees_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

ALTER TABLE "Department Employees" ADD CONSTRAINT "fk_Department Employees_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Departments" ("dept_no");

ALTER TABLE "Department Managers" ADD CONSTRAINT "fk_Department Managers_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Departments" ("dept_no");

ALTER TABLE "Department Managers" ADD CONSTRAINT "fk_Department Managers_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

-- import order for data
--- titles
--- employees
--- salaries
--- departments
--- department managers
--- department employees