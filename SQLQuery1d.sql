SELECT a1.OwnerId, a1.Propertyid, a1.JobDescription,
		a2.Name As JobsAvailable, a1.CreatedOn,a1.UpdatedOn, a1.MaxBudget, a1.Title
FROM TenantJobRequest AS a1
inner join TenantJobStatus As a2
ON a1.JobStatusid=a2.id
WHERE OwnerID = 1426 and JobStatusid = 1