<!DOCTYPE html>
<html lang="en">
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <script type = text/javascript>
        var jsonObj = {}; var criterionArray = [];
        var gaia, access_token;

        function Plugin( gaia, token ) {
            this.gaia = gaia;
            this.access_token =token;
        }

        Plugin.prototype = {
            init: function () {
                console.log("access_token123" + this.access_token);
            },


            addToArray: function (type,criteria) {
                var criterio = {};
                criterio.criterion = criteria;
                criterio.type = type;
                criterionArray.push(criterio);
                console.log("criterionArray" + criterionArray)
            },

            addFeatures : function () {
                var features ={};
                features.must= criterionArray;
                return features;
            },

            addCriteria: function () {
                var geo= {};
                geo.gaiaId=this.gaia;

                var criterias ={};
                criterias.features= this.addFeatures();
                criterias.geo = geo;
                return criterias;
            },

            getData: function () {
                jsonObj.criteria =  this.addCriteria();
                return jsonObj;
            },

            populateData :  function() {
                this.addToArray("google_vision:park", "LABEL");
                return JSON.stringify(this.getData())
            }

        };

        function getData(jsonData, authorizationToken, url) {
            return $.ajax({
                type : "POST",
                url : url,
                data : jsonData,
                beforeSend: function(request) {
                    request.setRequestHeader("key", authorizationToken);
                },

                dataType: "jsonp"
            });
        }


        var plug = new Plugin('Bob', 'Builder');

        plug.init();

        var jsonData = plug.populateData();
        console.log("jsonData" + jsonData);

        $(document).ready(function() {
            getData(jsonData, "4f8ce657-ee06-4527-a8d8-4b207f8f0d62" ,"https://terminal2.expedia.com/x/media/search/criteria?pageSize=10&pageIndex=1").then(function(result) {
                alert("result" + result);
            })
        });
    </script>
</head>
<body>

</body>
</html>



<%--
&lt;%&ndash;
  Created by IntelliJ IDEA.
  User: nitishsingla
  Date: 9/22/17
  Time: 2:34 PM
  To change this template use File | Settings | File Templates.
&ndash;%&gt;
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html><!-- Styles -->
<!-- Styles -->

<style>
    #map {
        height: 500px;
        width: 50%;
    }
</style>

<style>
    body, html {
        padding: 0;
        margin: 0;
        text-align: center;
    }

    /* Styles the thumbnail */

    a.lightbox img {
        height: 150px;
        border: 3px solid white;
        box-shadow: 0px 0px 8px rgba(0,0,0,.3);
        margin: 94px 20px 20px 20px;
    }

    /* Styles the lightbox, removes it from sight and adds the fade-in transition */

    .lightbox-target {
        position: fixed;
        top: -100%;
        width: 100%;
        background: rgba(0,0,0,.7);
        width: 100%;
        opacity: 0;
        -webkit-transition: opacity .5s ease-in-out;
        -moz-transition: opacity .5s ease-in-out;
        -o-transition: opacity .5s ease-in-out;
        transition: opacity .5s ease-in-out;
        overflow: hidden;
    }

    /* Styles the lightbox image, centers it vertically and horizontally, adds the zoom-in transition and makes it responsive using a combination of margin and absolute positioning */

    .lightbox-target img {
        margin: auto;
        position: absolute;
        top: 0;
        left:0;
        right:0;
        bottom: 0;
        max-height: 0%;
        max-width: 0%;
        border: 3px solid white;
        box-shadow: 0px 0px 8px rgba(0,0,0,.3);
        box-sizing: border-box;
        -webkit-transition: .5s ease-in-out;
        -moz-transition: .5s ease-in-out;
        -o-transition: .5s ease-in-out;
        transition: .5s ease-in-out;
    }

    /* Styles the close link, adds the slide down transition */

    a.lightbox-close {
        display: block;
        width:50px;
        height:50px;
        box-sizing: border-box;
        background: white;
        color: black;
        text-decoration: none;
        position: absolute;
        top: -80px;
        right: 0;
        -webkit-transition: .5s ease-in-out;
        -moz-transition: .5s ease-in-out;
        -o-transition: .5s ease-in-out;
        transition: .5s ease-in-out;
    }

    a.link
    {
        color: blue;


    }

    /* Provides part of the "X" to eliminate an image from the close link */

    a.lightbox-close:before {
        content: "";
        display: block;
        height: 30px;
        width: 1px;
        background: black;
        position: absolute;
        left: 26px;
        top:10px;
        -webkit-transform:rotate(45deg);
        -moz-transform:rotate(45deg);
        -o-transform:rotate(45deg);
        transform:rotate(45deg);
    }

    /* Provides part of the "X" to eliminate an image from the close link */

    a.lightbox-close:after {
        content: "";
        display: block;
        height: 30px;
        width: 1px;
        background: black;
        position: absolute;
        left: 26px;
        top:10px;
        -webkit-transform:rotate(-45deg);
        -moz-transform:rotate(-45deg);
        -o-transform:rotate(-45deg);
        transform:rotate(-45deg);
    }

    /* Uses the :target pseudo-class to perform the animations upon clicking the .lightbox-target anchor */

    .lightbox-target:target {
        opacity: 1;
        top: 0;
        bottom: 0;
    }

    .lightbox-target:target img {
        max-height: 100%;
        max-width: 100%;
    }

    .lightbox-target:target a.lightbox-close {
        top: 0px;
    }
