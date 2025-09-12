const html = document.documentElement;
document.querySelectorAll('input[name="theme"]').forEach(input => input.addEventListener("change", () => html.setAttribute("data-theme", input.value)));