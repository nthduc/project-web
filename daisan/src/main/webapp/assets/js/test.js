$('#exampleModal').on('shown.bs.modal', function () {
    $('#myInput').trigger('focus')
  })



 $('.register-form').change(function (e) { 
   let text = $('#qwerty').val();
   if (text.length < 5) {
    $('#qwerty').removeClass("green-border");
    $('#qwerty').addClass("red-border");
   } else {
    $('#qwerty').removeClass("red-border");
    $('#qwerty').addClass("green-border");
   }
    
  });