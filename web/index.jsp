<%--
  Created by IntelliJ IDEA.
  User: nitishsingla
  Date: 9/22/17
  Time: 2:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html><!-- Styles -->
<style>
  body { background-color: #30303d; color: #fff; }
  #chartdiv {
    width: 100%;
    height: 500px;
  }
</style>
  <head>
    <script type = "text/javascript" src="https://code.jquery.com/jquery-2.2.4.js"></script>
    <script type="text/javascript" src = "app.js"></script>
    <!-- Resources -->
    <script src="https://www.amcharts.com/lib/3/ammap.js"></script>
    <script src="https://www.amcharts.com/lib/3/maps/js/continentsLow.js"></script>
    <script src="https://www.amcharts.com/lib/3/plugins/export/export.min.js"></script>
    <link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
    <script src="https://www.amcharts.com/lib/3/themes/light.js"></script>
<script type="text/javascript">
  initInstagramFeed = (function(){
    var igID = '1351655198'; //nitish__singla
    var igClientID = 'f1ca5505e4514c9e837921a74602953c';
    var igClientSecret = 'dadfc80bec054ee4974bdcae8e934dbc';
    var count = 33; // weird max image?
    var accessToken = '1351655198.f1ca550.a2cbceb5fecb483090ea6d005f094234';
    $.ajax({
      type: "GET",
      dataType: "jsonp",
      cache: false,
      url: "https://api.instagram.com/v1/users/" + igID + "/media/recent/?access_token=" + accessToken ,
      success: function(data) {
        for (var i = 0; i < count; i++) {
          $(".instagram-wrapper").append("<a target='_blank' href='" + data.data[i].link +"'><img src='" + data.data[i].images.thumbnail.url +"' /></a>");
        }
        console.log(data);
      },
      error: function(){
        console.log('Something went wrong', data);
      }
    });
  }());

</script>
    <!-- Chart code -->
    <script>
      var map = AmCharts.makeChart( "chartdiv", {

        "type": "map",
        "theme": "light",

        "dragMap": false,
        "projection": "eckert3",

        "areasSettings": {
          "autoZoom": false,
          "rollOverOutlineColor": "#000000",
          "selectedColor": "#000000",
          "outlineAlpha": 1,
          "outlineColor": "#FFFFFF",
          "outlineThickness": 1,
          "color": "#000000"
        },

        "dataProvider": {
          "map": "continentsLow",

          "areas": [ {
            "id": "africa",
            "title": "Africa",
            "pattern": {
              "url": "https://www.amcharts.com/lib/3/patterns/black/pattern1.png",
              "width": 4,
              "height": 4
            }
          }, {
            "id": "asia",
            "title": "Asia",
            "pattern": {
              "url": "https://www.amcharts.com/lib/3/patterns/black/pattern2.png",
              "width": 4,
              "height": 4
            }
          }, {
            "id": "australia",
            "title": "Australia",
            "pattern": {
              "url": "https://www.amcharts.com/lib/3/patterns/black/pattern3.png",
              "width": 4,
              "height": 4,
              "color": "#BBBB00"
            }
          }, {
            "id": "europe",
            "title": "Europe",
            "pattern": {
              "url": "https://www.amcharts.com/lib/3/patterns/black/pattern4.png",
              "width": 4,
              "height": 4
            }
          }, {
            "id": "north_america",
            "title": "North America",
            "pattern": {
              "url": "https://www.amcharts.com/lib/3/patterns/black/pattern5.png",
              "width": 4,
              "height": 4
            }
          }, {
            "id": "south_america",
            "title": "South America",
            "pattern": {
              "url": "https://www.amcharts.com/lib/3/patterns/black/pattern6.png",
              "width": 4,
              "height": 4
            }
          } ]
        },
        "zoomControl": {
          "panControlEnabled": false,
          "zoomControlEnabled": false,
          "homeButtonEnabled": false
        },
        "export": {
          "enabled": true
        }

      } );
    </script>
  </head>
  <body>

  <link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />

  <div id="chartdiv"></div>
  <div class="instagram-wrapper"></div>
  </body>
</html>
