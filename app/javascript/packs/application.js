import 'bootstrap';
import '../openminder/youtube-api.js'
import '../openminder/category-choice.js'

// PLAYER

// 2. This code loads the IFrame Player API code asynchronously.
document.addEventListener("DOMContentLoaded", function(event) {
  const songsId = document.getElementById("player").dataset.songsId;
    console.log(songsId);
});

