SELECT 
        st.location_key
        -- dim_category.category_key,
        -- dim_subcategory.subcategory_key,
        -- dim_product.product_key,
        -- TO_DAYS(ModifiedDate) AS date_key,
        -- CASE WHEN return_date IS NULL THEN 0 ELSE 1 END AS count_returns,
        -- 1 as count_ventas
from adw.Sales_SalesOrderHeader as s
inner join adw.Sales_Store as sp on s.SalesPersonID=sp.SalesPersonID
inner join dim_Store as st on st.location_id=sp.BusinessEntityID
LIMIT 5;

-- SELECT count(*) as Conteo_Ventas,
-- count(DISTINCT CustomerID) as Conteo_Return
-- from adw.Sales_SalesOrderHeader;