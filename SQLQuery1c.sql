SELECT t1.PropertyId, t2.Name AS PropertyName, t3.Amount AS RentAmount, t4.Name As FrequencyName,
		t5.StartDate As TenantStartDate, t5.EndDate As TenantEndDate, t6.Yield,
CASE
 	WHEN PaymentFrequencyId = 1 THEN DATEDIFF(week, StartDate, EndDate)*PaymentAmount
 	WHEN PaymentFrequencyId = 2 THEN (DATEDIFF(week, StartDate, EndDate))/2*PaymentAmount
 	ELSE DATEDIFF(month, StartDate, EndDate)*PaymentAmount
 	END AS TotalRentAmount

FROM OwnerProperty As t1
	INNER JOIN Property AS t2
	ON t1.PropertyId=t2.Id
	INNER JOIN PropertyRentalPayment AS t3
	ON t1.PropertyId=t3.PropertyId
	INNER JOIN TenantPaymentFrequencies AS t4
	ON t3.FrequencyType=t4.Id
	INNER JOIN TenantProperty AS t5
	ON t3.PropertyId=t5.PropertyId
	INNER JOIN PropertyFinance AS t6
	ON t3.PropertyId=t6.PropertyId
WHERE OwnerId=1426
