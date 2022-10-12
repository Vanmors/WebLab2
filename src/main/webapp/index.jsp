<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<%! private static final String DEFAULT_NAME = "World";
%>
<html>
<head>
    <title>Lab2</title>
<%--    <link rel="stylesheet" href="style.css">--%>
    <link rel="stylesheet" href="testStyle.css">
</head>
<%-- Determine the specified name (or use default) --%>
<%
    String name = request.getParameter("name");
    if ((name == null) || (name.length() == 0)) {
        name = DEFAULT_NAME;
    }
%>
<body bgcolor='white'>
<div class="name">
    Мориков Иван Дмитриевич P32121(P3117) №212113
    <img id="utka" src="vt_logo.png" width="100" height="100">
</div>
<div class="chart exmpl">
<%--        <img src="grafic.png">--%>
    <canvas style="background-color: #dddddd " width="500" height="500" id="canvas"></canvas>

</div>

<p></p>



<div class="values">
    <form action="${pageContext.request.contextPath}/hello-servlet" method="post">
        <table>
            <tr>
                <th><label for="x-textinput">X:</label> &nbsp;</th>
                <th><input type="number" id="x-textinput" name="x" class="result" required step="any"/><br/>


                </th>
                <th>
                    <form>
                        <button type="button" onclick="daivalue('-2')" value="-2">-2</button>
                    </form>
                </th>
                <th>
                    <form>
                        <button type="button" onclick="daivalue('-1.5')" value="-1.5">-1.5</button>
                    </form>
                </th>
                <th>
                    <form>
                        <button type="button" onclick="daivalue('-1')" value="-1">-1</button>
                    </form>
                </th>
                <th>
                    <form>
                        <button type="button" onclick="daivalue('-0.5')" value="-0.5">-0.5</button>
                    </form>
                </th>
                <th>
                    <form>
                        <button type="button" onclick="daivalue('0')" value="0">0</button>
                    </form>
                </th>
                <th>
                    <form>
                        <button type="button" onclick="daivalue('0.5')" value="0.5">0.5</button>
                    </form>
                </th>
                <th>
                    <form>
                        <button type="button" onclick="daivalue('1')" value="1">1</button>
                    </form>
                </th>
                <th>
                    <form>
                        <button type="button" onclick="daivalue('1.5')" value="1.5">1.5</button>
                    </form>
                </th>
                <th>
                    <form>
                        <button type="button" onclick="daivalue('2')" value="2">2</button>
                    </form>
                </th>
            </tr>
        </table>
        <table>
            <tr>
                <th><label for="y-textinput"></label>Y: &nbsp;</th>
                <th>
                    <input id="y-textinput" type="number" name="y" required step="any"/>
                </th>

            </tr>
        </table>
        <table>
            <tr>
                <th> R: &nbsp;</th>
                <th><label class="rbox-label" for="rbox-label1"></label>
                    <input class="r-radio" id="rbox-label1" type="radio" required name="r" value="1">1
                </th>
                <th><label class="rbox-label" for="rbox-label2"></label>
                    <input class="r-radio" id="rbox-label2" type="radio" required name="r" value="2">2
                </th>
                <th><label class="rbox-label" for="rbox-label3"></label>
                    <input class="r-radio" id="rbox-label3" type="radio" required name="r" value="3">3
                </th>
                <th><label class="rbox-label" for="rbox-label4"></label>
                    <input class="r-radio" id="rbox-label4" type="radio" required name="r" value="4">4
                </th>
                <th><label class="rbox-label" for="rbox-label5"></label>
                    <input class="r-radio" id="rbox-label5" type="radio" required name="r" value="5">5
                </th>
            </tr>
        </table>
        <table>
            <tr>
                <th>Ввод параметров: &nbsp;</th>
                <th>
                    <!--                <form id="auth" action="contact.php" method="GET">-->
                    <input class="button" type="submit" value="Submit">
                    <!--                </form>-->
                </th>
            </tr>
            <tr>
                <th>Сброс параметров: &nbsp;</th>
                <th>
                    <input class="button" type="reset" value="Reset">
                </th>
            </tr>
        </table>
    </form>
</div>

    <b>Hello, <%= name %>
    </b>
    <script type="text/javascript" src="ButtonX.js"></script>
<%--    <script type="text/javascript" src="ChartDrow.js"></script>--%>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="newChart.js"></script>
<%--<script type="text/javascript">--%>
<%--$(document).ready(drawGraph())--%>
<%--</script>--%>
</body>
</html>