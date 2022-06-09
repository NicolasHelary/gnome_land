const animationTrololo = () => {

  const show = document.querySelector("#show-page");
  const animewow = document.getElementById("anime-wow");

  if (show) {
    animewow.play();
  }

  const modal = document.querySelector("#btn-modal");
  const laugh = document.getElementById("laugh")

  modal.onclick = function() {
    laugh.play();
  }
}


// document.onclick = function() {
//   audio.play();
// }
export {animationTrololo}
