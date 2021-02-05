<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <link rel="stylesheet" href="css/baseAdmin.css">
</head>

<body>

    <div class="nav bg-light">
        <div class="logo mb-5">
            <h3>Appname</h3>
        </div>

        <ul class="nav">
            <li><a href="admin-post.html">Posts</a></li>
            <li><a href="#">Categories</a></li>
            <li><a href="#">Users</a></li>
            <li><a href="#">User Types</a></li>
        </ul>
    </div>


    <div class="main">

        <div class="container px-md-5 mb-5">

            <div class="counters card">
                <div class="counter">
                    <h3>00</h3>
                    <h5>Visits</h5>
                </div>
                <div class="counter">
                    <h3>00</h3>
                    <h5>Visits</h5>
                </div>
                <div class="counter">
                    <h3>00</h3>
                    <h5>Visits</h5>
                </div>
            </div>

            <div class="plots mb-5">
                <div id="plot"></div>
                <div id="mapPlot"></div>
            </div>

            <h4>Last comments</h4>

            <div class="comments">
                <div class="card d-flex flex-column mx-4 mt-4 mt-md-3 vertical-align-center p-3 p-md-2 comment">
                    
                    <div class="px-2">
                        <p class="m-0">In <b>Post name</b> at <i>01/01/2021</i> by 
                            <img src="https://www.pinclipart.com/picdir/middle/148-1486972_mystery-man-avatar-circle-clipart.png" alt="user">
                            <span><b>User name</b></span>
                        </p>
                    </div>
                    <hr class="mx-1">
                    <p class="px-2">
                        Martin - Hello!
                    </p>
                </div>

                <div class="card d-flex flex-column mx-4 mt-4 mt-md-3 vertical-align-center p-3 p-md-2 comment">
                    
                    <div class="px-2">
                        <p class="m-0">In <b>Post name</b> at <i>01/01/2021</i> by 
                            <img src="https://www.pinclipart.com/picdir/middle/148-1486972_mystery-man-avatar-circle-clipart.png" alt="user">
                            <span><b>User name</b></span>
                        </p>
                    </div>
                    <hr class="mx-1">
                    <p class="px-2">
                        Martin - Hello!
                    </p>
                </div>

                <div class="card d-flex flex-column mx-4 mt-4 mt-md-3 vertical-align-center p-3 p-md-2 comment">
                    
                    <div class="px-2">
                        <p class="m-0">In <b>Post name</b> at <i>01/01/2021</i> by 
                            <img src="https://www.pinclipart.com/picdir/middle/148-1486972_mystery-man-avatar-circle-clipart.png" alt="user">
                            <span><b>User name</b></span>
                        </p>
                    </div>
                    <hr class="mx-1">
                    <p class="px-2">
                        Martin - Hello!
                    </p>
                </div>

            </div>

       </div>

        <footer class="bg-dark text-white text-center p-2">
            <h4 class="mt-1">Appname</h4>
            <div class="mt-3 footer-links d-flex flex-column flex-md-row">
                <a>Privacy</a>
                <a>Terms of Service</a>
                <a>Ad Choices</a>
                <a>Web Accessibility</a>
            </div>
        </footer>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous">
    </script>
    <script src="https://cdn.plot.ly/plotly-latest.min.js"></script>
    <script>
        TESTER = document.getElementById('plot');
        Plotly.newPlot( TESTER, [{
            x: [1, 2, 3, 4, 5],
            y: [1, 2, 4, 8, 16] }], {
            margin: {l: 0, r: 0, b: 0, t: 0, pad: 0},
        } );

        var data = [{
        type: "choroplethmapbox", name: "US states", geojson: "https://raw.githubusercontent.com/python-visualization/folium/master/examples/data/us-states.json", locations: [ "AL", "AK", "AZ", "AR", "CA", "CO", "CT", "DE", "FL", "GA", "HI", "ID", "IL", "IN", "IA", "KS", "KY", "LA", "ME", "MD", "MA", "MI", "MN", "MS", "MO", "MT", "NE", "NV", "NH", "NJ", "NM", "NY", "NC", "ND", "OH", "OK", "OR", "PA", "RI", "SC", "SD", "TN", "TX", "UT", "VT", "VA", "WA", "WV", "WI", "WY" ],
        z: [ 141, 140, 155, 147, 132, 146, 151, 137, 146, 136, 145, 141, 149, 151, 138, 158, 164, 141, 146, 145, 142, 150, 155, 160, 156, 161, 147, 164, 150, 152, 155, 167, 145, 146, 151, 154, 161, 145, 155, 150, 151, 162, 172, 169, 170, 151, 152, 173, 160, 176 ],
        zmin: 25, zmax: 280, colorbar: {y: 0, yanchor: "bottom", title: {text: "US states", side: "right"}}}
        ];

        var layout = {
            mapbox: {style: "dark", center: {lon: -110, lat: 50}, zoom: 0.8}, 
            //width: 50, 
            //height: 400, 
            margin: {l: 0, r: 0, b: 0, t: 0, pad: 0},
        };

        var config = {mapboxAccessToken: "pk.eyJ1IjoiaW5jc3BuIiwiYSI6ImNrazByZjB6cjAyNnoyb3J6dTU0ZmljNzgifQ.PtpiPXC0tW03AJDn_6vXyw"};

        Plotly.newPlot('mapPlot', data, layout, config); 
    </script>
</body>

</html>