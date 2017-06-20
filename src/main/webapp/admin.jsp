<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: anlu
  Date: 2017/6/16
  Time: 10:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员</title>
    <script>
        function del() {
            return confirm('是否要删除？');
        }
    </script>
</head>
<body>
<c:if test="${sessionScope.role ne '管理员'}">
    <c:redirect url="default.jsp"/>
</c:if>
<h1>管理员</h1>
${sessionScope.username}
<p><a href="user?action=logout">注销</a></p>
<hr>
<form action="book" method="post">
    <input type="hidden" name="action" value="add">
    <input type="text" name="title" placeholder="书名"><br>
    <input type="text" name="author" placeholder="作者"><br>
    <input type="text" name="pub" placeholder="出版社"><br>
    <input type="text" name="time" placeholder="出版时间"><br>
    <input type="text" name="price" placeholder="定价"><br>
    <input type="text" name="amount" placeholder="数量"><br>
    <input type="submit" value="添加">
</form>
<br>
<table>
    <tr>
        <th>序号</th>
        <th>标题</th>
        <th>作者</th>
        <th>出版社</th>
        <th>出版时间</th>
        <th>定价</th>
        <th>数量</th>
        <th colspan="2">操作</th>
    </tr>
    <c:forEach var="book" items="${sessionScope.books}" varStatus="vs">
        <tr>
            <td>${vs.count}</td>
            <td>${book.title}</td>
            <td>${book.author}</td>
            <td>${book.pub}</td>
            <td>${book.time}</td>
            <td>${book.price}</td>
            <td>${book.amount}</td>
            <td><a href="book?action=queryById&id=${book.id}">编辑</a></td>
            <td><a href="book?action=remove&id=${book.id}" onclick="return del()">删除</a></td>
        </tr>
    </c:forEach>
</table>
<hr>
<table>
    <tr>
        <th>序号</th>
        <th>姓名</th>
        <th>书名</th>
        <th>借书时间</th>
        <th>还书时间</th>
    </tr>
    <c:forEach var="borrow" items="${sessionScope.list}" varStatus="vs">
        <tr>
            <td>${vs.count}</td>
            <td>${borrow[0]}</td>
            <td>${borrow[1]}</td>
            <td>${borrow[2]}</td>
            <td>${borrow[3]}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
