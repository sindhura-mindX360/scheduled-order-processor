%dw 2.0
output application/json
---
{
  correlationId: correlationId,
  timestamp: now() >> "IST",
  applicationName: "order-management-system",
  component: "jms-consume",
  status: "SUCCESS",
  details: {
    event: "CONSUME AND INSERT",
    fileName: "Orders.csv",
    destinationQueue: "orderQueue",
    message: "CSV file processed successfully and all order messages were consumed from JMS queue in priority order."
  }
}