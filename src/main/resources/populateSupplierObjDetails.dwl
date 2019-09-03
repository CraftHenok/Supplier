%dw 2.0
output application/java
---
{
	"supplierId" : payload.VENDOR_ID,
	"supplierStatus" : payload.PARTYSTATUS,
	"OracleSFID" : payload.INDIGOID,
}