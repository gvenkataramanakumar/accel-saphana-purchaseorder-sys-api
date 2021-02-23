%dw 2.0
output application/java
---
{
    "PurchaseOrder": vars.id as Number,
    "DocumentCurrency": vars.inputPayload.currency,
    "SupplierQuotationExternalID": vars.inputPayload.nativeId,
    "Supplier": vars.inputPayload.supplierId,
    "PaymentTerms": vars.inputPayload.paymentTerms,
    "PurchasingOrganization": vars.inputPayload.purchasingOrganization,
	"CompanyCode": vars.inputPayload.companyCode,
    "PurchaseOrderDate": vars.inputPayload.purchaseOrderDate as Date default null
}