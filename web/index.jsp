<%-- 
    Document   : index
    Created on : 03-abr-2014, 9:09:29
    Author     : Alumne
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--
        1- jQuery
        2- json
        3- characterClass
        4- movementClass
        5- generalFunctions
        6- index.js
        -->
        <script type="text/javascript" language="javascript" src="jQuery/jQuery.js"></script>
        <script type="text/javascript" language="javascript" src="json/json.js"></script>
        <script type="text/javascript" language="javascript" src="js/model/characterClass.js"></script>
        <script type="text/javascript" language="javascript" src="js/model/movementClass.js"></script>
        <script type="text/javascript" language="javascript" src="js/control/generalFunctions.js"></script>
        <script type="text/javascript" language="javascript" src="js/control/index.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <!--<input type="button" id="buttonDB" value="Conect to Database" onclick="conectDB();"/>-->
        <div id="content">
            <div id="movementsSelect"><div id="buttonToCompare"></div>
            </div>
            <div id="resultPunish"></div>
        </div>
    </body>
</html>
