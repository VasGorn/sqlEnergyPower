SELECT 
    energypower.hour_per_month.num_month,
    energypower.hour_per_month.hours
FROM
    energypower.hour_per_month
WHERE
    energypower.hour_per_month.qouts_qout_id = (SELECT 
            energypower.qouts.qout_id
        FROM
            energypower.qouts
        WHERE
            energypower.qouts.order_order_id = 3
                AND energypower.qouts.employee_on_order_id = 3)
ORDER BY energypower.hour_per_month.num_month