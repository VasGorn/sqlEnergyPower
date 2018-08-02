SELECT 
    energypower.employee.lastname,
    energypower.employee.firstname,
    energypower.employee.middlename,
    energypower.employee.employee_id
FROM
    energypower.employee,
    energypower.employee_has_position
WHERE
    energypower.employee_has_position.position_position_id = 8
        AND energypower.employee.employee_id = energypower.employee_has_position.employee_employee_id