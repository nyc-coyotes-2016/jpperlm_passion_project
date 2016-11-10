$(function() {
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
            "url": "http://i1.mirror.co.uk/incoming/article6395000.ece/ALTERNATES/s1200/MAIN-David-Beckham-next-James-Bond.jpg"
          }),
        })
        .done(function(data) {
          console.log(data);
        })
        .fail(function(e) {
          console.log(e);
        });
    });
