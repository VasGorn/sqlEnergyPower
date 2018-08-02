SELECT 
    SUM(energypower.work_time.work_time) + SUM(energypower.work_time.over_time)
FROM
    energypower.work_time,
    energypower.team
WHERE
    energypower.team.master_id = 3
        AND energypower.work_time.order_order_id = 3
        AND energypower.work_time.employee_employee_id = energypower.team.worker_id