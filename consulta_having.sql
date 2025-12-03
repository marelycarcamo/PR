-- Productos con más de 1 unidad vendida total
SELECT producto_id, SUM(cantidad) as total_vendido
FROM detalle_pedidos
GROUP BY producto_id
HAVING SUM(cantidad) > 1;

-- Pedidos con valor total > 150
SELECT pedido_id, SUM(cantidad * precio_unitario) as valor_total
FROM detalle_pedidos
GROUP BY pedido_id
HAVING SUM(cantidad * precio_unitario) > 150;