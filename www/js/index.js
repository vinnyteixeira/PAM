
document.addEventListener('deviceready', onDeviceReady, false);

onGeolocationSuccess = function(position){
    alert('Latitude: '          + position.coords.latitude          + '\n' +
              'Longitude: '         + position.coords.longitude         + '\n' +
              'Altitude: '          + position.coords.altitude          + '\n' +
              'Accuracy: '          + position.coords.accuracy          + '\n' +
              'Altitude Accuracy: ' + position.coords.altitudeAccuracy  + '\n' +
              'Heading: '           + position.coords.heading           + '\n' +
              'Speed: '             + position.coords.speed             + '\n' +
              'Timestamp: '         + position.timestamp                + '\n');

            document.getElementById("latitude").value= position.coords.latitude
            document.getElementById("longitude").value=position.coords.longitude
            document.getElementById("altitude").value=position.coords.altitude
            document.getElementById("accuracy").value=position.coords.accuracy
            document.getElementById("altitudeAccuracy").value=position.coords.altitudeAccuracy
            document.getElementById("heading").value=position.coords.heading
            document.getElementById("speed").value=position.coords.speed
            document.getElementById("timestamp").value=position.timestamp
}

function pararDeObservarPostion(){
    navigator.geolocation.clearWatch(window.watchId);
}


onGeolocationError = function (error){
    alert('code: '    + error.code    + '\n' +
    'message: ' + error.message + '\n');
}

geolocationOptions = {
    maximumAge: 3000,
    timeout: 5000,
    enableHighAccuracy: true 
}


function onDeviceReady() {
    // Cordova is now initialized. Have fun!

    console.log('Running cordova-' + cordova.platformId + '@' + cordova.version);
   

    alert("obter geo");
    alert(navigator.geolocation);

    //navigator.geolocation.getCurrentPosition(
      //  onGeolocationSuccess,
        //onGeolocationError,
       // geolocationOptions);

       window.watchId = navigator.geolocation.watchPosition(onGeolocationSuccess,
        onGeolocationError,
        geolocationOptions);

}
