%dw 2.0
output application/xml
ns ns0 http://xmlns.oracle.com/oxp/service/PublicReportService
---
{
	ns0#runReport: {
		ns0#reportRequest: {
			ns0#flattenXML: "True",
			ns0#parameterNameValues: {
				ns0#item: {
					ns0#name: if (vars.reportAbsolutePath == "Custom/Integration/Suppliers/SupplierSites.xdo") "pVendorNum" else "UpdateDate",
					ns0#values: {
						ns0#item: if (vars.reportAbsolutePath == "Custom/Integration/Suppliers/SupplierSites.xdo") vars.vendorNumber  else vars.updatedLastRun
					}
				}
			},
			ns0#reportAbsolutePath: vars.reportAbsolutePath,
			ns0#sizeOfDataChunkDownload: "-1"
		},
		ns0#userID: "ramartin",
		ns0#password: "TestRM2019"
	}
}