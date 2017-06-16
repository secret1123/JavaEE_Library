<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%--
  Created by IntelliJ IDEA.
  User: anlu
  Date: 2017/6/15
  Time: 14:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>主页</title>
</head>
<body>
<c:if test="${sessionScope.role ne '用户'}">
    <c:redirect url="default.jsp"/>
</c:if>
<h1>主页</h1>
${sessionScope.username}
<p><a href="user?action=logout">注销</a></p>
<hr>
<form action="book" method="post">
    <input type="hidden" name="action" value="query">
    <select name="key">
        <option value="title">书名</option>
        <option value="author">作者</option>
        <option value="pub">出版社</option>
    </select>
    <input type="text" name="value" placeholder="关键词">
    <input type="submit" value="查找">
</form>
<hr>
<form action="userBook" method="post">
    <input type="hidden" name="action" value="add">
    <input type="hidden" name="userId" value="${sessionScope.userId}">
    <c:if test="${fn:length(sessionScope.books) ne 0}">
    <table>
        <tr>
            <th>序号</th>
            <th>标题</th>
            <th>作者</th>
            <th>出版社</th>
            <th>出版时间</th>
            <th>定价</th>
        </tr>
        <c:forEach var="book" items="${sessionScope.books}" varStatus="vs">
            <tr>
                <td>
                    <c:if test="${book.amount eq 0}">
                        <input type="checkbox" name="bookId" value="${book.id}">
                    </c:if>
                    <c:if test="${book.amount eq 0}">
                        <input type="checkbox" disabled="disabled">
                    </c:if>
                        ${vs.count}</td>
                <td>${book.title}</td>
                <td>${book.author}</td>
                <td>${book.pub}</td>
                <td>${book.time}</td>
                <td>${book.price}</td>
            </tr>
        </c:forEach>
    </table>
    <input type="submit" value="借书">
    </c:if>
</form>
</body>
</html>
