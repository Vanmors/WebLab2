<%--
  Created by IntelliJ IDEA.
  User: morik
  Date: 09.10.2022
  Time: 18:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Result</title>
    <style>
        * {
            background-color: #1f1f1f;
        }
        #result-table{
            background-color: #dddddd;
            color: #dddddd;
        }
        .table {
            width: 100%;
            border: none;
            /*margin-bottom: 20px;*/
            border-collapse: separate;
            position: absolute;
            left: 500px;
            top: 250px;
        }
        .table thead th {
            font-weight: bold;
            text-align: left;
            border: none;
            padding: 10px 15px;
            background: #EDEDED;
            font-size: 14px;
            border-top: 1px solid #ddd;
        }
        .table tr th:first-child, .table tr td:first-child {
            border-left: 1px solid #ddd;
        }
        .table tr th:last-child, .table tr td:last-child {
            border-right: 1px solid #ddd;
        }
        .table thead tr th:first-child {
            border-radius: 20px 0 0 0;
        }
        .table thead tr th:last-child {
            border-radius: 0 20px 0 0;
        }
        .table tbody td {
            text-align: left;
            border: none;
            padding: 10px 15px;
            font-size: 14px;
            vertical-align: top;
        }
        .table tbody tr:nth-child(even) {
            background: #F8F8F8;
        }
        .table tbody tr:last-child td{
            border-bottom: 1px solid #ddd;
        }
        .table tbody tr:last-child td:first-child {
            border-radius: 0 0 0 20px;
        }
        .table tbody tr:last-child td:last-child {
            border-radius: 0 0 20px 0;
        }
    </style>
</head>
<body>
<div class="utka">
    <img id="utka" src="vt_logo.png" width="100" height="100">
</div>
<div class="table">
    <table id="result-table" >
        <tr class="table-header">
            <th class="coords-col">X ${x}</th>
            <th class="coords-col">Y</th>
            <th class="coords-col">R</th>
            <th class="time-col">Current time</th>
            <th class="time-col">Execution time</th>
            <th class="hitres-col">Result</th>
        </tr>

        <tr>
            <td class="table-text">${x}</td>
            <td class="table-text">${y}</td>
            <td class="table-text">${r}</td>
            <td class="table-text"></td>
            <td class="table-text"></td>
            <td class="table-text"></td>
        </tr>

    </table>
</div>
    <script src="addRow.js"></script>
</body>
</html>
