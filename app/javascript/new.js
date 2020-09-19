window.addEventListener('load', function(){
  const first = document.getElementById("heading_a");
  const second = document.getElementById("heading_b");
  const third = document.getElementById("heading_c");
  const firstA = document.getElementById("heading_a_a");
  const firstAb = document.getElementById("heading_a_b");
  const secondA = document.getElementById("heading_b_a");
  const secondAb = document.getElementById("heading_b_b");
  const thirdA = document.getElementById("heading_c_a");
  const thirdAb = document.getElementById("heading_c_b");
  second.setAttribute("style", "visibility:hidden");
  third.setAttribute("style", "visibility:hidden");
  firstA.setAttribute("style", "visibility:hidden");
  firstAb.setAttribute("style", "visibility:hidden");
  secondA.setAttribute("style", "visibility:hidden");
  secondAb.setAttribute("style", "visibility:hidden");
  thirdA.setAttribute("style", "visibility:hidden");
  thirdAb.setAttribute("style", "visibility:hidden");
  first.addEventListener('input', function(){
    second.removeAttribute("style");
    second.animate([{opacity: '0'}, {opacity: '1'}], 500);
    firstA.removeAttribute("style");
    firstA.animate([{opacity: '0'}, {opacity: '1'}], 500);
  },{
    once: true
  });
  firstA.addEventListener('input', function(){
    firstAb.removeAttribute("style");
    firstAb.animate([{opacity: '0'}, {opacity: '1'}], 500);
  },{
    once: true
  });
  second.addEventListener('input', function(){
    secondA.removeAttribute("style");
    secondA.animate([{opacity: '0'}, {opacity: '1'}], 500);
    third.removeAttribute("style");
    third.animate([{opacity: '0'}, {opacity: '1'}], 500);
  },{
    once: true
  });
  secondA.addEventListener('input', function(){
    secondAb.removeAttribute("style");
    secondAb.animate([{opacity: '0'}, {opacity: '1'}], 500);
  },{
    once: true
  });
  third.addEventListener('input', function(){
    thirdA.removeAttribute("style");
    thirdA.animate([{opacity: '0'}, {opacity: '1'}], 500);
  },{
    once: true
  });
  thirdA.addEventListener('input', function(){
    thirdAb.removeAttribute("style");
    thirdAb.animate([{opacity: '0'}, {opacity: '1'}], 500);
  },{
    once: true
  });
});

