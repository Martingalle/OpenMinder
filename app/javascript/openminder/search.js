// After the API loads, call a function to enable the search box.
function handleAPILoaded() {
  $('#search-button').attr('disabled', false);
}

// Search for a specified string.
function search() {
  var q = encodeURIComponent($("search").val();
  var request = gapi.client.youtube.search.list({
    q: q.replace("/%20/g", "+"),
    part: 'snippet'
    type: "video",
    maxResults: 5,
    order: "ViewCount"
  });

  request.execute(function(response) {
    var str = JSON.stringify(response.result);
    $('#search-container').html('<pre>' + str + '</pre>');
  });
}


export search
export handleAPILoaded
