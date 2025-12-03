SELECT * FROM clientes;
SELECT * FROM productos;
SELECT * FROM pedidos;

-- INNER JOIN: Solo clientes con pedidos
SELECT c.nombre, p.fecha_pedido, p.total
FROM clientes c
INNER JOIN pedidos p ON c.id = p.cliente_id;

-- LEFT JOIN: Todos los clientes, con pedidos si existen
SELECT c.nombre, COUNT(p.id) as num_pedidos, SUM(p.total) as total_compras
FROM clientes c
LEFT JOIN pedidos p ON c.id = p.cliente_id
GROUP BY c.id, c.nombre;

-- Clientes de Madrid con sus pedidos
SELECT c.nombre, c.ciudad, p.fecha_pedido, p.total
FROM clientes c
LEFT JOIN pedidos p ON c.id = p.cliente_id
WHERE c.ciudad = 'Madrid';