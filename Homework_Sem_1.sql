CREATE SCHEMA `phone_devices` ;
CREATE TABLE `phone_devices`.`new_table` (
  `product_name` VARCHAR(45) NOT NULL,
  `manufacturer` VARCHAR(45) NULL,
  `product_count` INT NULL,
  `price` INT NULL,
  PRIMARY KEY (`product_name`));
  
# 2. Напишите SELECT-запрос, который выводит название товара, 
# производителя и цену для товаров, количество которых превышает 2 
SELECT product_name, manufacturer, price from phone_devices.models where product_count > 2;  

# 3. Выведите SELECT-запросом весь ассортимент товаров марки “Samsung”
SELECT * from phone_devices.models where manufacturer = 'Samsung';