%dw 2.0
output application/json

---

{
  correlationId: correlationId,
  timestamp: now() >> "IST",
  applicationName: "order-management-system",
  processType: "VALIDATION",
  status: "FAILED",
  details: {
    errorCode: "APP-VALIDATION-001",
    errorType: "APP:INVALID_RECORD",
    errorMessage: "Order records failed validation checks",
    rejectedRecords: payload
  }
}