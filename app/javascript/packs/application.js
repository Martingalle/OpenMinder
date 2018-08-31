import 'bootstrap';
import '../openminder/youtube-api.js'
import '../openminder/category-choice.js'
import '../openminder/youtube_playlist'

// PLAYER

// on page load je sélectionne le 1er
const first = document.querySelector(".tracks-js");
first.classlist.add("opinion-track-selected");

const array = document.querySelectorAll(".tracks-js");

array.forEach((element) => {

  element.addEventListener("click", () => {
    array.forEach((div) => {
    if (div.classList.contains("opinion-track-selected")) {
      div.classList.remove("opinion-track-selected");
    }

    });

    element.classList.add("opinion-track-selected");
  });

});
