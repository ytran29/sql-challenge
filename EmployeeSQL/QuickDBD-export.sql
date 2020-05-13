-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Departments" (
    "dept_No" INTEGER   NOT NULL,
    "dept_name" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "dept_No"
     )
);

CREATE TABLE "Employees" (
    "emp_No" INTEGER   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "birth_date" dateTime   NOT NULL,
    "gender" VARCHAR   NOT NULL,
    "hire_date" dateTime   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "emp_No"
     )
);

CREATE TABLE "Dept_Employee" (
    "emp_No" INTEGER   NOT NULL,
    "dept_No" INTEGER   NOT NULL,
    "Dept_Emp_No" INTEGER   NOT NULL,
    "from_date" dateTime   NOT NULL,
    "to_date" dateTime   NOT NULL,
    CONSTRAINT "pk_Dept_Employee" PRIMARY KEY (
        "Dept_Emp_No"
     )
);

CREATE TABLE "Dept_Manager" (
    "emp_No" INTEGER   NOT NULL,
    "dept_No" INTEGER   NOT NULL,
    "Dept_Mgr_No" INTEGER   NOT NULL,
    "from_date" dateTime   NOT NULL,
    "to_date" dateTime   NOT NULL,
    CONSTRAINT "pk_Dept_Manager" PRIMARY KEY (
        "Dept_Mgr_No"
     )
);

CREATE TABLE "Title" (
    "title_No" INTEGER   NOT NULL,
    "title" VARCHAR   NOT NULL,
    "emp_No" INTEGER   NOT NULL,
    "from_date" dateTime   NOT NULL,
    "to_date" dateTime   NOT NULL,
    CONSTRAINT "pk_Title" PRIMARY KEY (
        "title_No"
     )
);

CREATE TABLE "Salaries" (
    "salary_ID" INTEGER   NOT NULL,
    "emp_No" INTEGER   NOT NULL,
    "salary" INTEGER   NOT NULL,
    "from_date" dateTime   NOT NULL,
    "to_date" dateTime   NOT NULL,
    CONSTRAINT "pk_Salaries" PRIMARY KEY (
        "salary_ID"
     )
);

ALTER TABLE "Dept_Employee" ADD CONSTRAINT "fk_Dept_Employee_emp_No" FOREIGN KEY("emp_No")
REFERENCES "Employees" ("emp_No");

ALTER TABLE "Dept_Employee" ADD CONSTRAINT "fk_Dept_Employee_dept_No" FOREIGN KEY("dept_No")
REFERENCES "Departments" ("dept_No");

ALTER TABLE "Dept_Manager" ADD CONSTRAINT "fk_Dept_Manager_emp_No" FOREIGN KEY("emp_No")
REFERENCES "Employees" ("emp_No");

ALTER TABLE "Dept_Manager" ADD CONSTRAINT "fk_Dept_Manager_dept_No" FOREIGN KEY("dept_No")
REFERENCES "Departments" ("dept_No");

ALTER TABLE "Title" ADD CONSTRAINT "fk_Title_emp_No" FOREIGN KEY("emp_No")
REFERENCES "Employees" ("emp_No");

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_emp_No" FOREIGN KEY("emp_No")
REFERENCES "Employees" ("emp_No");

