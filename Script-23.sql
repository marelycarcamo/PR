-- Seleccionar productos con precio > 100
SELECT nombre, precio FROM productos WHERE precio > 100;

-- Productos de categoría 'Electrónica' ordenados por precio descendente
SELECT nombre, precio, categoria FROM productos
WHERE categoria = 'Electrónica'
ORDER BY precio DESC;

-- Productos con stock entre 10 y 40, ordenados por stock ascendente
SELECT nombre, stock, precio FROM productos
WHERE stock BETWEEN 10 AND 40
ORDER BY stock ASC;

-- Nombres que contienen 'a' ordenados alfabéticamente
SELECT nombre, precio FROM productos
WHERE nombre LIKE '%a%'
ORDER BY nombre ASC;