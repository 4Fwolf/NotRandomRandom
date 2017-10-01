<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="NotRandomRandom.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Rand4U</title>
    <style>
        .nav-tabs>li>a {
            color: white;
        }
    </style>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="Scripts/jquery-3.1.1.min.js"></script>
    <script src="Scripts/jquery.classyloader.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body style="margin: 0px;">
    <img src="img/background.jpg" style="position:absolute; width: 100%; height: 100%; z-index: -5; opacity: 0.3;" />
    <div id="cont" class="myDiv">
    <div class="myDiv" style="width: 100%; background: #161616; height: 50px; margin-top: 0px;">
        <div class="myDiv" style="display: inline-block; width: 400px;">
            <ul class="nav nav-tabs" style="width: 400px; border: none !important; padding-top: 8px; margin-left: 10px;">
                <li class="active"><a data-toggle="tab" href="#menu1">Random by comments</a></li>
                <li><a data-toggle="tab" href="#menu2">Random by names</a></li>
            </ul>
        </div>
        <div class="myDiv" style="color: white; margin-top: 10px; font-size: 20px; font-weight: bold; width: 200px; text-align: center; display: inline-block; float: right;">rand4u.somee.com</div>
    </div>


    <input type="text" id="hiddenInp" value="0" style="display: none;" runat="server" />

    <!--<form runat="server">-->
    <div class="myDiv tab-content">
  <div id="menu1" class="myDiv tab-pane fade in active">
    
  

    <div id="Div3" runat="server" style="text-align: center; width: 100%; margin: 30px 0px;" class="myDiv">
        <h3>Please enter post URL:</h3>
        <input id="postUrl" runat="server" style="width: 60%;" type="text" placeholder="https://www.instagram.com/p/BYfgtfhPfr/?taken-by=....." />
    </div>
    <div id="testDiv" runat="server" style="text-align: center; width: 100%; align-items: center;" class="myDiv">
        <div id="Div1" runat="server" style="text-align: center; width: 49%; display: inline-block;" class="myDiv">
            <div style="display: inline-block;" class="myDiv">
                <canvas class="loader"></canvas>
            </div>
            <br />
            <div style="display: inline-block;" class="myDiv" runat="server">
                <h1 id="Name">[Winner name]</h1>
                <a id="profLink" href="https://www.instagram.com/nevmyvach/" style="display:none; margin: 10px 0; font-size: 20px;">See profile</a>
                <input type="button" id="startBtn" value="Start" runat="server" />
                <input type="button" id="resetBtn" value="Reset" />
            </div>
        </div>
    </div>



      </div>
  <div id="menu2" class="myDiv tab-pane fade">
    

      <div id="Div21" runat="server" style="text-align: center; width: 100%; margin: 30px 0px;" class="myDiv">
        <h3>Please enter at least 3 names:</h3>
        <input id="postUrl1" runat="server" style="width: 60%;" type="text" placeholder="@name1, @name2, @name3, ....." />
    </div>
    <div id="testDiv1" runat="server" style="text-align: center; width: 100%; align-items: center;" class="myDiv">
        <div id="Div11" runat="server" style="text-align: center; width: 49%; display: inline-block;" class="myDiv">
            <div style="display: inline-block;" class="myDiv">
                <canvas class="loader1"></canvas>
            </div>
            <br />
            <div style="display: inline-block;" class="myDiv" runat="server">
                <h1 id="Name1">[Winner name]</h1>
                <a id="profLink1" href="https://www.instagram.com/slyperr/" style="display:none; margin: 10px 0; font-size: 20px;">See profile</a>
                <input type="button" id="startBtn1" value="Start" runat="server" />
                <input type="button" id="resetBtn1" value="Reset" />
            </div>
        </div>
    </div>


  </div>
