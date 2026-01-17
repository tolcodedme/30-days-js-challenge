console.log('DAY 05 - Javascript Challenge - Modal Réutilisable');

const modalButtonTrigger = document.querySelector('.modal-btn-trigger')
const modalOverlay = document.querySelector('.modal-overlay')
const modalButtonCloser = document.querySelector('.modal-btn-closer')
const modal = document.querySelector('.modal');


const modalCloseFunction = ()=> {
    modalOverlay.classList.remove('active')
    
}

modalButtonTrigger.addEventListener('click', ()=>{
    modalOverlay.classList.add('active');
})

modalButtonCloser.addEventListener('click', ()=>{
    modalCloseFunction();
})

modalOverlay.addEventListener('click', ()=>{
    modalCloseFunction();
})