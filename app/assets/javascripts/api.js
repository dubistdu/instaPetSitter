function geoLocate(nearbySitter) {
  function success(position) {
    console.log("Got the location")
    localStorage.latitude  = position.coords.latitude;
    localStorage.longitude = position.coords.longitude;
  }

  function error() {
    nearbySitter.html("Sorry, no gelocation avaialble.")
  }

  console.log(navigator.geolocation)

  if (!navigator.geolocation) {
    console.log("NO GEOLOCATION")
    error()
    return
  }

  var latitude  = localStorage.latitude  || 0;
  var longitude = localStorage.longitude || 0;

  if ((latitude == 0) || (longitude == 0)) {
    var options = {
      enableHighAccuracy: true,
      timeout: 10000,
      maximumAge: Infinity
    }

    navigator.geolocation.getCurrentPosition(success, error, options);
  } else {
    console.log("Using the cached location of " + latitude + "," + longitude)
  }

  nearbySitter.click(function(event) {
    // Don't do the normal click
    event.preventDefault();

    if ((latitude == 0) || (longitude == 0)) {
      error()
    } else {
      window.location = "/users?latitude=" + latitude + "&longitude=" + longitude
    }
  })
}

$(document).on("turbolinks:load", function() {
  var nearbySitter = $(".nearby-sitter")

  if (nearbySitter.length > 0) {
    geoLocate(nearbySitter);
  }
})
