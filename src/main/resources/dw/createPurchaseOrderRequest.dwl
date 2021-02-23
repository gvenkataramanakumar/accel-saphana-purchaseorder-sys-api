%dw 2.0
output application/java
---
{
    "PurchaseOrderType": "NB",
    "CompanyCode": payload.companyCode,
    "PurchasingOrganization": payload.purchasingOrganization,
    "PurchasingGroup": "001",
    "DocumentCurrency": payload.currency,
    "Supplier": payload.supplierId,
    "PaymentTerms": payload.paymentTerms,
    "PurchaseOrderDate": (payload.purchaseOrderDate default now()) as Date,
    "SupplierQuotationExternalID": payload.nativeId,
    "to_PurchaseOrderItem": payload.orderLines map {
    			"PurchaseOrderItem": $.id,
                "PurchaseOrderItemText":$.name,
                "PurchaseOrderItemCategory": "0",
                "PurchaseOrderQuantityUnit": $.unit,
                "Material": $.code,
                "OrderQuantity": $.quantity,
                "NetPriceAmount": $.unitPrice,
                "DocumentCurrency": $.currency,
                "Plant": $.plant,
                "TaxCode": $.taxCode  
                }
}
