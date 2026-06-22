%dw 2.0
output application/json

var orderAmount = payload.Order_Amount[0]
var orderTimestamp = payload.Order_Timestamp[0]

---
if (payload.Order_Id == null or
    payload.Customer_Name == null or
    payload.Order_Amount == null or
    payload.Order_Timestamp == null)
{
    valid: false,
    errorMessage: "Mandatory Fields are Missing"
}
else if (!(orderAmount matches /^[0-9]+$/) or
         (orderAmount as Number) <= 0)
{
    valid: false,
    errorMessage: "Order_Amount should be a Positive Integer"
}
else if (!(orderTimestamp matches /^\d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2}$/))
{
    valid: false,
    errorMessage: "Invalid TimeStamp Format"
}
else
{
    valid: true,
    errorMessage: ""
}