$(document).ready(function() {
  $(".open").click(function() {
    if ($(".Calcbox").hasClass("open-curtains")) {
      $(".Calcbox").removeClass("open-curtains");
    } else {
      $(".Calcbox").addClass("open-curtains");
    }
  });
});
