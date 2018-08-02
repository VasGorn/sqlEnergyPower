SELECT 
    energypower.orders.order_id,
    energypower.orders.name_order,
    energypower.orders.employee_manager_id,
    energypower.orders.adress,
    energypower.orders.description,
    energypower.orders.max_hour
FROM
    energypower.orders
WHERE
	energypower.orders.employee_manager_id = 10