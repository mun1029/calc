function userNew() {
  const nextBtn = document.getElementById('next-btn')
  const backBtn = document.getElementById('back-btn')
  const firstGroup = document.getElementById('first-group')
  const secondGroup = document.getElementById('second-group')
  
  nextBtn.addEventListener('click', function(){
    firstGroup.setAttribute('style', 'display:none;')
    secondGroup.setAttribute('style', 'display:block;')
  });
  backBtn.addEventListener('click', function(){
    secondGroup.setAttribute('style', 'display:none;')
    firstGroup.setAttribute('style', 'display:block;')
  });
}
window.addEventListener('load', userNew)

function frameworkNew() {
 
  const formSelect = document.getElementById('select')
  const frameworkImage = document.getElementById('framework-image')

  frameworkImage.innerHTML = `<img src="assets/logo.png" class='new-framework-image'>`
  formSelect.onchange = function(){
    if (this.value == 1) {
      frameworkImage.innerHTML = `<img src="assets/logo.png" class='new-framework-image'>`
    } else if (this.value == 2) {
      frameworkImage.innerHTML = `<img src="assets/home_icon.png" class='new-framework-image'>`
    };
  };
}
window.addEventListener('load', frameworkNew)

function headerPullDown(){

  const rightList = document.getElementById('right-list')
  const headerPullDown = document.getElementById('pull-down')

  headerPullDown.setAttribute('style','display:none;')
  rightList.addEventListener('click', function(){
    if (headerPullDown.getAttribute('style') == 'display:none;') {
      headerPullDown.removeAttribute('style','display:block;')
    } else {
      headerPullDown.setAttribute('style','display:none;')
    }
  });
}
window.addEventListener('load', headerPullDown)

document.addEventListener('load', () => {
  function scrollToEnd() {
    const messageDetails = document.getElementById("scroll-inner");
    messageDetails.scrollTop = messageDetails.scrollHeight;
  } 
  scrollToEnd()
});
