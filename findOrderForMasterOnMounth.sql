SELECT 
    energypower.orders.order_id,
    energypower.orders.name_order,
    energypower.orders.employee_manager_id,
    energypower.orders.adress,
    energypower.orders.description,
    energypower.orders.max_hour,
    energypower.employee.lastname
FROM
    energypower.qouts,
    energypower.orders,
    energypower.hour_per_month,
    energypower.employee
WHERE
    energypower.qouts.employee_on_order_id = 3
        AND energypower.qouts.order_order_id = energypower.orders.order_id
        AND energypower.hour_per_month.qouts_qout_id = energypower.qouts.qout_id
        AND energypower.hour_per_month.num_month = 5
        AND energypower.hour_per_month.hours > 0
        AND energypower.employee.employee_id = energypower.orders.employee_manager_id
