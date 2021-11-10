<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="javaCode.itemVO" %>
<%
    List<itemVO> list = (List<itemVO>)request.getAttribute("data");
%>
<!DOCTYPE html>

<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>list</title>

    <style>
        table, td, th {
            border-collapse: collapse;
            border: 1px solid #000;
        }
    </style>
</head>
<body>

    <div>
        <a href="/write"><input type="button" value="글쓰기"></a>
    </div>
<table>
    <tr>

        <th>아이템등급</th>
        <th>아이템명</th>
        <th>아이템설명</th>
        <th>제작자</th>
        <th>생성일시</th>

    </tr>

<% for(itemVO vo : list){ %>

    <tr>
        <td><%=vo.getNitem()%></td>
        <td><%=vo.getTitem()%></td>
        <td><%=vo.getCtnt()%></td>
        <td><%=vo.getProducer()%></td>
        <td><%=vo.getRdt()%></td>

    </tr>


<% } %>
</table>
</body>
</html>
