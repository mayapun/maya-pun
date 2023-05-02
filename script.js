const toggleSwitch = document.querySelector('input[type="checkbox"]');



// Dark or Light Images 

function imageMode(color){
    image1.src = `img/undraw_proud_coder_${color}.svg`;
    image2.src = `img/undraw_feeling_proud_${color}.svg`;
    image3.src = `img/undraw_conceptual_idea_${color}.svg`
}
// Dark Mode Styles
function darkMode(){
    nav.style.backgroundColor = 'rgb(0 0 0 / 50%)';
    textBox.style.backgroundColor = 'rgb(255 255 255 / 50%)';
    textBox1.style.backgroundColor = 'rgb(255 255 255 / 50%)';
    textBox2.style.backgroundColor = 'rgb(255 255 255 / 50%)';
    textBox3.style.backgroundColor = 'rgb(255 255 255 / 50%)';
    textBox4.style.backgroundColor = 'rgb(255 255 255 / 50%)';
    textBox5.style.backgroundColor = 'rgb(255 255 255 / 50%)';
    toggleIcon.children[1].classList.replace('fa-sun', 'fa-moon');
    // imageMode('dark');
}


// Light Mode Styles 
function lightMode(){

    nav.style.backgroundColor = 'rgb(255 255 255 / 50%)';
    textBox.style.backgroundColor = 'rgb(0 0 0 / 50%)';  
    textBox1.style.backgroundColor = 'rgb(0 0 0 / 50%)';  
    textBox2.style.backgroundColor = 'rgb(0 0 0 / 50%)';  
    textBox3.style.backgroundColor = 'rgb(0 0 0 / 50%)';  
    textBox4.style.backgroundColor = 'rgb(0 0 0 / 50%)'; 
    textBox5.style.backgroundColor = 'rgb(0 0 0 / 50%)'; 
    toggleIcon.children[0].textContent = 'Light Mode';
    toggleIcon.children[1].classList.replace('fa-moon', 'fa-sun');
    imageMode('light');
}

// Switch Theme Dynamically
function switchTheme(event){
    if(event.target.checked){
        document.documentElement.setAttribute('data-theme', 'dark');
        localStorage.setItem('theme', 'dark');
        darkMode();
    }else{
        document.documentElement.setAttribute('data-theme', 'light');
        localStorage.setItem('theme', 'light');
        lightMode();
    }
}
//Event Listener
toggleSwitch.addEventListener('change', switchTheme); 

// Check Local Storage For Theme
const currentTheme = localStorage.getItem('theme');
if(currentTheme){
    document.documentElement.setAttribute('data-theme', currentTheme);
    if(currentTheme === 'dark'){
        toggleSwitch.checked = true;
        darkMode();
    }
}