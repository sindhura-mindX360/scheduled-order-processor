%dw 2.0
output application/json

---

{
  correlationId: correlationId,
  timestamp: now() >> "IST",
  applicationName: "order-management-system",
  processType: "DUPLICATION_ORDER_ID",
  status: "FAILED",
  details: {
    errorType: "DUPLICATION_ORDER_ID",
    errorMessage: "Order records failed due to Duplicate order checks"
  }
}