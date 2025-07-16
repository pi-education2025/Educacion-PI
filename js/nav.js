// js/nav.js

document.addEventListener('DOMContentLoaded', () => {
  const menuToggle = document.getElementById('menu-toggle');
  const navEnlaces = document.getElementById('nav-enlaces');

  menuToggle.addEventListener('click', () => {
    const isExpanded = menuToggle.getAttribute('aria-expanded') === 'true';

    // Alternar estado aria-expanded
    menuToggle.setAttribute('aria-expanded', String(!isExpanded));

    // Alternar clase para mostrar/ocultar menú
    navEnlaces.classList.toggle('show');
  });
});
