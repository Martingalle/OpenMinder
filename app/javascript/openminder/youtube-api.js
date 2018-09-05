const input = document.querySelector('#search');
const results = document.querySelector('#results');
const opinionShow = document.getElementById("opinionShow")
const youtube = "https://www.youtube.com/watch?v"

if (opinionShow) {
  const opinionId = opinionShow.dataset.opinionId
}

const inputSearchResult = (data) => {
  console.log(data)
  results.innerHTML = '';
  data.items.forEach((item) => {
    const opinionId = opinionShow.dataset.opinionId;
    var youtube_url = youtube + item.id.videoId
    results.insertAdjacentHTML('beforeend', `
        <li class="track-search-result-display">
          <img src=${item.snippet.thumbnails.medium.url} alt="">
          <p class="track-name">${item.snippet.title}</p>

          <div class="dropdown">
            <button class="btn button-youtube-list dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              <i class="fas fa-plus youtube-player-times"></i>
            </button>
            <div class="dropdown-menu youtube-dropdown" aria-labelledby="dropdownMenuButton">
              <p class="button-list-title">add a genre to your track !</p>
              <ul>
                <li><a rel="nofollow" data-method="post" class="genre-list-1" href="/opinions/${opinionId}/tracks?track[name]=${item.snippet.title}&amp;track[photo]=${item.snippet.thumbnails.medium.url}&amp;track[audio_url]=${youtube_url}&amp;track[youtube_id]=${item.id.videoId}&amp;track[genre_name]">rock</a></li>
                <li><a rel="nofollow" data-method="post" class="genre-list-2" href="/opinions/${opinionId}/tracks?track[name]=${item.snippet.title}&amp;track[photo]=${item.snippet.thumbnails.medium.url}&amp;track[audio_url]=${youtube_url}&amp;track[youtube_id]=${item.id.videoId}&amp;track[genre_name]">jazz</a></li>
                <li><a rel="nofollow" data-method="post" class="genre-list-3" href="/opinions/${opinionId}/tracks?track[name]=${item.snippet.title}&amp;track[photo]=${item.snippet.thumbnails.medium.url}&amp;track[audio_url]=${youtube_url}&amp;track[youtube_id]=${item.id.videoId}&amp;track[genre_name]">pop</a></li>
                <li><a rel="nofollow" data-method="post" class="genre-list-4" href="/opinions/${opinionId}/tracks?track[name]=${item.snippet.title}&amp;track[photo]=${item.snippet.thumbnails.medium.url}&amp;track[audio_url]=${youtube_url}&amp;track[youtube_id]=${item.id.videoId}&amp;track[genre_name]">metal</a></li>
                <li><a rel="nofollow" data-method="post" class="genre-list-5" href="/opinions/${opinionId}/tracks?track[name]=${item.snippet.title}&amp;track[photo]=${item.snippet.thumbnails.medium.url}&amp;track[audio_url]=${youtube_url}&amp;track[youtube_id]=${item.id.videoId}&amp;track[genre_name]">rap</a></li>
                <li><a rel="nofollow" data-method="post" class="genre-list-6" href="/opinions/${opinionId}/tracks?track[name]=${item.snippet.title}&amp;track[photo]=${item.snippet.thumbnails.medium.url}&amp;track[audio_url]=${youtube_url}&amp;track[youtube_id]=${item.id.videoId}&amp;track[genre_name]">classique</a></li>
                <li><a rel="nofollow" data-method="post" class="genre-list-7" href="/opinions/${opinionId}/tracks?track[name]=${item.snippet.title}&amp;track[photo]=${item.snippet.thumbnails.medium.url}&amp;track[audio_url]=${youtube_url}&amp;track[youtube_id]=${item.id.videoId}&amp;track[genre_name]">chanson</a></li>
                </ul>
            </div>
          </div>

        </li>`);
  });
};

const autocomplete = (e) => {
    fetch(`https://www.googleapis.com/youtube/v3/search?q=${e.target.value}&type=video&videoEmbedabble=true&part=id,snippet&maxResults=5&key=AIzaSyDNB4crv9Q0GtCyd1HHZsC0JJXN1-7GdnA`)
    .then(response => response.json())
    .then(data => inputSearchResult(data));
};

if (input) {
  input.addEventListener('keyup', autocomplete);
}



