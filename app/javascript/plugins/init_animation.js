const animationTrololo = () => {

  const show = document.querySelector("#show-page");
  const animewow = document.getElementById("anime-wow");

  if (show) {
    animewow.play();
  }

  const modal = document.querySelector("#btn-modal");
  const laugh = document.getElementById("laugh");

  modal.onclick = function() {
    laugh.play();
  }

  // const reservation = document.querySelector("#IDduContainerDElaPAGEdeRESERVATION");
  // const wow = document.getElementById("wow");

  // if (reservation) {
  //   wow.play();
  // }

}


// document.onclick = function() {
//   audio.play();
// }
export {animationTrololo}
