const theme = document.querySelectorAll('input[name="theme"]');

theme.forEach(themeSelected => {
    themeSelected.addEventListener('change', () => {
        console.log(themeSelected.value);
    });
});