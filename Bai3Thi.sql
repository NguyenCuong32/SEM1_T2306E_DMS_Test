CREATE PROCEDURE calculate_total_salaries_by_department()
AS
BEGIN
    DECLARE @department_code VARCHAR(10);
    DECLARE @total_salary DECIMAL(10,2);

    SELECT @department_code, SUM(gross_salary) AS @total_salary
    INTO #total_salaries_by_department
    FROM employees
    GROUP BY department_code
    ORDER BY department_code;

    SELECT @department_code, @total_salary
    FROM #total_salaries_by_department;

    DROP TABLE #total_salaries_by_department;
END
