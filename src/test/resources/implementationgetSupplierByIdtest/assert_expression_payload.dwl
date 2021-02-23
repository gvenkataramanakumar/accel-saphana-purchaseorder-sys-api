%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo({
  "id": "1",
  "lastModificationDateTime": "2021-02-19T04:31:18-08:00",
  "name": "Dell_1 (USA)",
  "status": "active",
  "commodity": "Laptops and Tablets",
  "primaryContact": {
    "email": "upgrade+dellus@coupa.com",
    "nameGiven": "Frank",
    "nameFamily": "Corta"
  },
  "primaryAddress": {
    "street1": "2 West Hillsdale",
    "city": "Las Vegas",
    "state": "NV",
    "postalCode": "23902",
    "countryCode": "US"
  },
  "paymentMethod": "invoice",
  "paymentTerms": "2/10 Net 30"
})