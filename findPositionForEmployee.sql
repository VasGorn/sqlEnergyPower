SELECT 
    energypower.position_table.position_name
FROM
    energypower.position_table,
    energypower.employee_has_position
WHERE
    energypower.employee_has_position.employee_employee_id = 3
        AND energypower.employee_has_position.position_position_id = energypower.position_table.position_id
