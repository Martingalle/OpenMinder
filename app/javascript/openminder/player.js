import YouTubePlayer from 'youtube-player';

// toutes les
document.addEventListener('DOMContentLoaded', () => {
  // Select only the first
  const first = document.querySelector(".tracks-js");

  if (first) {
    first.classList.add("opinion-track-selected");

    const array = document.querySelectorAll(".tracks-js");

    array.forEach((element) => {
      element.addEventListener("click", () => {
        array.forEach((div) => {
          if (div.classList.contains("opinion-track-selected")) {
            div.classList.remove("opinion-track-selected");
          }
        });

        element.classList.add("opinion-track-selected");
        playVideo(element.dataset.youtubeId);
      });

    });


    // gets youtubeId in variable to pass to the player
    let youtubeId = document.querySelector(".opinion-track-selected").dataset.youtubeId;
    console.log(youtubeId);


    // use youtube-player from YARN
    let player;

    // display player on div with id="player"
    player = YouTubePlayer('player');
    playVideo(youtubeId);

    // // 'loadVideoById' is queued until the player is ready to receive API calls.
    // player.loadVideoById(youtubeId);

    // // 'playVideo' is queue until the player is ready to received API calls and after 'loadVideoById' has been called.
    // player.playVideo();

    // // 'stopVideo' is queued after 'playVideo'.
    // player
    //     .stopVideo()
    //     .then(() => {
    //       console.log('test');
    //         // Every function returns a promise that is resolved after the target function has been executed.
    //     });
  }

  function playVideo(youtubeId) {
    console.log('load and play')
    player.loadVideoById(youtubeId);
    player.playVideo(youtubeId);
  }
});

// function onYouTubeIframeAPIReady(youtubeId) {
//   player = new YT.Player('player', {
//     videoId: youtubeId,
//     height: "240",
//     width: "360",
//     events: {
//       onReady: function onPlayerReady(event) {
//         event.target.playVideo();
//       },
//       onStateChange: function onPlayerStateChange(event) {
//         if (event.data == YT.PlayerState.PLAYING && !done) {
//           console.log('fdsfds');
//           // setTimeout(stopVideo, 6000);
//           // done = true;
//         }
//       }
//     }
//   });
// }

// // 4. The API will call this function when the video player is ready.
// function onPlayerReady(event) {
//   event.target.playVideo();
// }

// // 5. The API calls this function when the player's state changes.
// //    The function indicates that when playing a video (state=1),
// //    the player should play for six seconds and then stop.
// // let done = false;
// function onPlayerStateChange(event) {
//   if (event.data == YT.PlayerState.PLAYING && !done) {
//     setTimeout(stopVideo, 6000);
//     done = true;
//   }
// }
// function stopVideo() {
//   player.stopVideo();
// }
