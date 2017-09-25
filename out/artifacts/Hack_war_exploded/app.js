/**
 * Created by nitishsingla on 9/22/17.
 */
window.Instagram = {
    config: {},
    BASE_URL: "https://api.instagram.com/v1",
    init: function (opt) {
        "use strict";
        opt = opt || {};
        this.config.access_token = opt.access_token;
    },

    popular: function (opt) {
        "use strict";
        var endpoint = this.BASE_URL + "/tags" + name + "/media/recent?client_id=" + this.config.client_id;
        this.getJSON(endpoint, callback);

    },

    tagsByName: function (name, callback) {
        "use strict";
        var endpoint = this.BASE_URL + "/tags" + name + "/media/recent?client_id=" + this.config.client_id;
        this.getJSON(endpoint, callback);
    },
    getJSON : function (url, callback) {
        "use strict";
        $.ajax({
            type: "GET",
            datatype: "jsonp",
            url: endpoint,
            success: function (response) {
                if (typeof callback === "function") {
                    callback(response);
                }
            }
        });
    }
};

Instagram.init({
    client_id: "f1ca5505e4514c9e837921a74602953c"
});

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


