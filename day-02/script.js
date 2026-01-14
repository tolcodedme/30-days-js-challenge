// Tol Coded

let darkmode = localStorage.getItem('darkmode');
const themeSwitch = document.querySelector('.themeSwitch')
const body = document.body;

const enableDarkMode = () =>{
    body.classList.add('darkmode');
    localStorage.setItem('darkmode', 'active');

}

const disableDarkMode = () =>{
    body.classList.remove('darkmode');
    localStorage.setItem('darkmode', null);

}

if (darkmode === 'active') {
    enableDarkMode();
}


themeSwitch.addEventListener("click", () =>{
    darkmode = localStorage.getItem('darkmode');
    (darkmode !== 'active') ? enableDarkMode() : disableDarkMode()

})