SELECT s.SalesPersonID,
sp.BusinessEntityID 
from adw.Sales_SalesOrderHeader as s
inner join adw.Sales_Store as sp on s.SalesPersonID=sp.SalesPersonID
inner join dim_Store as st on st.location_id=sp.BusinessEntityID
LIMIT 5;
