import 'bootstrap';

const input = document.querySelector('#search');
const results = document.querySelector('#results');

const inputSearchResult = (data) => {
  results.innerHTML = '';
  data.items.forEach((item) => {
    results.insertAdjacentHTML('beforeend', `
      <li class="track-search-result-display">
          <img src=${item.snippet.thumbnails.medium.url} alt="">
          <p class="track-name">${item.snippet.title}</p>
          <p>add</p>
        </li>`);
  });
};

const autocomplete = (e) => {
    fetch(`https://www.googleapis.com/youtube/v3/search?q=${e.target.value}&type=video&videoEmbedabble=true&part=id,snippet&key=AIzaSyDNB4crv9Q0GtCyd1HHZsC0JJXN1-7GdnA`)
    .then(response => response.json())
    .then(data => inputSearchResult(data));
};

input.addEventListener('keyup', autocomplete);



