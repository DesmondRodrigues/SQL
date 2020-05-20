SELECT t1.PropertyId, t2.Name AS PropertyName, t3.PaymentAmount AS RentAmount, t4.Name As FrequencyName,
		t5.StartDate As TenantStartDate, t5.EndDate As TenantEndDate, t6.Yield,
CASE
 	WHEN t3.PaymentFrequencyId = 1 THEN t3.PaymentAmount*52
 	WHEN t3.PaymentFrequencyId= 2 THEN t3.PaymentAmount*26
	WHEN t3.PaymentFrequencyId= 3 THEN t3.PaymentAmount*12
 	ELSE null END as TotalRentAmount
	
FROM OwnerProperty As t1
	INNER JOIN Property AS t2
	ON t1.PropertyId=t2.Id
	INNER JOIN TenantProperty AS t3
	ON t1.PropertyId=t3.PropertyId
	INNER JOIN TargetRentType AS t4
	ON t3.PaymentFrequencyId=t4.Id
	INNER JOIN TenantProperty AS t5
	ON t3.PropertyId=t5.PropertyId
	INNER JOIN PropertyFinance AS t6
	ON t3.PropertyId=t6.PropertyId
WHERE OwnerId=1426
