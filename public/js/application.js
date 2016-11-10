$(document).ready(function() {

  $('#picture-form').on('submit', function(event){
    event.preventDefault();
    data = $(this).serialize();
    url = 'https://api.kairos.com/v2/media?'+ data
    debugger
    imgUrl = this
    $.ajax({
      url: url,
      
    })

  })



});
