console.log('DAY 01 - Javascript Challenge - Counter Intelligent');

const plus = document.querySelector(".plus");
const minus = document.querySelector(".minus");
const count = document.querySelector(".count");

let a = 1;

plus.addEventListener("click", ()=>{
    a++;
    let incr = (a < 10) ? "0" + a : a;
    count.innerText = incr ;
})

minus.addEventListener("click", ()=>{
    if (a > 0) {
        a--;
        let incr = (a < 10) ? "0" + a : a;
        count.innerText = incr ;
        
    }
})