</style>
<head>
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.js"></script>
    <script type="text/javascript" src="app.js"></script>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <script type="text/javascript">
        initInstagramFeed = (function () {
            var igID = '1351655198'; //nitish__singla
            var igClientID = 'f1ca5505e4514c9e837921a74602953c';
            var igClientSecret = 'dadfc80bec054ee4974bdcae8e934dbc';
            var count = 33; // weird max image?
            var accessToken = '1351655198.f1ca550.a2cbceb5fecb483090ea6d005f094234';
            $.ajax({
                type: "GET",
                dataType: "jsonp",
                cache: false,
                //https://api.instagram.com/v1/tags/search?q=snowy&access_token=ACCESS-TOKEN
                url: "https://api.instagram.com/v1/users/" + igID + "/media/recent/?access_token=" + accessToken,
                success: function (data) {
                    for (var i = 0; i < count; i++) {
                        $(".instagram-wrapper").append("<a target='_blank' href='" + data.data[i].link + "'><img src='" + data.data[i].images.thumbnail.url + "' /></a>");
                    }
                    console.log(data);
                },
                error: function () {
                    console.log('Something went wrong', data);
                }
            });
        }());

    </script>

    <script>
        function initMap() {
            var broadway = {
                info: '<strong>Chipotle on Broadway</strong><br>\
					5224 N Broadway St<br> Chicago, IL 60640<br>\
					<a href="https://goo.gl/maps/jKNEDz4SyyH2">Get Directions</a>',
                lat: 41.976816,
                long: -87.659916,
                title: "broadway"
            };

            var belmont = {
                info: '<strong>Chipotle on Belmont</strong><br>\
					1025 W Belmont Ave<br> Chicago, IL 60657<br>\
					<a href="https://goo.gl/maps/PHfsWTvgKa92">Get Directions</a>',
                lat: 41.939670,
                long: -87.655167,
                title: "belmont"
            };

            var sheridan = {
                info: '<strong>Chipotle on Sheridan</strong><br>\r\
					6600 N Sheridan Rd<br> Chicago, IL 60626<br>\
					<a href="https://goo.gl/maps/QGUrqZPsYp92">Get Directions</a>',
                lat: 42.002707,
                long: -87.661236,
                title: "sheridan"
            };

            var locations = [
                [broadway.info, broadway.lat, broadway.long, broadway.title, "http://betraveler.in/wp-content/uploads/2017/07/Agra-Fort.jpg"],
                [belmont.info, belmont.lat, belmont.long, belmont.title, "http://betraveler.in/wp-content/uploads/2017/07/Agra-Fort.jpg"],
                [sheridan.info, sheridan.lat, sheridan.long, sheridan.title, "http://betraveler.in/wp-content/uploads/2017/07/Agra-Fort.jpg"]
            ];
            var london = {lat: 51.5074, lng: 0.1278};
            var map = new google.maps.Map(document.getElementById('map'), {
                zoom: 1,
                center: london
            });
            var marker = new google.maps.Marker({
                position: london,
                map: map,
                title: "London"
            });

            var infowindow = new google.maps.InfoWindow({});

            var i;

            for (i = 0; i < locations.length; i++) {
                marker = new google.maps.Marker({
                    position: new google.maps.LatLng(locations[i][1], locations[i][2]),
                    map: map,
                    title: locations[i][3]
                });

                google.maps.event.addListener(marker, 'click', (function (marker, i) {
                    return function () {

                        var html = '<h4>' + locations[i][0] + '</h4>';
                        html += '<img src="' + locations[i][4] + '" />';

                        infowindow.setContent(html);
                        infowindow.open(map, marker);
                    }
                })(marker, i));
            }
        }
    </script>
    <script type="text/javascript">
        $("#search_form").submit(function (e) {

            $("#result").html("");

            e.preventDefault();

            var searchQuery = $("#search_txt").val();
            //searchQuery =

            if (!searchQuery) {
                //code
                searchQuery = "hello";
            }


            $.ajax({
                type: "GET",
                dataType: "jsonp",
                url: "https://www.googleapis.com/customsearch/v1",
                data: {
                    key: "AIzaSyCzb6SI_JRrp6xLLYV617Ary6n59h36ros",
                    cx: "004286675445984025592:ypgpkv9fjd4",
                    filter: "1",
                    searchType: "image",
                    //imgSize: "small",
                    q: searchQuery
                }
            }).done(function (data) {


                //alert("Success");
                console.log(data);
                var googleResults = data.items;

                $(".result li").remove();
                //$('#result').isotope('destroy');


                $.each(googleResults, function (i, o) {

                    var imageURL = o.image.thumbnailLink;

                    if (i % 2 != 0) {

                        $("#result").append("<div class='result_item'><img src='" + imageURL + "' /></div>");

                    } else {

                        $("#result").append("<div class='result_item'><img src='" + imageURL + "' /></div>");

                    }


                })


            });


            function make_base_auth(user, password) {
                var tok = user + ':' + password;
                var hash = btoa(tok);
                return "Basic " + hash;
            }

            $.ajax({
                type: "GET",
                dataType: "json",
                url: "https://api.datamarket.azure.com/Bing/Search/v1/Image",
                beforeSend: function (xhr) {
                    xhr.setRequestHeader("Authorization", make_base_auth("", "GfsqxTjDPIKNuXQZDeqj2z4uaaHNx9X0QhKYBn4Xgeg="));
                },
                data: {
                    Query: "'" + searchQuery + "'",
                }
            }).done(function (data) {


                //alert("Success");
                console.log(data);
                var bingResults = data.d.results;

                $(".result li").remove();
                //$('#result').isotope('destroy');


                $.each(bingResults, function (i, o) {

                    var imageURL = o.Thumbnail.MediaUrl;

                    if (i % 2 != 0) {

                        $("#result").append("<div class='result_item'><img src='" + imageURL + "' /></div>");

                    } else {

                        $("#result").append("<div class='result_item'><img src='" + imageURL + "' /></div>");

                    }


                })
            });
        })
    </script>
    <script type="text/javascript">
        function hideDiv() {
            document.getElementById("dog1").style.display = "none";
        }
    </script>