</div>
    <!--</form>-->

    <script>
        $(document).ready(function () {
            $(document).find("center").remove();
 
            $("#resetBtn").prop("disabled", true);
            $("#resetBtn1").prop("disabled", true);

            var divs = $(document).find("div");
            for (i = 0; i < divs.length; ++i) {
                if (!divs[i].className.includes("myDiv"))
                    divs[i].remove();
            }

            $('.loader').ClassyLoader({
                width: 200, // width of the loader in pixels
                height: 200, // height of the loader in pixels
                animate: false, // whether to animate the loader or not
                displayOnLoad: true,
                percentage: 1, // percent of the value, between 0 and 100
                speed: 1, // miliseconds between animation cycles, lower value is faster
                roundedLine: false, // whether the line is rounded, in pixels
                showRemaining: true, // how the remaining percentage (100% - percentage)
                fontFamily: 'Helvetica', // name of the font for the percentage
                fontSize: '50px', // size of the percentage font, in pixels
                showText: true, // whether to display the percentage text
                diameter: 80, // diameter of the circle, in pixels
                fontColor: 'rgba(25, 25, 25, 0.6)', // color of the font in the center of the loader, any CSS color would work, hex, rgb, rgba, hsl, hsla
                lineColor: 'rgba(55, 55, 55, 1)', // line color of the main circle
                remainingLineColor: 'rgba(55, 55, 55, 0.4)', // line color of the remaining percentage (if showRemaining is true)
                lineWidth: 5 // the width of the circle line in pixels
            });

            $('.loader1').ClassyLoader({
                width: 200, // width of the loader in pixels
                height: 200, // height of the loader in pixels
                animate: false, // whether to animate the loader or not
                displayOnLoad: true,
                percentage: 1, // percent of the value, between 0 and 100
                speed: 1, // miliseconds between animation cycles, lower value is faster
                roundedLine: false, // whether the line is rounded, in pixels
                showRemaining: true, // how the remaining percentage (100% - percentage)
                fontFamily: 'Helvetica', // name of the font for the percentage
                fontSize: '50px', // size of the percentage font, in pixels
                showText: true, // whether to display the percentage text
                diameter: 80, // diameter of the circle, in pixels
                fontColor: 'rgba(25, 25, 25, 0.6)', // color of the font in the center of the loader, any CSS color would work, hex, rgb, rgba, hsl, hsla
                lineColor: 'rgba(55, 55, 55, 1)', // line color of the main circle
                remainingLineColor: 'rgba(55, 55, 55, 0.4)', // line color of the remaining percentage (if showRemaining is true)
                lineWidth: 5 // the width of the circle line in pixels
            });
            

            //$('.loader').ClassyLoader().Show();

            $("#postUrl").on('change', function (e) {
                $("#resetBtn").trigger('click');
            });

            $("#postUrl1").on('change', function (e) {
                $("#resetBtn1").trigger('click');
            });

            $("#startBtn").on('click', function (e) {
                if ($("#postUrl").val().length < 10) {
                    alert("Please enter URL!");
                    return;
                }

                for (i = 1; i <= 25; ++i) {
                    $('.loader').ClassyLoader().draw(i*4);
                }

                setTimeout(function () {

                    var names = ["@nevmyvach"];

                    var nmb = 0;//Math.floor(Math.random() * names.length);

                    $("#Name").text(names[nmb]);
                    $("#startBtn").prop("disabled", true);
                    $("#resetBtn").prop("disabled", false);
                    $("#profLink").css("display", "block");
                }, 3000);
            });
            $("#startBtn1").on('click', function (e) {
                if ($("#postUrl1").val().length < 18) {
                    alert("Please enter URL!");
                    return;
                }

                for (i = 1; i <= 25; ++i) {
                    $('.loader1').ClassyLoader().draw(i * 4);
                }

                setTimeout(function () {

                    var names = ["@slyperr"];

                    var nmb = Math.floor(Math.random() * names.length);

                    $("#Name1").text(names[nmb]);
                    $("#startBtn1").prop("disabled", true);
                    $("#resetBtn1").prop("disabled", false);
                    $("#profLink1").css("display", "block");
                }, 3000);
            });

            $("#resetBtn").on('click', function (e) {
                $('.loader').ClassyLoader().setPercent(0);

                $("#Name").text("[Winner name]");

                $("#startBtn").prop("disabled", false);
                $("#resetBtn").prop("disabled", true);
                $("#profLink").css("display", "none");
            });
            $("#resetBtn1").on('click', function (e) {
                $('.loader1').ClassyLoader().setPercent(0);

                $("#Name1").text("[Winner name]");

                $("#startBtn1").prop("disabled", false);
                $("#resetBtn1").prop("disabled", true);
                $("#profLink1").css("display", "none");
            });

            $('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
                var target = $(e.target).attr("href") // activated tab
            
                if (target == "#menu2" && $("#hiddenInp").val() == 0) {
                    $("#hiddenInp").val("1");
                    $("#resetBtn1").trigger('click');
                }
            });
        });
</script>

        </div>
</body>
</html>
