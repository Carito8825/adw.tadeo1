
-- Hechos ventas
-- Tabla fact_ventas
CREATE TABLE IF NOT EXISTS fact_ventas (
  
  ventas_id INT(11) NULL DEFAULT NULL,

  date_key     	  int(8)   not null,
  location_key    INT(8) NOT NULL,
  product_key     INT(8) NOT NULL,
  category_key    INT(8) NOT NULL,
  subcategory_key INT(8)  NOT NULL,

  count_returns INT(10) NOT NULL,
  count_Ventas INT(8) NOT NULL,

  INDEX fk_location_idx (location_key ASC) VISIBLE,
  INDEX fk_product_idx (product_key ASC) VISIBLE,
  INDEX fk_date_idx (date_key ASC) VISIBLE,
  INDEX fk_category_idx (category_key ASC) VISIBLE,
 INDEX fk_subcategory_idx (subcategory_key ASC) VISIBLE,



  CONSTRAINT fk_location
  FOREIGN KEY (location_key)
  REFERENCES dim_Store (location_key)
  ON DELETE CASCADE
  ON UPDATE NO ACTION,

  CONSTRAINT fk_product
  FOREIGN KEY (product_key)
  REFERENCES dim_product (product_key)
  ON DELETE CASCADE
  ON UPDATE NO ACTION,

  CONSTRAINT fk_date
  FOREIGN KEY (date_key)
  REFERENCES dim_time (date_key)
  ON DELETE CASCADE
  ON UPDATE NO ACTION,

  CONSTRAINT fk_category
  FOREIGN KEY (category_key)
  REFERENCES dim_category (category_key)
  ON DELETE CASCADE
  ON UPDATE NO ACTION,

  CONSTRAINT fk_subcategory
  FOREIGN KEY (subcategory_key)
  REFERENCES dim_subcategory (subcategory_key)
  ON DELETE CASCADE
  ON UPDATE NO ACTION
);
