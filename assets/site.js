const menuToggle = document.getElementById("menu-toggle");
const menuClose = document.getElementById("menu-close");
const mobileNav = document.getElementById("mobile-nav");
const overlay = document.getElementById("overlay");

function openMenu() {
  mobileNav.classList.add("active");
  overlay.classList.add("active");
}

function closeMenu() {
  mobileNav.classList.remove("active");
  overlay.classList.remove("active");
}

menuToggle?.addEventListener("click", openMenu);
menuClose?.addEventListener("click", closeMenu);
overlay?.addEventListener("click", closeMenu);
