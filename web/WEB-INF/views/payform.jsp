<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE HTML>
<head>
    <meta charset="UTF-8"/>
    <%--    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">--%>
    <script charset="UTF-8" src="https://stdpay.inicis.com/stdjs/INIStdPay.js"
            type="text/javascript"></script>
    <title>PayForm</title>
</head>
<body>
<form id="PayForm" method="POST" style="display: none;">
    <input type="hidden" name="goodname" value="${pay.goodname}">
    <input type="hidden" name="buyername" value="${pay.buyername}">
    <input type="hidden" name="buyertel" value="${pay.buyertel}">
    <input type="hidden" name="buyeremail" value="${pay.buyeremail}">
    <input type="hidden" name="price" value="${pay.price}">

    <input type="hidden" name="mid" value="${pay.mid}">
    <input type="hidden" name="gopaymethod" value="Card">
    <input type="hidden" name="mKey" value="3a9503069192f207491d4b19bd743fc249a761ed94246c8c42fed06c3cd15a33">
    <input type="hidden" name="signature" value="${pay.signature}">
    <input type="hidden" name="oid" value="${pay.oid}">
    <input type="hidden" name="timestamp" value="${pay.timestamp}">
    <input type="hidden" name="version" value="1.0">
    <input type="hidden" name="currency" value="WON">
    <input type="hidden" name="returnUrl" value="http://localhost:8082/triplus/api/v1/pay/return">
    <input type="hidden" name="closeUrl" value="http://localhost:8082/triplus/api/v1/pay/close">
</form>
<script>
    INIStdPay.pay('PayForm')
</script>
</body>