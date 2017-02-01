$(document).on("turbolinks:load", function() {
  $(".nearby-sitter").click(function(event) {
    var button = $(this);

    // Don't do the normal click
    event.preventDefault();

    if (!navigator.geolocation) {
      button.html("Sorry, no gelocation avaialble.")
      return;
    }

    function success(position) {
      var latitude  = position.coords.latitude;
      var longitude = position.coords.longitude;

      window.location = "/users?latitude=" + latitude + "&longitude=" + longitude
    }

    function error() {
      button.html("Sorry, no gelocation avaialble.")
    }

    navigator.geolocation.getCurrentPosition(success, error);
  })
})
