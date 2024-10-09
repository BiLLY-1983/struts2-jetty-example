<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>
<!DOCTYPE html>
<html>
<head>
  <title><s:text name="hello.message"/></title>
  <s:head/>
  <sx:head/>
</head>

<body>

    <h1>Resumen de factura: </h1>

    <!--  -->
    <p><strong>Concepto:</strong> <s:property value="invoiceBean.subject"/></p>
    <p><strong>Fecha desde:</strong> <s:property value="invoiceBean.dateFrom"/></p>
    <p><strong>Fecha hasta:</strong> <s:property value="invoiceBean.dateTo"/></p>
    <p><strong>Importe Bruto:</strong> <s:property value="invoiceBean.grossAmount"/></p>

    <%
        double grossAmount = Double.parseDouble(request.getAttribute("invoiceBean.grossAmount").toString());
        double iva = 0.21; // Suponemos que el IVA es el 21%
        double totalWithIVA = grossAmount * (1 + iva);
    %>
    <p><strong>Total con IVA (21%):</strong> <%= totalWithIVA %></p>

</body>
</html>