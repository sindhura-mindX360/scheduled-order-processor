%dw 2.0
output application/json

var err = error default {}
var errType = err.errorType default {}

---
{
  correlationId: correlationId,
  timestamp: now() >> "IST",
  applicationName: "order-management-system",
  status: "FAILED",
  details: {
    errorCode: vars.errorCode default "APP-500",
    errorType: (errType.namespace default "UNKNOWN") ++ ":" ++ (errType.identifier default "UNKNOWN"),
    errorMessage: err.description default err.message default "Unexpected error occurred",
    cause: err.cause.message default "N/A"
  }
}