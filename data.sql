SELECT
	energypower.work_type.type_id,
    energypower.work_type.type_name
FROM
	energypower.work_type,
    energypower.order_has_work_type
WHERE
	energypower.order_has_work_type.order_order_id = 3 AND energypower.order_has_work_type.work_type_type_id = energypower.work_type.type_id