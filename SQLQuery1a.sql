SELECT t2.Name, t1.PropertyId, t1.OwnerId
FROM OwnerProperty AS t1
inner join Property AS t2
ON t1.PropertyId=t2.Id
WHERE OwnerId = 1426