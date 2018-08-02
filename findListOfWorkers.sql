SELECT 
    energypower.employee.lastname,
    energypower.employee.firstname,
    energypower.employee.middlename,
    energypower.employee.employee_id
FROM
    energypower.employee,
    energypower.team
WHERE
    energypower.team.master_id = 3
        AND energypower.employee.employee_id = energypower.team.worker_id