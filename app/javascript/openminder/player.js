import YouTubePlayer from 'youtube-player';

let player;

document.addEventListener('DOMContentLoaded', () => {

  function updatePlayerControls() {
    let first_child = document.querySelector(".hello-tracks").firstElementChild.firstElementChild;
    let last_child = document.querySelector(".hello-tracks").lastElementChild.firstElementChild;
    let selected_song = document.querySelector(".opinion-track-selected");
    const left_arrow = document.querySelector(".left-arrow");
    const right_arrow = document.querySelector(".right-arrow");

    right_arrow.classList.remove("hidden-arrow");
    left_arrow.classList.remove("hidden-arrow");

    if (selected_song === first_child) {
      left_arrow.classList.add("hidden-arrow");
    } else if (selected_song === last_child) {
      right_arrow.classList.add("hidden-arrow");
    }
  }

  function updateVoteInPlayer () {
    let vote = document.getElementById("player-voted");
    let selected = document.querySelector(".opinion-track-selected").nextElementSibling;
    let selected_li = selected.nextElementSibling.querySelector("i");
    let select = document.querySelector(".opinion-track-selected");
      if (selected_li.classList.contains("voted") === true) {
        vote.classList.add("voted");
      } else if  (selected_li.classList.contains("voted") === false) {
        vote.classList.remove("voted");
      }
  }

  function clickOnTrack(event) {
    const element = event.target.closest(".track");
    const tracks = document.querySelectorAll(".tracks-js");
    tracks.forEach((track) => {
      if (track.classList.contains("opinion-track-selected")) {
        track.classList.remove("opinion-track-selected");
      }
    });
    element.classList.add("opinion-track-selected");
    updateVoteInPlayer();
    insertYouTubeLink();
    loadVideoById();
    playVideo();
  }

  function selectFirstSong () {
    const first = document.querySelector(".tracks-js");
    if (first) {
      first.classList.add("opinion-track-selected");
      insertYouTubeLink();
    }
  }

  function selectATrack() {
    const tracks = document.querySelectorAll(".tracks-js");
    tracks.forEach((track) => {
      track.addEventListener("click", clickOnTrack);
    }); // end of iteration on div array with id "tracks-js"
    insertYouTubeLink();
  }

  function updateHeartInPlayerInRealTime () {
    document.addEventListener('voteUpdated', updateVoteInPlayer, false);
  }
  function insertYouTubeLink () {
    const playerShare = document.querySelector(".player-share")
    let youtubeId = document.querySelector(".opinion-track-selected").dataset.youtubeId;
    playerShare.innerHTML= `
      <a href="https://www.youtube.com/watch?v=${youtubeId}" target="_blank">
        <i class="fab fa-youtube player-youtube"></i>
      </a>`;
  }

  // initialization when DOM is loaded
  selectFirstSong ();
  addArtistInfosToPlayer ();
  updateVoteInPlayer();
  selectATrack();
  updateHeartInPlayerInRealTime();


// -----------------------------------------
// PLAYER YT - CREATION ET ENVOI DE PARAMS
// -----------------------------------------

  // gets youtubeId in variable to pass to the player
  let youtubeId = document.querySelector(".opinion-track-selected").dataset.youtubeId;

  // display iframe player on div with id="player"
  // Send params to the YouTubePlayer
  player = YouTubePlayer('player',
        {
        playerVars: {
          fs: '0',
          modestbranding: '1',
          rel: '0',
          iv_load_policy: '3',
          showinfo: '0'
        },
        height: '100%',
        width: '100%'
        });

    // 'loadVideoById' is queued until the player is ready to receive API calls.
    player.loadVideoById(youtubeId);

    // 'playVideo' is queue until the player is ready to received API calls and after 'loadVideoById' has been called.
    player.playVideo();

    player
      .pauseVideo()
      .then(() => {
          // Every function returns a promise that is resolved after the target function has been executed.
      });

    player
      .stopVideo()
      .then(() => {
          // Every function returns a promise that is resolved after the target function has been executed.
      });

    player.getDuration();


// -----------------------------------------------------------------------------
//                      PLAYER BAS - FONCTIONS DE LECTURE
// -----------------------------------------------------------------------------

  const play = document.querySelector(".play-button");
  play.addEventListener("click", () => {
    changePlayToPause();
    playVideo();
  });

  const pause_button = document.querySelector(".pause-button");
  pause_button.addEventListener("click", () => {
    changePauseToPlay();
    pauseVideo();
  });

  const forward = document.querySelector(".right-arrow");
  forward.addEventListener("click", playNextSong);

  const backward = document.querySelector(".left-arrow");
  backward.addEventListener("click", playPreviousSong);



  function playPreviousSong() {
      let selected = document.querySelector(".opinion-track-selected");
      let previous = selected.parentNode.previousElementSibling.firstElementChild;
      selected.classList.remove("opinion-track-selected");
      previous.classList.add("opinion-track-selected");
      updateVoteInPlayer();
      loadVideoById();
      playVideo();
  }

  function playNextSong() {
      let selected = document.querySelector(".opinion-track-selected");
      let next = selected.parentNode.nextElementSibling.firstElementChild;
      selected.classList.remove("opinion-track-selected");
      next.classList.add("opinion-track-selected");
      updateVoteInPlayer();
      loadVideoById();
      playVideo();
  }

  function changePlayToPause () {
    const play = document.querySelector(".play-button")
    const pause = document.querySelector(".pause-button");
      play.classList.add("hidden");
      pause.classList.remove("hidden");
  }

  function changePauseToPlay () {
    const play = document.querySelector(".play-button")
    const pause = document.querySelector(".pause-button");
      play.classList.remove("hidden");
      pause.classList.add("hidden");
  }

  function addArtistInfosToPlayer () {
    const title = document.querySelector(".player-title h1");
    const added = document.querySelector(".player-title p");
    let name = document.querySelector(".opinion-track-selected").dataset.songName;
    let date = document.querySelector(".opinion-track-selected").dataset.addedDate;

    title.innerHTML = name;
    added.innerHTML = date;
  }

  function displayDurationHTML(duration) {
  }

  function displayState(state){
  }

  function playVideo() {
    changePlayToPause ();
    addArtistInfosToPlayer();
    let youtubeId = document.querySelector(".opinion-track-selected").dataset.youtubeId;
    player.playVideo(youtubeId);
    player.getCurrentTime(youtubeId);
    player.getDuration().then(displayDurationHTML);
    player.getPlayerState().then(displayState);
  }

  function loadVideoById () {
    updatePlayerControls();
    let youtubeId = document.querySelector(".opinion-track-selected").dataset.youtubeId;
    player.loadVideoById(youtubeId);
  }

  function stopVideo() {
    let youtubeId = document.querySelector(".opinion-track-selected").dataset.youtubeId;
    player.stopVideo(youtubeId);
  }

  function pauseVideo() {
    let youtubeId = document.querySelector(".opinion-track-selected").dataset.youtubeId;
    player.pauseVideo(youtubeId);
    console.log("je suis en pause");
    player.getPlayerState().then(displayState);
  }

  player.on('stateChange', (event) => {
    // -1 : non démarré 0 : arrêté 1 : en lecture 2 : en pause 3 : en mémoire tampon 5 : en file dattente
    switch (event.data) {
      case "-1":
        break;
      case 0:
        playNextSong();
        break;
      case 1:
        changePlayToPause();
        break;
      case 2:
        changePauseToPlay ();
        break;
      case 3:
        break;
      case 5:
        break;
      default:
    }
  });

});//end DOM
