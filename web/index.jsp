<%--
  Created by IntelliJ IDEA.
  User: nitishsingla
  Date: 9/22/17
  Time: 2:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html><!-- Styles -->
<!-- Styles -->

<style>
    #map {
        height: 700px;
        width: 70%;
    }
</style>
<head>


    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        * {
            box-sizing: border-box
        }

        body {
            font-family: Verdana, sans-serif;
        }

        .mySlides {
            display: none
        }

        /* Slideshow container */
        .slideshow-container {
            max-width: 1000px;
            position: relative;
            margin: auto;
        }

        /* Caption text */
        .text {
            color: #f2f2f2;
            font-size: 15px;
            padding: 8px 12px;
            position: absolute;
            bottom: 8px;
            width: 100%;
            text-align: center;
        }

        /* Number text (1/3 etc) */
        .numbertext {
            color: #f2f2f2;
            font-size: 12px;
            padding: 8px 12px;
            position: absolute;
            top: 0;
        }

        /* The dots/bullets/indicators */
        .dot {
            height: 13px;
            width: 13px;
            margin: 0 2px;
            background-color: #bbb;
            border-radius: 50%;
            display: inline-block;
            transition: background-color 0.6s ease;
        }

        .active {
            background-color: #717171;
        }

        /* Fading animation */
        .fade {
            -webkit-animation-name: fade;
            -webkit-animation-duration: 1.5s;
            animation-name: fade;
            animation-duration: 1.5s;
        }

        @-webkit-keyframes fade {
            from {
                opacity: .4
            }
            to {
                opacity: 1
            }
        }

        @keyframes fade {
            from {
                opacity: .4
            }
            to {
                opacity: 1
            }
        }

        /* On smaller screens, decrease text size */
        @media only screen and (max-width: 300px) {
            .text {
                font-size: 11px
            }
        }
    </style>
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.js"></script>

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

        var response = {
            "requestId": null,
            "pageSize": 10,
            "pageIndex": 1,
            "totalMedia": 110,
            "images": [
                {
                    "id": "43402",
                    "indexId": "TourismMedia-26433",
                    "externalId": "26433",
                    "fileUrl": "https://a.travel-assets.com/findyours-php/viewfinder/images/res70/26000/26433-Millennium-Park.jpg",
                    "source": "TourismMedia",
                    "poiGaiaId": 6069201,
                    "latitude": 41.882105,
                    "longitude": -87.624179,
                    "score": 4.739197254180908,
                    "labels": {
                        "TourismMedia": [
                            "Modern Architecture",
                            "Gardens & Parks"
                        ],
                        "google_vision": [
                            "residential area",
                            "metropolis",
                            "city",
                            "condominium",
                            "skyscraper",
                            "downtown",
                            "skyline",
                            "tower block",
                            "plaza",
                            "human settlement",
                            "neighbourhood",
                            "town square",
                            "metropolitan area",
                            "cityscape",
                            "landmark",
                            "park",
                            "architecture",
                            "tower"
                        ]
                    },
                    "ranks": {
                        "default": 20,
                        "TourismMedia": 20
                    },
                    "publishable": {
                        "default": true,
                        "TourismMedia": true
                    },
                    "metadata": {
                        "TourismMedia": {
                            "alt_text": "Millennium Park showing a high rise building, a city and modern architecture"
                        }
                    },
                    "mediaHubResourceLink": "https://cs-mh-dataimporter.us-west-2.prod.expedia.com/images/TourismMedia/26433"
                },
                {
                    "id": "925832",
                    "indexId": "Trover-1D3eC",
                    "externalId": "1D3eC",
                    "fileUrl": "https://thumbnails.expedia.com/iW9JrOVAthW8gZAHVgPQv2QD0OY=/cs-mh-bucket.s3-website-us-west-2.amazonaws.com/urls/xjoq29gdp.jpg",
                    "source": "Trover",
                    "latitude": 42.14543,
                    "longitude": -87.78957,
                    "width": 2448,
                    "height": 1836,
                    "aspectRatio": 1.3333334,
                    "score": 4.764595985412598,
                    "labels": {
                        "Trover": [
                            "outdoor"
                        ],
                        "google_vision": [
                            "blossom",
                            "woody plant",
                            "nature",
                            "woodland",
                            "tree",
                            "flora",
                            "botany",
                            "rural area",
                            "leaf",
                            "branch",
                            "flower",
                            "plant",
                            "season",
                            "garden",
                            "autumn",
                            "river",
                            "landscape",
                            "park"
                        ]
                    },
                    "ranks": {
                        "default": 19,
                        "Trover": 19
                    },
                    "publishable": {
                        "default": true,
                        "Trover": true
                    },
                    "metadata": {
                        "Trover": {
                            "discovery_description": "Spring is here! Time for travel, pictures and new adventures!!",
                            "discovery_account_handle": "2824502390",
                            "discovery_venue": "English Walled Garden",
                            "discovery_account_name": "Tedi Zlat",
                            "discovery_account_link": "http://www.trover.com/u/2824502390",
                            "discovery_thank_count": "19",
                            "discovery_url": "http://www.trover.com/d/1D3eC-english-walled-garden-cook-county-illinois"
                        }
                    },
                    "authors": [
                        {
                            "profileUrl": "http://www.trover.com/u/2824502390",
                            "username": "2824502390",
                            "firstName": "Tedi",
                            "lastName": "Zlat"
                        }
                    ],
                    "mediaHubResourceLink": "https://cs-mh-dataimporter.us-west-2.prod.expedia.com/images/Trover/1D3eC"
                },
                {
                    "id": "901114",
                    "indexId": "Trover-15dgn",
                    "externalId": "15dgn",
                    "fileUrl": "https://thumbnails.expedia.com/6Pq9ao8tMvQ9l_kOEL02z21KTck=/cs-mh-bucket.s3-website-us-west-2.amazonaws.com/urls/5ab74t49z.jpg",
                    "source": "Trover",
                    "poiGaiaId": 6064029,
                    "latitude": 42.15234,
                    "longitude": -87.78631,
                    "width": 1080,
                    "height": 1440,
                    "aspectRatio": 0.75,
                    "score": 4.764595985412598,
                    "labels": {
                        "Trover": [
                            "outdoor",
                            "entertainment"
                        ],
                        "google_vision": [
                            "pond",
                            "woodland",
                            "tree",
                            "botany",
                            "vegetation",
                            "water",
                            "flower",
                            "body of water",
                            "stream",
                            "waterfall",
                            "plant",
                            "watercourse",
                            "garden",
                            "rainforest",
                            "jungle",
                            "river",
                            "water feature",
                            "park"
                        ]
                    },
                    "ranks": {
                        "default": 17,
                        "Trover": 17
                    },
                    "publishable": {
                        "default": true,
                        "Trover": true
                    },
                    "metadata": {
                        "Trover": {
                            "discovery_description": "One of many, many scenic vistas to be found while strolling through the Chicago Botanic Gardens. \n\nLooking for an escape from the usual tourists activities while visiting Chicago? Located about 30 miles north of the City, the Gardens are absolutely worth the effort to get there.\n\nThe Chicago Botanic Garden opened a little more than 40 years ago. Last year, more than one million people visited the Garden's 26 gardens and four natural areas, uniquely situated on 385 acres on and around nine islands, with six miles of lake shoreline. The Garden also has a renowned Bonsai Collection.\n\n#colorful",
                            "discovery_account_handle": "2804107987",
                            "discovery_venue": "Chicago Botanic Garden",
                            "discovery_account_name": "throwingsofas",
                            "discovery_account_link": "http://www.trover.com/u/throwingsofas",
                            "discovery_thank_count": "17",
                            "discovery_url": "http://www.trover.com/d/15dgn-chicago-botanic-garden-highland-park-illinois"
                        }
                    },
                    "authors": [
                        {
                            "profileUrl": "http://www.trover.com/u/throwingsofas",
                            "username": "2804107987",
                            "firstName": "throwingsofas"
                        }
                    ],
                    "mediaHubResourceLink": "https://cs-mh-dataimporter.us-west-2.prod.expedia.com/images/Trover/15dgn"
                },
                {
                    "id": "901160",
                    "indexId": "Trover-15doT",
                    "externalId": "15doT",
                    "fileUrl": "https://thumbnails.expedia.com/RrD4MgxJoP55VToAt3up4VFL0jw=/cs-mh-bucket.s3-website-us-west-2.amazonaws.com/urls/ihzlb76yo.jpg",
                    "source": "Trover",
                    "poiGaiaId": 6064029,
                    "latitude": 42.15234,
                    "longitude": -87.78631,
                    "width": 1042,
                    "height": 1042,
                    "aspectRatio": 1,
                    "score": 4.779054164886475,
                    "labels": {
                        "Trover": [
                            "outdoor",
                            "entertainment"
                        ],
                        "google_vision": [
                            "pond",
                            "green",
                            "habitat",
                            "reflection",
                            "woody plant",
                            "nature",
                            "wetland",
                            "woodland",
                            "natural environment",
                            "tree",
                            "botany",
                            "swamp",
                            "rock",
                            "wilderness",
                            "park",
                            "wildlife"
                        ]
                    },
                    "ranks": {
                        "default": 16,
                        "Trover": 16
                    },
                    "publishable": {
                        "default": true,
                        "Trover": true
                    },
                    "metadata": {
                        "Trover": {
                            "discovery_description": "A papa and a baby turtle soaking up the sun in the pond in the Japanese garden.\n\nOne of many, many scenic vistas to be found while strolling through the Chicago Botanic Gardens. \n\nLooking for an escape from the usual tourists activities while visiting Chicago? Located about 30 miles north of the City, the Gardens are absolutely worth the effort to get there. \n\nThe Chicago Botanic Garden opened a little more than 40 years ago. Last year, more than one million people visited the Garden's 26 gardens and four natural areas, uniquely situated on 385 acres on and around nine islands, with six miles of lake shoreline. The Garden also has a renowned Bonsai Collection.\n\n#colorful",
                            "discovery_account_handle": "2804107987",
                            "discovery_venue": "Chicago Botanic Garden",
                            "discovery_account_name": "throwingsofas",
                            "discovery_account_link": "http://www.trover.com/u/throwingsofas",
                            "discovery_thank_count": "16",
                            "discovery_url": "http://www.trover.com/d/15doT-chicago-botanic-garden-highland-park-illinois"
                        }
                    },
                    "authors": [
                        {
                            "profileUrl": "http://www.trover.com/u/throwingsofas",
                            "username": "2804107987",
                            "firstName": "throwingsofas"
                        }
                    ],
                    "mediaHubResourceLink": "https://cs-mh-dataimporter.us-west-2.prod.expedia.com/images/Trover/15doT"
                },
                {
                    "id": "928683",
                    "indexId": "Trover-1Dkju",
                    "externalId": "1Dkju",
                    "fileUrl": "https://thumbnails.expedia.com/qT4PwCq1aRNCicdob06UfBX0l3Y=/cs-mh-bucket.s3-website-us-west-2.amazonaws.com/urls/v0pm5ygdm.jpg",
                    "source": "Trover",
                    "poiGaiaId": 6064029,
                    "latitude": 42.14862,
                    "longitude": -87.79038,
                    "width": 2448,
                    "height": 1275,
                    "aspectRatio": 1.92,
                    "score": 4.764595985412598,
                    "labels": {
                        "Trover": [
                            "outdoor",
                            "entertainment"
                        ],
                        "google_vision": [
                            "pond",
                            "waterway",
                            "tree",
                            "garden",
                            "autumn",
                            "river",
                            "reservoir",
                            "lake",
                            "park"
                        ]
                    },
                    "ranks": {
                        "default": 16,
                        "Trover": 16
                    },
                    "publishable": {
                        "default": true,
                        "Trover": true
                    },
                    "metadata": {
                        "Trover": {
                            "discovery_description": "Happy National Public Gardens Day in the U.S.!",
                            "discovery_account_handle": "2850314948",
                            "discovery_venue": "Chicago Botanic Garden",
                            "discovery_account_name": "Sandy Smith",
                            "discovery_account_link": "http://www.trover.com/u/2850314948",
                            "discovery_thank_count": "16",
                            "discovery_url": "http://www.trover.com/d/1Dkju-chicago-botanic-garden-cook-county-illinois"
                        }
                    },
                    "authors": [
                        {
                            "profileUrl": "http://www.trover.com/u/2850314948",
                            "username": "2850314948",
                            "firstName": "Sandy",
                            "lastName": "Smith"
                        }
                    ],
                    "mediaHubResourceLink": "https://cs-mh-dataimporter.us-west-2.prod.expedia.com/images/Trover/1Dkju"
                },
                {
                    "id": "858326",
                    "indexId": "Trover-nvUY",
                    "externalId": "nvUY",
                    "fileUrl": "https://thumbnails.expedia.com/qfSBgZuk5ysxsleX6ja3rNReIFg=/cs-mh-bucket.s3-website-us-west-2.amazonaws.com/urls/83kcksh91.jpg",
                    "source": "Trover",
                    "poiGaiaId": 6064029,
                    "latitude": 42.14613,
                    "longitude": -87.78931,
                    "width": 960,
                    "height": 720,
                    "aspectRatio": 1.3333334,
                    "score": 4.764400005340576,
                    "labels": {
                        "Trover": [
                            "outdoor",
                            "entertainment"
                        ],
                        "google_vision": [
                            "yard",
                            "ecosystem",
                            "woodland",
                            "tree",
                            "flora",
                            "botany",
                            "leaf",
                            "shrub",
                            "flower",
                            "botanical garden",
                            "season",
                            "garden",
                            "backyard",
                            "autumn",
                            "lawn",
                            "park"
                        ]
                    },
                    "ranks": {
                        "default": 15,
                        "Trover": 15
                    },
                    "publishable": {
                        "default": true,
                        "Trover": true
                    },
                    "metadata": {
                        "Trover": {
                            "discovery_description": "This might very well be my favorite photograph in my Garden collection (taken with my phone camera).",
                            "discovery_account_handle": "2824502390",
                            "discovery_venue": "Chicago Botanic Garden",
                            "discovery_account_name": "Tedi Zlat",
                            "discovery_account_link": "http://www.trover.com/u/2824502390",
                            "discovery_thank_count": "15",
                            "discovery_url": "http://www.trover.com/d/nvUY-chicago-botanic-garden-cook-county-illinois"
                        }
                    },
                    "authors": [
                        {
                            "profileUrl": "http://www.trover.com/u/2824502390",
                            "username": "2824502390",
                            "firstName": "Tedi",
                            "lastName": "Zlat"
                        }
                    ],
                    "mediaHubResourceLink": "https://cs-mh-dataimporter.us-west-2.prod.expedia.com/images/Trover/nvUY"
                },
                {
                    "id": "807644",
                    "indexId": "Trover-TABZ",
                    "externalId": "TABZ",
                    "fileUrl": "https://thumbnails.expedia.com/peZlduZj69WIj8161Eei3phur-Q=/cs-mh-bucket.s3-website-us-west-2.amazonaws.com/urls/kw08q7jnf.jpg",
                    "source": "Trover",
                    "latitude": 42.37063,
                    "longitude": -87.93595,
                    "width": 612,
                    "height": 612,
                    "aspectRatio": 1,
                    "score": 4.764595985412598,
                    "labels": {
                        "Trover": [
                            "outdoor",
                            "entertainment"
                        ],
                        "google_vision": [
                            "outdoor recreation",
                            "recreation",
                            "place of worship",
                            "temple",
                            "amusement park",
                            "landmark",
                            "park",
                            "shrine"
                        ]
                    },
                    "ranks": {
                        "default": 12,
                        "Trover": 12
                    },
                    "publishable": {
                        "default": true,
                        "Trover": true
                    },
                    "metadata": {
                        "Trover": {
                            "discovery_description": "The double decker Colombia Carousel built in 1976 at Six Flags Great America.",
                            "discovery_account_handle": "2804107987",
                            "discovery_venue": "Six Flags Great America/Hurricane Harbor",
                            "discovery_account_name": "throwingsofas",
                            "discovery_account_link": "http://www.trover.com/u/throwingsofas",
                            "discovery_thank_count": "12",
                            "discovery_url": "http://www.trover.com/d/TABZ-six-flags-great-americahurricane-harbor-gurnee-illinois"
                        }
                    },
                    "authors": [
                        {
                            "profileUrl": "http://www.trover.com/u/throwingsofas",
                            "username": "2804107987",
                            "firstName": "throwingsofas"
                        }
                    ],
                    "mediaHubResourceLink": "https://cs-mh-dataimporter.us-west-2.prod.expedia.com/images/Trover/TABZ"
                },
                {
                    "id": "882357",
                    "indexId": "Trover-yOmD",
                    "externalId": "yOmD",
                    "fileUrl": "https://thumbnails.expedia.com/Sum-74p0XQ0mieimpw6o1mPLDcg=/cs-mh-bucket.s3-website-us-west-2.amazonaws.com/urls/l15uun5zp.jpg",
                    "source": "Trover",
                    "latitude": 41.9139,
                    "longitude": -87.69758,
                    "width": 2448,
                    "height": 1836,
                    "aspectRatio": 1.3333334,
                    "score": 4.739197254180908,
                    "labels": {
                        "Trover": [
                            "outdoor"
                        ],
                        "google_vision": [
                            "running",
                            "endurance sports",
                            "walking",
                            "walkway",
                            "vacation",
                            "tourism",
                            "tours",
                            "park"
                        ]
                    },
                    "ranks": {
                        "default": 11,
                        "Trover": 11
                    },
                    "publishable": {
                        "default": true,
                        "Trover": true
                    },
                    "metadata": {
                        "Trover": {
                            "discovery_description": "The Bloomingdale Trail also known as The 606 is a 2.7 mile elevated walking/biking trail created from an abandoned railroad line through the neighborhoods of Wicker Park, Bucktown, Humboldt Park, and Logan Square.\n\nThe Bloomingdale rail line was created after the Chicago fire and continued as a freight line until the mid 1990's.\n\nThe trail is a unique way to traverse and sight-see through these Chicago neighborhoods.\n\nFair warning, the serenity of pedestrian sight-seeing can be made slightly more treacherous by the occasional overly aggressive Schwinn Armstrong.",
                            "discovery_account_handle": "2804107987",
                            "discovery_venue": "Bloomingdale Trail",
                            "discovery_account_name": "throwingsofas",
                            "discovery_account_link": "http://www.trover.com/u/throwingsofas",
                            "discovery_thank_count": "11",
                            "discovery_url": "http://www.trover.com/d/yOmD-bloomingdale-trail-chicago-illinois"
                        }
                    },
                    "authors": [
                        {
                            "profileUrl": "http://www.trover.com/u/throwingsofas",
                            "username": "2804107987",
                            "firstName": "throwingsofas"
                        }
                    ],
                    "mediaHubResourceLink": "https://cs-mh-dataimporter.us-west-2.prod.expedia.com/images/Trover/yOmD"
                },
                {
                    "id": "17109",
                    "indexId": "TourismMedia-31433",
                    "externalId": "31433",
                    "fileUrl": "https://a.travel-assets.com/findyours-php/viewfinder/images/res70/31000/31433-Six-Flags-Great-America-Milwaukee.jpg",
                    "source": "TourismMedia",
                    "poiGaiaId": 6023396,
                    "latitude": 42.37398,
                    "longitude": -87.93429,
                    "score": 4.779054164886475,
                    "labels": {
                        "TourismMedia": [
                            "Attraction",
                            "Theme Parks"
                        ],
                        "google_vision": [
                            "amusement ride",
                            "outdoor recreation",
                            "festival",
                            "recreation",
                            "place of worship",
                            "temple",
                            "amusement park",
                            "resort",
                            "park",
                            "shrine"
                        ]
                    },
                    "ranks": {
                        "default": 10,
                        "TourismMedia": 10
                    },
                    "publishable": {
                        "default": true,
                        "TourismMedia": true
                    },
                    "metadata": {
                        "TourismMedia": {
                            "alt_text": "Six Flags Great America featuring rides"
                        }
                    },
                    "mediaHubResourceLink": "https://cs-mh-dataimporter.us-west-2.prod.expedia.com/images/TourismMedia/31433"
                },
                {
                    "id": "21950",
                    "indexId": "TourismMedia-31435",
                    "externalId": "31435",
                    "fileUrl": "https://a.travel-assets.com/findyours-php/viewfinder/images/res70/31000/31435-Six-Flags-Great-America-Milwaukee.jpg",
                    "source": "TourismMedia",
                    "poiGaiaId": 6023396,
                    "latitude": 42.37398,
                    "longitude": -87.93429,
                    "score": 4.779054164886475,
                    "labels": {
                        "TourismMedia": [
                            "Attraction",
                            "Theme Parks"
                        ],
                        "google_vision": [
                            "nonbuilding structure",
                            "amusement ride",
                            "roller coaster",
                            "outdoor recreation",
                            "recreation",
                            "amusement park",
                            "leisure",
                            "park"
                        ]
                    },
                    "ranks": {
                        "default": 10,
                        "TourismMedia": 10
                    },
                    "publishable": {
                        "default": true,
                        "TourismMedia": true
                    },
                    "metadata": {
                        "TourismMedia": {
                            "alt_text": "Six Flags Great America which includes rides"
                        }
                    },
                    "mediaHubResourceLink": "https://cs-mh-dataimporter.us-west-2.prod.expedia.com/images/TourismMedia/31435"
                }
            ]
        };

        var slideIndex = 0;
        function showSlides() {
            var i;
            var slides = document.getElementsByClassName("mySlides");
            var dots = document.getElementsByClassName("dot");
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }
            slideIndex++;
            if (slideIndex > slides.length) {
                slideIndex = 1
            }
            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" active", "");
            }
            slides[slideIndex - 1].style.display = "block";
            dots[slideIndex - 1].className += " active";
            setTimeout(showSlides, 2000); // Change image every 2 seconds
        }

        function initMap() {
            var Mexico = {
                lat: 19.4326,
                long: 99.1332,
                title: "Mexico",
            regionId: 178285
        };

            var dubai = {
                lat: 25.2048,
                long: 55.2708,
                title: "Dubai",
                regionId: 1079

            };

            var Cairo = {

                lat: 30.0444,
                long: 31.2357,
                title: "Cairo",
                regionId: 178243
            };

            var tokyo = {

                lat: 35.6895,
                long: 139.6917,
                title: "Tokyo",
                regionId: 179900

            };

            var Hongkong = {

                lat: 22.3964,
                long: 114.1095,
                title: "HongKong",
                regionId: 178263

            };

            var bankok = {

                lat: 13.7563,
                long: 100.5018,
                title: "Bangkok",
                regionId: 178236
            };

            var Singapore = {
                lat: 1.3521,
                long: 103.8198,
                title: "Singapore",
                regionId: 180027
            };

            var Manila = {

                lat: 14.5995,
                long: 120.9842,
                title: "Manila",
                regionId: 178282
            };


            var London = {

                lat: 51.5074,
                long: 0.1278,
                title: "London",
                regionId: 178279
            };


            var Paris = {

                lat: 48.8566,
                long: 2.3522,
                title: "Paris",
                regionId: 179898

            };


            var Berlin = {

                lat: 52.5200,
                long: 13.4050,
                title: "Berlin",
                regionId: 179892

            };


            var Venice
                    = {

                lat: 45.4408,
                long: 12.3155,
                title: "Venice",
                regionId: 179981

            };


            var Rome = {

                lat: 41.9028,
                long: 12.4964,
                title: "Rome",
                regionId: 179899

            };


            var Madrid = {

                lat: 40.4168,
                long: 3.7038,
                title: "Madrid",
                regionId: 178281
            };


            var Washington = {
                lat: 38.9072,
                long: 77.0369,
                title: "Washington DC",
                regionId: 178318

            };


            var NY = {

                lat: 40.7128,
                long: 74.0059,
                title: "New York",
                regionId: 178293

            };


            var Miami = {

                lat: 25.7617,
                long: 80.1918,
                title: "Miami",
                regionId: 178286

            };


            var Orlando = {

                lat: 28.5383,
                long: 81.3792,
                title: "Orlando",
                regionId: 178294
            };

            var locations = [
                [Mexico.title, Mexico.lat, Mexico.long, Mexico.regionId],
                [dubai.title, dubai.lat, dubai.long, dubai.regionId],
                [Cairo.title, Cairo.lat, Cairo.long, Cairo.regionId],
                [tokyo.title, tokyo.lat, tokyo.long, tokyo.regionId],
                [Hongkong.title, Hongkong.lat, Hongkong.long, Hongkong.regionId],
                [bankok.title, bankok.lat, bankok.long, bankok.regionId],
                [Singapore.title, Singapore.lat, Singapore.long, Singapore.regionId],
                [Manila.title, Manila.lat, Manila.long, Manila.regionId],
                [London.title, London.lat, London.long, London.regionId],
                [Paris.title, Paris.lat, Paris.long, Paris.regionId],
                [Berlin.title, Berlin.lat, Berlin.long, Berlin.regionId],
                [Venice.title, Venice.lat, Venice.long, Venice.regionId],
                [Rome.title, Rome.lat, Rome.long, Rome.regionId],
                [Madrid.title, Madrid.lat, Madrid.long, Madrid.regionId],
                [Washington.title, Washington.lat, Washington.long, Washington.regionId],
                [NY.title, NY.lat, NY.long, NY.regionId],
                [Miami.title, Miami.lat, Miami.long, Miami.regionId],
                [Orlando.title, Orlando.lat, Orlando.long, Orlando.regionId]

            ];



            // Try HTML5 geolocation.
            if (navigator.geolocation) {
                navigator.geolocation.getCurrentPosition(function(position) {
                    var pos = {
                        lat: position.coords.latitude,
                        lng: position.coords.longitude
                    };

                    infoWindow.setPosition(pos);
                    infoWindow.setContent('Location found.');
                    infoWindow.open(map);
                    map.setCenter(pos);
                }, function() {
                    handleLocationError(true, infoWindow, map.getCenter());
                });
            } else {
                // Browser doesn't support Geolocation
                handleLocationError(false, infoWindow, map.getCenter());
            }


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
                    title: locations[i][0]
                });

                google.maps.event.addListener(marker, 'click', (function (marker, i) {
                    return function () {

                        var html = '<h4>' + locations[i][0] + '</h4>';
                        html += '<div class="container" height=1000px width=1000px>  <div id="myCarousel" class="carousel slide" data-ride="carousel">' +
                                ' <!-- Indicators --> <ol class="carousel-indicators"> <li data-target="#myCarousel" data-slide-to="0" class="active"></li> <li data-target="#myCarousel" data-slide-to="1"></li> <li data-target="#myCarousel" data-slide-to="2"></li> </ol> ' +
                                '<!-- Wrapper for slides -->' +
                                ' <div class="carousel-inner"> <div class="item active"> <img src=' + response.images[0].fileUrl + ' alt="Los Angeles" style="width:40%;">' +
                                ' </div> <div class="item"> <img src=' + response.images[1].fileUrl + 'style="width:40%;"> </div> <div class="item"> <img src=' + response.images[2].fileUrl + 'style="width:40%;"> </div> </div>' +
                                ' <!-- Left and right controls --> <a class="left carousel-control" href="#myCarousel" data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"></span> <span class="sr-only">Previous</span> </a> ' +
                                '<a class="right carousel-control" href="#myCarousel" data-slide="next"> <span class="glyphicon glyphicon-chevron-right"></span> <span class="sr-only">Next</span> </a> </div> </div>';
                        /*  html += '<div class="slideshow-container">';
                         for (j = 0; j < response.images.length; j++) {

                         html += '<div class="mySlides fade">';
                         html += '<img src="' + response.images[j].fileUrl + '" />';
                         html += '</div>';
                         }*/

                        html += '<div>';
                        html += '<div align="center" ><a   target="_blank" href= https://www.expedia.com/lp/destinations/' + locations[i][3] + ' "><strong>Learn More</strong></a></div>';
                        html += '<div align="center"> <a  target="_blank" href= https://www.expedia.com/lp/destinations/' + locations[i][3] + ' "><strong>See Prices</strong></a></div>';
                        html += '</div>';

                        infowindow.setContent(html);
                        infowindow.open(map, marker);
                    }
                })(marker, i));
            }


        }

        function handleLocationError(browserHasGeolocation, infoWindow, pos) {
            infoWindow.setPosition(pos);
            infoWindow.setContent(browserHasGeolocation ?
                    'Error: The Geolocation service failed.' :
                    'Error: Your browser doesn\'t support geolocation.');
            infoWindow.open(map);
        }
    </script>
   <%-- <script>
        // Note: This example requires that you consent to location sharing when
        // prompted by your browser. If you see the error "The Geolocation service
        // failed.", it means you probably did not give permission for the browser to
        // locate you.
        var map, infoWindow;
        function initMap() {
            map = new google.maps.Map(document.getElementById('map'), {
                center: {lat: -34.397, lng: 150.644},
                zoom: 6
            });
            infoWindow = new google.maps.InfoWindow;

            // Try HTML5 geolocation.
            if (navigator.geolocation) {
                navigator.geolocation.getCurrentPosition(function(position) {
                    var pos = {
                        lat: position.coords.latitude,
                        lng: position.coords.longitude
                    };

                    infoWindow.setPosition(pos);
                    infoWindow.setContent('Location found.');
                    infoWindow.open(map);
                    map.setCenter(pos);
                }, function() {
                    handleLocationError(true, infoWindow, map.getCenter());
                });
            } else {
                // Browser doesn't support Geolocation
                handleLocationError(false, infoWindow, map.getCenter());
            }
        }

        function handleLocationError(browserHasGeolocation, infoWindow, pos) {
            infoWindow.setPosition(pos);
            infoWindow.setContent(browserHasGeolocation ?
                    'Error: The Geolocation service failed.' :
                    'Error: Your browser doesn\'t support geolocation.');
            infoWindow.open(map);
        }
    </script>--%>
</head>
<body>


<h3>My Google Maps Demo</h3>
<div id="map"></div>


<script async defer
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBK_4hMqe1qQgYlYZhHlpgAHHXVA_wlEVI&callback=initMap">
</script>

<div id="result"></div>

</body>
</html>
