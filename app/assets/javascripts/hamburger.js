document.addEventListener("DOMContentLoaded", function () {
    const hamburger = document.querySelector(".hamburger");
    const slidingMenu = document.querySelector(".sliding-menu");
  
    hamburger.addEventListener("click", function () {
      this.classList.toggle("active");
      slidingMenu.classList.toggle("active");
    });
  });
  
  document.addEventListener('turbolinks:load', function() {
    // Reattach the event handler for the hamburger button
    var hamburgerButton = document.querySelector('.hamburger-button');
    hamburgerButton.addEventListener('click', function() {
      // Toggle the menu visibility here
      var menu = document.querySelector('.menu');
      menu.classList.toggle('open');
    });
  });
  