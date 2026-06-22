%dw 2.0
output application/json
---
payload
    orderBy ((item) -> item.Order_Timestamp)
    orderBy ((item) -> -item.Order_Amount)