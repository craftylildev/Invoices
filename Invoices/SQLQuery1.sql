SELECT
  co.DateCreated,
  co.OrderNumber,
  p.Name AS ProductName,
  pt.Name AS ProductType,
  c.FirstName + ' ' + c.LastName FullName,
  po.IdPaymentOption
FROM CustomerOrder co
INNER JOIN OrderProducts op ON op.IdOrder = co.IdOrder
INNER JOIN Product p ON p.IdProduct = op.IdProduct
INNER JOIN ProductType pt ON pt.IdProductType = p.IdProductType
INNER JOIN Customer c ON c.IdCustomer = co.IdCustomer
INNER JOIN PaymentOption po ON po.IdPaymentOption = co.IdPaymentOption