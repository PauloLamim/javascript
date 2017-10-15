var geocoder;
var lat = 0.0;
var lng = 0.0;

function initialize() {
    geocoder = new google.maps.Geocoder();
}

function codeAddress() {
    //Set div blank
    document.getElementById("container").innerHTML = "";

    var address = document.getElementById("address").value;
    geocoder.geocode( { 'address': address }, function(r, s) {
    //alert("Lat.: " + r[0].geometry.location.lat() + " Long.: " + r[0].geometry.location.lng());
    lat = r[0].geometry.location.lat();
    lng = r[0].geometry.location.lng();
    calcDistances(lat,lng);
});
}

function testSort()
{
    sortDistance(js_a);
    for (i=0;i<js_a.length;i++) {
        document.getElementById("container").innerHTML += JSON.parse(JSON.stringify(js_a[i].title)) + "</br>";
        document.getElementById("container").innerHTML += JSON.parse(JSON.stringify(js_a[i].postcode)) + "</br>";
        //document.getElementById("container").innerHTML += JSON.parse(JSON.stringify(js_a[i].latitude)) + "</br>";
        //document.getElementById("container").innerHTML += JSON.parse(JSON.stringify(js_a[i].longitude)) + "</br>";
        document.getElementById("container").innerHTML += JSON.parse(JSON.stringify(js_a[i].distance)) + "</br></br>";
    }
}

function printLog(){
    sortDistance(js_a);
    for (i=0;i<js_a.length;i++) {
        console.log(js_a[i].title);
        console.log(js_a[i].postcode)
        console.log(js_a[i].distance);
    }
}

function sortDistance(arr)
{
    arr.sort(function(a,b){return a.distance - b.distance});
}

function rad(number)
{
    return number * Math.PI / 180;
}

//calculate all distances
function calcDistances(lat,lng)
{
    for (i=0;i<js_a.length;i++)
{
    //Calculate distance between points

    var R = 6371 *0.62137119; // miles
    //var R = 6371; // km
    var x1 = js_a[i].latitude-lat;
    var dLat = rad(x1);
    var x2 = js_a[i].longitude-lng;
    var dLon = rad(x2);
    var a = Math.sin(dLat/2) * Math.sin(dLat/2) + Math.cos(rad(lat)) * Math.cos(rad(js_a[i].latitude)) * Math.sin(dLon/2) * Math.sin(dLon/2);
    var c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a));
    var d = R * c;

    //store distance
    js_a[i].distance = d;
    //test print on console
    //console.log(d);
}
    //test print on browser
    testSort();
    //printLog();
}