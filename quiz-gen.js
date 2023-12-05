const header = document.createElement('header');
const a = document.createElement('a');
const h1 = document.createElement('h1');
const main = document.createElement('main');
const section1 = document.createElement('section');
const section2 = document.createElement('section');
const article = document.createElement('article');
const h2 = document.createElement('h2');
const h3 = document.createElement('h3');
const img = document.createElement('img');
const footer = document.createElement('footer');
const body = document.querySelector('body');
var questions;
var correctanswer = 0;
var questionnumber = 0;
localStorage.removeItem('correctanswer')

// Header
h1.innerHTML = "Fortnite LAKru Quiz";
h1.classList.add('start-load-h1-q')
a.appendChild(h1);
a.href = "index.html";
a.id = "title";
header.appendChild(a)
header.classList.add('start-load-q')
body.appendChild(header);

//Section-question
h2.id = "victory";
h2.innerHTML = 'Pytanie ' + (questionnumber+1);
h3.innerHTML =  questions[questionnumber][0];
article.appendChild(h2)
article.appendChild(h3)
section1.id = "quiz-question";
img.src = "images/quiz-logo.png";
img.alt = "Załącznik do pytania";
section1.appendChild(article);
section1.appendChild(img);
main.appendChild(section1);

//Section-answers
for(var przyciski = 0; przyciski < questions[questionnumber][1]; przyciski++){
        const button = document.createElement('button');
        button.id = "answer" + (przyciski+1);
        button.onclick = () =>{
            var aodp = button.id[6];
            questionUpdate(aodp);
            window.scrollTo(0, 0);
            body.classList.add('next-load-bscroll')
            header.classList.add('next-load')
            h1.classList.add('next-load-h1')
            setTimeout( () =>{
                body.classList.remove('next-load-bscroll')
                header.classList.remove('next-load')
                h1.classList.remove('next-load-h1')
            }, 3000)
        };
        button.innerHTML = questions[questionnumber][przyciski+2];
        section2.appendChild(button)
    }
    
    section2.id = "quiz-answers";
    main.appendChild(section2);
    
//Adding main to body
body.appendChild(main);

//Footer
footer.innerHTML = "LAKru Production";
body.appendChild(footer);

setTimeout( () =>{
    body.classList.remove('start-load-bscroll-q')
    header.classList.remove('start-load-q')
    h1.classList.remove('start-load-h1-q')
}, 2001)

function questionUpdate(odp){
    if(odp == questions[questionnumber][6]){
        correctanswer++;
    }
    setTimeout(()=>{
        for(var i = 0; i<questions[questionnumber][1]; i++){
            var delb = document.getElementById('answer'+(i+1));
            section2.removeChild(delb);
        }
        questionnumber++
        if(questionnumber == 10){
            localStorage.setItem('correctanswer', correctanswer)
            location.href = 'index-end.html'
        }
        else{
            h2.innerHTML = 'Pytanie ' + (questionnumber+1);
            h3.innerHTML = questions[questionnumber][0];
            
            for(var przyciski = 0; przyciski < questions[questionnumber][1]; przyciski++){
                const button = document.createElement('button');
                button.id = "answer" + (przyciski+1);
                button.onclick = () =>{
                    var aodp = button.id[6];
                    questionUpdate(aodp);
                    window.scrollTo(0, 0);
                    body.classList.add('next-load-bscroll')
                    header.classList.add('next-load')
                    h1.classList.add('next-load-h1')
                    setTimeout( () =>{
                        body.classList.remove('next-load-bscroll')
                        header.classList.remove('next-load')
                        h1.classList.remove('next-load-h1')
                    }, 3000)
                };
                button.innerHTML = questions[questionnumber][przyciski+2];
                section2.appendChild(button)
            }
        }
    }, 1500)
}
