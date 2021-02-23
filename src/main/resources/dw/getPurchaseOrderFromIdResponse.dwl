%dw 2.0
output application/json skipNullOn="everywhere"
---
{
    id: payload.PurchaseOrder,
    nativeId: payload.SupplierQuotationExternalID,
    lastModificationDateTime: payload.LastChangeDateTime,
    purchaseOrderDate: payload.PurchaseOrderDate,
    purchasingOrganization: payload.PurchasingOrganization,
	companyCode: payload.CompanyCode,
	supplierId: payload.Supplier,
	currency: payload.DocumentCurrency,
    paymentTerms: payload.PaymentTerms,
    orderLines: payload.to_PurchaseOrderItem map {
    	id: $.PurchaseOrderItem,
        code: $.Material,
        name: $.PurchaseOrderItemText,
        unitPrice: $.NetPriceAmount,
        unit: $.PurchaseOrderQuantityUnit,
        currency: $.DocumentCurrency,
        quantity: $.OrderQuantity,
        plant: $.Plant,
        taxCode: $.TaxCode
    }
}