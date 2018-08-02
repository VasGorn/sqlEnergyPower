SELECT 
    energypower.employee.lastname,
    energypower.employee.firstname,
    energypower.employee.middlename,
    energypower.employee.employee_id,
    energypower.hour_per_month.num_month,
    energypower.hour_per_month.hours
FROM
    energypower.employee,
    energypower.qouts,
    energypower.hour_per_month,
    energypower.employee_has_position
WHERE
    energypower.hour_per_month.qouts_qout_id = energypower.qouts.qout_id
        AND energypower.employee.employee_id = energypower.qouts.employee_on_order_id
        AND energypower.employee_has_position.employee_employee_id = energypower.employee.employee_id
        AND energypower.qouts.order_order_id = 3
        AND energypower.employee_has_position.position_position_id = 3