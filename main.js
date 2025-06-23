document.addEventListener('DOMContentLoaded', function() {
  const sonstigeCheckbox = document.getElementById('sonstige');
  const sonstigeText = document.getElementById('sonstige-text');

  sonstigeCheckbox.addEventListener('change', function() {
    if (this.checked) {
      sonstigeText.style.display = 'block';
    } else {
      sonstigeText.style.display = 'none';
    }
  });
});
// Add JS here