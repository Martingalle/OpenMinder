// opening menu

window.onload = function() {
  bombMenu_init();
};

/* menu animation */
function bombMenu_init() {
  var toggleMenuBtns = document.getElementsByClassName("menu-toggle-btn");
  for(var i = 0; i < toggleMenuBtns.length; i++)  {
    toggleMenuBtns[i].onclick = expand;   /* attach an event handler to every menu-toggle-btn in the page */
  }

  function expand(e) {
    e.target.classList.toggle("active");
  }
}



/* Utility: just in case more than one menu is needed - shorthand for for loops */
function forEach(nodeList, callback) {
  for(var i = 0; i < nodeList.length; i++) {
    callback.call(nodeList[i]);
  }
}
