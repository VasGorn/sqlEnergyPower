SELECT 
    energypower.employee.lastname,
    energypower.employee.firstname,
    energypower.employee.middlename,
    energypower.employee.employee_id,
    energypower.work_type.type_name,
    energypower.work_type.type_id,
    energypower.work_time.num_month,
    energypower.work_time.num_day,
    energypower.work_time.work_time,
    energypower.work_time.over_time
FROM
    energypower.employee,
    energypower.work_type,
    energypower.work_time
WHERE
    energypower.employee.employee_id = energypower.work_time.employee_employee_id
        AND energypower.work_type.type_id = work_time.work_type_type_id
        AND energypower.work_time.order_order_id = 3
        AND energypower.work_time.num_month = 5
    
