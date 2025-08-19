// adds the `.header__item--highlight` class to the navigation menu element when the mouse is over it
document.addEventListener("DOMContentLoaded", function () { // wait for the DOM to load completely before executing

  const items = document.querySelectorAll(".header__item"); // stores all menu elements in an array
  const permanentItem = document.querySelector(".header__item.header__item--highlight"); // gets the element that already has the included class

  // iterates over each element to check and manipulate the class
  items.forEach(item => {
    // adds the class to the item when the mouse is over it
    item.addEventListener("mouseenter", () => { item.classList.add("header__item--highlight"); });

    // removes the class from the item on mouse-out, unless the item already has the class loaded in the document (`permanentItem`)
    item.addEventListener("mouseleave", () => { item !== permanentItem && item.classList.remove("header__item--highlight"); });
  });

});