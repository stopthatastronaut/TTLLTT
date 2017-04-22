<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Things that lasted longer than Tony Abbott</title>
    <script src="https://code.jquery.com/jquery-1.11.3.min.js" type="text/javascript"></script>
    <script>
        
        var data; // global 


        function loadThing() {
            $("#thingDiv").replaceWith("<div id=\"thingDiv\"> " + data[Math.floor(Math.random() * (data.length))].thingThing + "</div>");
        }

        $(document).ready(
            function () {
                $.getJSON("/things.json", function (d) {
                    data = d; // load into global  
                    loadThing()
                }); }
            )

    </script>
    <style type="text/css">

        body {
            background-color: #333333;
            font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            font-size: medium;
            color: #eeeeee;
            margin: 0px; padding: 0px;
            text-align: center;
        }

        .header 
        {
          background-color:  #222222;
          font-size: xx-large;
          padding: 12px;
          border-bottom: #555555;
        }
        a 
        {
            color: #dddddd;

        }

        #thingDiv
        {
            font-style: italic;
            font-size: x-large;
            text-align: center;
            padding-top: 80px;
            padding-bottom: 100px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="header">Things That Lasted Longer Than Tony Abbott</div>
    <div id="thingDiv">   
            
    </div>
    
    <a id="reload" href="#" onclick="loadThing()">See another one!</a> - Suggest a thing by emailing <em>things [at] thingsthatlastedlongerthantony.com</em> - <a href="http://twitter.com/drunkenmadman">@drunkenmadman</a> did this - requires javascript


    <div>Tony's reign lasted from 18th September 2013 to 15th September 2015, a total of 727 days</div>
    </form>
</body>
</html>
