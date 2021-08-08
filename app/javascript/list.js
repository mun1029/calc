function menuBtn() {
  const menuBtn = document.getElementById("menu-btn")

  document.getElementById("side-content").style.display ="none";
  menuBtn.addEventListener('click', function(){
    const sideContent = document.getElementById("side-content")

    if(sideContent.style.display=="block"){
      sideContent.style.display ="none";
    }else{
      sideContent.style.display ="block";
    }
  });
}
window.addEventListener('load', menuBtn)