document.addEventListener('DOMContentLoaded', function() {
  // Steuerung für "Sonstige" System-Art
  const sonstigeCheckboxSystem = document.getElementById('sonstige');
  const sonstigeTextSystem = document.getElementById('sonstige-text');

  sonstigeCheckboxSystem.addEventListener('change', function() {
    if (this.checked) {
 sonstigeTextSystem.style.display = 'block';
    } else {
 sonstigeTextSystem.style.display = 'none';
    }
  });
});