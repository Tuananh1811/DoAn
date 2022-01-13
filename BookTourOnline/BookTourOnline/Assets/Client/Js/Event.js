// @ts-nocheck
const smallImgs = document.querySelectorAll('.small-img');
const bigImg = document.getElementById('big-img');
// @ts-ignore
const length = smallImgs.length;
console.log(smallImgs);
for (let i = 0; i < length; i++) {
    const smallImg = smallImgs[i];
    smallImg.addEventListener("click", function(e) {
        e.preventDefault();

        bigImg.src = smallImg.src;
    })

}
//var listLi = document.getElementsByClassName("style_filter-li");
//console.log(listLi);
//for (var i = 0; i < listLi.length; i++) {
//    const item = listLi[i];
//    console.log("hello");
//    item.addEventListener("click", function (e) {
//        console.log(item);
       
//        item.classList.add("active");
        
//    })
//}