%dw 2.0
output text/plain
---
"
<html>
<body>

<h2>Duplicate Order Alert</h2>

<p>A duplicate order has been detected and was not processed.</p>

<table border='1' cellpadding='5' cellspacing='0'>
<tr>
    <th>Field</th>
    <th>Value</th>
</tr>
<tr>
    <td>Order ID</td>
    <td>" ++ vars.orderPayload.Order_Id ++ "</td>
</tr>
<tr>
    <td>Customer Name</td>
    <td>" ++ vars.orderPayload.Customer_Name ++ "</td>
</tr>
<tr>
    <td>Order Amount</td>
    <td>" ++ vars.orderPayload.Order_Amount ++ "</td>
</tr>
<tr>
    <td>Order Timestamp</td>
    <td>" ++ vars.orderPayload.Order_Timestamp ++ "</td>
</tr>
</table>

<br/>

<p>
The order was not processed because an order with the same
<b>Order ID</b> already exists in the system.
</p>

</body>
</html>
"