</head>
<body>


<div id="chartdiv"></div>
<div class="instagram-wrapper"></div>
<h3>My Google Maps Demo</h3>
<div id="map"></div>


<script async defer
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBK_4hMqe1qQgYlYZhHlpgAHHXVA_wlEVI&callback=initMap">
</script>
<div id="search">
    <form id="search_form">
        <input type="text" id="search_txt" placeholder="Keyword"/>
        <input type="submit" value="Search">
    </form>
</div>
<div id="result"></div>
&lt;%&ndash;
<div class="container">
    <h2>Carousel Example</h2>
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div id="image1" class="carousel-inner">
            <div class="item active">
                <img src="chicago.jpg" alt="Chicago" style="width:100%;">
            </div>

            <div class="item" id="image2">
                <img src="chicago.jpg" alt="Chicago" style="width:100%;">
            </div>

            <div class="item" id="image3">
                <img src="chicago.jpg" alt="Chicago" style="width:100%;">
            </div>

        </div>
        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</div>&ndash;%&gt;

<div onclick = "hideDiv()">
    <a id = "dog1" class="lightbox" href="#dog">
        DOG
    </a>
</div>
<div class="lightbox-target" id="dog">
    <img src="http://i.huffpost.com/gen/749263/original.jpg"/>
    <a class="lightbox-close" href="#"></a>
    <div class="lightbox-close">
        <a class="link" href="https://www.google.com">LEARN MORE</a>
        </br>
        <a class="link" href="https://www.google.co.in">SEE PRICES</a>
    </div>
</div>
</body>
</html>
--%>
