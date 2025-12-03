-- Ventas totales por producto
SELECT producto_id, SUM(cantidad) as total_vendido, SUM(cantidad * precio_unitario) as ingresos_totales
FROM detalle_pedidos
GROUP BY producto_id;

-- Estadísticas por pedido
SELECT pedido_id, COUNT(*) as items_diferentes, SUM(cantidad) as cantidad_total, AVG(precio_unitario) as precio_promedio
FROM detalle_pedidos
GROUP BY pedido_id;