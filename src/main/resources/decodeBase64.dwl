%dw 2.0
import * from dw::core::Binaries
output text/plain
ns ns0 http://xmlns.oracle.com/oxp/service/PublicReportService
---
fromBase64(payload.body.ns0#runReportResponse.ns0#runReportReturn.ns0#reportBytes)