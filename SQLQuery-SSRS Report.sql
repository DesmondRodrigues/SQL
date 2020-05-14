SELECT        Person.FirstName, Person.LastName, Address.Number, Address.Street, Address.Suburb, Address.City, Address.Region, Address.PostCode, Property.Bedroom, Property.Bathroom, 
                         PropertyRentalPayment.Amount AS RentalPayment, OwnerProperty.PropertyId, OwnerProperty.OwnerId, TenantPaymentFrequencies.Name AS FrequencytType, PropertyExpense.Amount AS ExpenseAmt, 
                         PropertyExpense.Description AS ExpenseDesc, PropertyExpense.Date AS ExpenseDate
FROM            Owners INNER JOIN
                         OwnerProperty ON Owners.Id = OwnerProperty.OwnerId INNER JOIN
                         Person ON OwnerProperty.OwnerId = Person.Id INNER JOIN
                         Property ON OwnerProperty.PropertyId = Property.Id INNER JOIN
                         PropertyRentalPayment ON Property.Id = PropertyRentalPayment.PropertyId INNER JOIN
                         Address ON Property.AddressId = Address.AddressId INNER JOIN
                         TenantPaymentFrequencies ON PropertyRentalPayment.FrequencyType = TenantPaymentFrequencies.Id INNER JOIN
                         PropertyExpense ON OwnerProperty.PropertyId = PropertyExpense.PropertyId
WHERE        (Property.Name = 'Property a')