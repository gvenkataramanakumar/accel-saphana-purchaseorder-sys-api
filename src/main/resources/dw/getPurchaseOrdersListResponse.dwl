%dw 2.0
output application/json skipNullOn="everywhere"
---
payload map ((order, index) -> {
    id: order.PurchaseOrder,
    nativeId: order.SupplierQuotationExternalID,
    lastModificationDateTime: order.LastChangeDateTime,
    purchaseOrderDate: order.PurchaseOrderDate,
    purchasingOrganization: order.PurchasingOrganization,
	companyCode: order.CompanyCode,
	supplierId: order.Supplier,
	currency: order.DocumentCurrency,
    paymentTerms: order.PaymentTerms,
    orderLines: order.to_PurchaseOrderItem map {
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
  )