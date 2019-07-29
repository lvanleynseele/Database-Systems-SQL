

Select custid, first_name, last_name, (first_name||last_name) as fullname, city From Customer;


Select * From Customer Order By last_name;


Select * From Schedule Order By serviceid, custid DESC; 


Select serviceid From DeliveryService Minus Select serviceid From Schedule; 


Select first_name From Customer, Schedule Where day='m';


Select last_name From Customer Left Join Schedule On Customer.custid=Schedule.custid;


Select Max(servicefee) As highest_servicefee From DeliveryService;


Select Count(day),day From Schedule Group By day Order By day;


Select A.custid,B.custid,A.city
from Customer A, Customer B
where A.city = B.city 
And A.custid<>B.custid;


Select first_name From Customer 
Inner Join Schedule On Customer.custid=Schedule.custid 
Inner Join DeliveryService On Schedule.serviceid=Deliveryservice.serviceid 
Where Customer.city=DeliveryService.location;
