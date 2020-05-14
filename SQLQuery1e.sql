SELECT t1.PropertyId, t2.Name AS PropertyName, T7.FirstName, t7.LastName, t3.Amount AS RentAmount, t4.Name As FrequencyName,
		t5.StartDate As TenantStartDate, t5.EndDate As TenantEndDate
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
	INNER JOIN Person AS T7
	ON T1.Id=T7.Id
	INNER JOIN Tenant AS T8
	ON T7.Id=T8.Id
	WHERE OwnerId=1426 AND T8.IsActive=1
	ORDER BY T2.Name
