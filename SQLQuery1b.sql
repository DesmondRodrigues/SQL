SELECT t2.Name AS PropertyName, t1.PropertyId, t1.OwnerId, t3.CurrentHomeValue
FROM OwnerProperty AS t1
inner join Property AS t2
ON t1.PropertyId=t2.Id
inner join PropertyFinance AS t3
ON t1.PropertyId = t3.PropertyId
WHERE OwnerId = 1426