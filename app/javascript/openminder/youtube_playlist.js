document.addEventListener("DOMContentLoaded", function(event) {
  const player = document.getElementById("player");

  if (player) {
    const songsId = player.dataset.songsId;
    const playlist_id = JSON.parse(songsId);
  }
});
