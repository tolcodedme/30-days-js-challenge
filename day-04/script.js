console.log('DAY 04 - Javascript Challenge - Accordion FAQ');

const faqs = document.querySelectorAll('.faq');
const active = document.querySelector('.active');

faqs.forEach(faq => {
    faq.addEventListener('click', ()=>{
        faqs.forEach(faq => faq.classList.remove('active'))
        faq.classList.toggle('active');
    })
})