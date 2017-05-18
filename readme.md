# sql-library

Exemplo de consulta com: GROUP_CONCAT, LEFT JOIN, GROUP_BY e ORDER_BY

```sql
SELECT GROUP_CONCAT(categorias.titulo) as categoria, `produtos`.`id`, `produtos`.`codigo`, `produtos`.`titulo`
FROM `produtos` 
LEFT JOIN `produtos_categorias` ON `produtos_categorias`.`produto` = `produtos`.`id` 
LEFT JOIN `categorias` ON `categorias`.`id` = `produtos_categorias`.`categoria` 
GROUP BY `produtos`.`id` 
ORDER BY `produtos`.`id` ASC
```