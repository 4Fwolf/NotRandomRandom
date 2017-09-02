<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="NotRandomRandom.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-3.1.1.min.js"></script>
    <script src="Scripts/jquery.classyloader.min.js"></script>
</head>
<body>
    <!--<form runat="server">-->
        <div id="Div3" runat="server" style="text-align: center; width: 100%; margin: 30px 0px; " class="myDiv">
            <h3>Please enter post URL:</h3>
            <input id="postUrl" runat="server" style="width: 60%;" type="text" />
                </div>
        <div id="testDiv" runat="server" style="text-align: center; width: 100%; /*display: flex;*/ align-items:center;" class="myDiv">
            <div id="Div1" runat="server" style="text-align: center; width: 49%;  display: inline-block;" class="myDiv">
                <div style="display: inline-block;" class="myDiv">
                    <canvas class="loader"></canvas>
                </div>
                <br />
                <div style="display: inline-block;" class="myDiv" runat="server">
                    <h1 id="Name">[Winner name]</h1>
                    <input type="button" id="startBtn" value="Start" runat="server" />
                    <input type="button" id="resetBtn" value="Reset" />
                </div>
            </div>
            <div id="Div2" runat="server" style="text-align: center; width: 49%; display: none;" class="myDiv">
                <table id="tablenames" runat="server" style="text-align: center; display: inline-block; min-width:250px; max-height:400px; overflow:auto;">
                    <thead>
                        <tr>
                            <th>Name</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>test</td>
                        </tr>
                        <tr>
                            <td>test</td>
                        </tr>
                        <tr>
                            <td>test</td>
                        </tr>
                        <tr>
                            <td>test</td>
                        </tr>
                        <tr>
                            <td>test</td>
                        </tr>
                        <tr>
                            <td>test</td>
                        </tr>
                        <tr>
                            <td>test</td>
                        </tr>
                        <tr>
                            <td>test</td>
                        </tr>
                        <tr>
                            <td>test</td>
                        </tr>
                        <tr>
                            <td>test</td>
                        </tr>
                        <tr>
                            <td>test</td>
                        </tr>
                        <tr>
                            <td>test</td>
                        </tr>
                        <tr>
                            <td>test</td>
                        </tr>
                        <tr>
                            <td>test</td>
                        </tr>
                        <tr>
                            <td>test</td>
                        </tr>
                        <tr>
                            <td>test</td>
                        </tr>
                        <tr>
                            <td>test</td>
                        </tr>
                        <tr>
                            <td>test</td>
                        </tr>
                        <tr>
                            <td>test</td>
                        </tr>
                        <tr>
                            <td>test</td>
                        </tr>
                        <tr>
                            <td>test</td>
                        </tr>
                        <tr>
                            <td>test</td>
                        </tr>
                        <tr>
                            <td>test</td>
                        </tr>
                        <tr>
                            <td>test</td>
                        </tr>
                        <tr>
                            <td>test</td>
                        </tr>
                        <tr>
                            <td>test</td>
                        </tr>
                        <tr>
                            <td>test</td>
                        </tr>
                        <tr>
                            <td>test</td>
                        </tr>
                        <tr>
                            <td>test</td>
                        </tr>
                        <tr>
                            <td>test</td>
                        </tr>
                        <tr>
                            <td>test</td>
                        </tr>
                        <tr>
                            <td>test</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    <!--</form>-->

    <script>
        $(document).ready(function () {
            $(document).find("center").remove();
            //$("#startBtn").prop("disabled", true);
            $("#resetBtn").prop("disabled", true);

            var divs = $(document).find("div");
            for(i = 0; i < divs.length; ++i) {
                if (divs[i].className != "myDiv")
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

            //$('.loader').ClassyLoader().Show();

            $("#postUrl").on('change', function (e) {
                $("#resetBtn").trigger('click');
                /*if (e.currentTarget.value.length > 0) {
                    $("#startBtn").prop("disabled", false);
                    $("#resetBtn").prop("disabled", true);
                }
                else {
                    $("#startBtn").prop("disabled", true);
                    $("#resetBtn").prop("disabled", true);
                }*/
            });

            $("#startBtn").on('click', function (e) {
                if ($("#postUrl").val().length < 10) {
                    alert("Please enter URL!");
                    return;
                }

                $('.loader').ClassyLoader().draw(100);

                setTimeout(function () {

                    var names = ["@xpshv", "@noctivagant", "@kadatkin", "@shumel", "@krv.ch"];

                    var nmb = Math.floor(Math.random() * 5);

                    $("#Name").text(names[nmb]);
                    $("#startBtn").prop("disabled", true);
                    $("#resetBtn").prop("disabled", false);
                }, 720);
            });

            $("#resetBtn").on('click', function (e) {
                $('.loader').ClassyLoader().setPercent(-1);

                $("#Name").text("[Winner name]");

                $("#startBtn").prop("disabled", false);
                $("#resetBtn").prop("disabled", true);
            });
        });
</script>
</body>
</html>
