-- Ventas por ciudad usando JOIN + GROUP BY
SELECT c.ciudad, COUNT(p.id) as num_pedidos, SUM(dp.cantidad * dp.precio_unitario) as ingresos_ciudad
FROM clientes c
LEFT JOIN pedidos p ON c.id = p.cliente_id
LEFT JOIN detalle_pedidos dp ON p.id = dp.pedido_id
GROUP BY c.ciudad
HAVING SUM(dp.cantidad * dp.precio_unitario) > 0;