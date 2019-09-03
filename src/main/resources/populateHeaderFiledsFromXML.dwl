%dw 2.0
output application/java
---
{
	"pVendorNum" : payload.pVendorNum,
	"pAcctName" : payload.pAcctName,
	"pPartyNum" : payload.pPartyNum,
	"pUpdateDate" : payload.pUpdateDate,
	"pSupplierType" : payload.pSupplierType,
	"supplierName" : payload.VENDOR_NAME,
	"OracleSFID" : payload.INDIGOID,
}