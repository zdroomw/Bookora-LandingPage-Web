/* Bookora — interacciones de la landing page (sin librerías externas) */
const menuToggle = document.querySelector('.menu-toggle');
const menuLinks = document.querySelector('.nav-links');
const topButton = document.querySelector('.back-top');
const navItems = Array.from(document.querySelectorAll('.nav-links a[href^="#"]'));

function closeMenu() {
  if (!menuToggle || !menuLinks) return;
  menuLinks.classList.remove('is-open');
  menuToggle.setAttribute('aria-expanded', 'false');
  menuToggle.setAttribute('aria-label', 'Abrir menú');
}

if (menuToggle && menuLinks) {
  menuToggle.addEventListener('click', () => {
    const isOpen = menuLinks.classList.toggle('is-open');
    menuToggle.setAttribute('aria-expanded', String(isOpen));
    menuToggle.setAttribute('aria-label', isOpen ? 'Cerrar menú' : 'Abrir menú');
  });
  menuLinks.querySelectorAll('a').forEach(link => link.addEventListener('click', closeMenu));
  document.addEventListener('click', e => {
    if (!menuLinks.contains(e.target) && !menuToggle.contains(e.target)) closeMenu();
  });
  document.addEventListener('keydown', e => {
    if (e.key === 'Escape') {
      const wasOpen = menuLinks.classList.contains('is-open');
      closeMenu();
      if (wasOpen) menuToggle.focus();
    }
  });
  window.addEventListener('resize', () => {
    if (window.innerWidth > 960) closeMenu();
  });
}

// Indica la sección actual sin romper la navegación por anclas.
const sections = ['inicio', 'como-funciona', 'beneficios', 'para-quien', 'explorar', 'preguntas', 'unete']
  .map(id => document.getElementById(id))
  .filter(Boolean);
const updateNavigation = () => {
  const selected = [...sections].reverse().find(section => section.getBoundingClientRect().top <= 155);
  const current = selected?.id || 'inicio';
  navItems.forEach(link => {
    const isCurrent = link.hash === `#${current}`;
    link.classList.toggle('nav-active', isCurrent);
    if (isCurrent) link.setAttribute('aria-current', 'location');
    else link.removeAttribute('aria-current');
  });
  if (topButton) topButton.classList.toggle('visible', window.scrollY > 620);
};
window.addEventListener('scroll', updateNavigation, { passive: true });
window.addEventListener('load', updateNavigation);

// Evita que varios acordeones de preguntas permanezcan abiertos a la vez.
const faqs = document.querySelectorAll('.faq-items details');
faqs.forEach(item => item.addEventListener('toggle', () => {
  if (item.open) faqs.forEach(other => { if (other !== item) other.open = false; });
}));

const year = document.getElementById('current-year');
if (year) year.textContent = String(new Date().getFullYear());

// Tres vistas de producto: controles reales (teclado, clic), sin simular una compra o GPS.
const previewTabs = Array.from(document.querySelectorAll('[role="tab"][data-preview]'));
const previewPanels = Array.from(document.querySelectorAll('[role="tabpanel"]'));
function activatePreview(tab, focus = false) {
  previewTabs.forEach(item => {
    const active = item === tab;
    item.setAttribute('aria-selected', String(active));
    item.tabIndex = active ? 0 : -1;
  });
  previewPanels.forEach(panel => panel.hidden = panel.id !== tab.getAttribute('aria-controls'));
  if (focus) tab.focus();
}
previewTabs.forEach((tab, index) => {
  tab.addEventListener('click', () => activatePreview(tab));
  tab.addEventListener('keydown', event => {
    const next = event.key === 'ArrowRight' ? (index + 1) % previewTabs.length
      : event.key === 'ArrowLeft' ? (index - 1 + previewTabs.length) % previewTabs.length
      : event.key === 'Home' ? 0 : event.key === 'End' ? previewTabs.length - 1 : null;
    if (next !== null) { event.preventDefault(); activatePreview(previewTabs[next], true); }
  });
});
