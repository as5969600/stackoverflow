<%-- 
    Document   : new
    Created on : Oct 9, 2019, 2:47:06 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script>
            function myFunction() {
                    var x = document.getElementById("myDIV");
                   
                    if (x.style.display === "none") {
                      x.style.display = "block";
                    } else {
                      x.style.display = "none";
                    }
            }
        </script>
    </head>
    <body>
        <button onclick="myFunction()">Click Me</button>

        <div id="myDIV" style="display:none">
          This is my DIV element.
        </div>
    </body>
</html>