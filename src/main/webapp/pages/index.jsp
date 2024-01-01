<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=ISO-8859-1">
<title>Test JSP</title>
</head>
<body>
    <h1>Save Product Data</h1>


//action=when we submit the form it should go to which action
//modelAttribute=this class is binded to which calss object
//method=What type of request u want to send
    
    
        <form:form action="product" modelAttribute="product" method="POST">
            <table>
        <tr>
            <td>Product Id</td>
            <td><form:input path="productId" /></td>
        </tr>
        <tr>
            <td>Product Name</td>
            <td><form:input path="productName" /></td>
        </tr>
        <tr>
            <td>Product Price</td>
            <td><form:input path="productPrice" /></td>
        </tr>
        <tr>
            <td><form:input type="submit" value="Submit" /></td>
        </tr>
        </form:form>
    </table>

</body>
</html>