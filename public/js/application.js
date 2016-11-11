$(function() {
  $('#picture-form').on('submit', function(event){
    event.preventDefault();
    var that = this;

    var url = $(this).find('input.url').val()
      $.ajax({
          url: "https://api.projectoxford.ai/emotion/v1.0/recognize",
          beforeSend: function(xhrObj) {
            // Request headers
            xhrObj.setRequestHeader("Content-Type", "application/json");
            xhrObj.setRequestHeader("Ocp-Apim-Subscription-Key",
              "8cfae99205804e4c9f327617d2c978b9");
          },
          type: "POST",
          // Request body
          data: JSON.stringify({
            "url": url
          })
        })
        .done(function(data) {
          console.log(data);
          var scores = data[0].scores;

          var object = $.extend({}, scores, {url: url});
          $.ajax({
            url: '/pictures',
            method: 'post',
            data: object
            }).done(function(response){
              $(that).hide()
            });
          })
          // create object that holds link to picture and all the scores
        .fail(function(e) {
          console.log(e);
        });
      });

      $('#text-form').on('submit', function(event){
        event.preventDefault();
        var that = this;
        var text= $(this).find('textarea').val()
        var params ={
          "documents": [
          {
          "language": "en",
           "id": "1",
           "text": text
          }
          ]
          };
        var text = $(this).serialize();
        $.ajax({
          url: "https://westus.api.cognitive.microsoft.com/text/analytics/v2.0/sentiment?" + $.param( params ),
          beforeSend: function(xhrObj){
          // Request headers
          xhrObj.setRequestHeader("Content-Type","application/json");
          xhrObj.setRequestHeader("Ocp-Apim-Subscription-Key","98606b9680ac40d19fc4e4e6d0746715");
          xhrObj.setRequestHeader("Accept","application/json");
          },
          type: "POST",
          // Request body
          data: JSON.stringify(params)
          })
          .done(function(data) {
            var scores = data.documents[0].score
            data = {score: scores, text: text}
            $.ajax({
              url: '/texts',
              type:'post',
              data: data
              }).done(function(response){
                $(that).hide();
                console.log('TEXT DATA SAVED');
              });
            })
            .fail(function() {
                alert("error");
            });
        });
    });
