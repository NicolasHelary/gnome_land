const animationTrololo = () => {

  const show = document.querySelector("#show-page");
  const animewow = document.getElementById("anime-wow");

  if (show) {
    animewow.play();
  }

  const reservation = document.querySelector("#index-path");
  const wow = document.getElementById("wow-willy");

  if (reservation) {
    wow.play();
  }


  const modal = document.querySelector("#btn-modal");
  const laugh = document.getElementById("laugh");


  modal.addEventListener('click', (event => {
    laugh.play();
  }))
}


// document.onclick = function() {
//   audio.play();
// }
export {animationTrololo}
