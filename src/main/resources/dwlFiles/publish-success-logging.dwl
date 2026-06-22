%dw 2.0
output application/json
---
{
  correlationId: correlationId,
  timestamp: now() >> "IST",
  applicationName: "order-management-system",
  component: "jms-publish",
  status: "SUCCESS",
  details: {
    event: "MESSAGE_PUBLISH",
    fileName: "Orders.csv",
    filePath: p("input.file.path"),
    totalRecordsRead: sizeOf(payload),
    totalRecordsProcessed : sizeOf(payload),
    records: payload,
    destinationQueue: "orderQueue",
    message: "CSV file processed successfully and all order messages were published to JMS queue in priority order."
  }
}