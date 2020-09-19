window.addEventListener('load', function(){
  const newBtn = document.querySelector(".new-btn a")
  const showBtn = document.getElementsByClassName("list-a-btn")
  newBtn.addEventListener('mouseover', function(){
    newBtn.setAttribute("style", "background-color: rgb(207, 237, 248);");
  newBtn.addEventListener('mouseout', function(){
    newBtn.removeAttribute("style", "background-color: rgb(207, 237, 248);");
    });
  });
  for(let i = 0; i < showBtn.length; i++) {
    showBtn[i].addEventListener('mouseover', function(){
      showBtn[i].setAttribute("style", "background-color: rgb(207, 237, 248);");
    showBtn[i].addEventListener('mouseout', function(){
        showBtn[i].removeAttribute("style", "background-color: rgb(207, 237, 248);");
    
    });
  });
}
});
