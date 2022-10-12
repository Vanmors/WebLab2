// Получаем canvas элемент
let canvas = document.getElementById('canvas');

// Указываем элемент для 2D рисования
let ctx = canvas.getContext('2d');

ctx.fillStyle = '#3399ff'; // Задаём чёрный цвет для линий
// ctx.fillRect(10, 10, 100, 100);
ctx.lineWidth = 2.0; // Ширина линии
ctx.beginPath(); // Запускает путь
ctx.moveTo(255, 10); // Рисуем ось
ctx.lineTo(255, 490);
ctx.moveTo(10, 255);
ctx.lineTo(490, 255);

ctx.fillRect(255, 255, 195, -100) // Рисуем и закршиваем прямоугльник
ctx.stroke(); // Делаем контур

ctx.beginPath();
ctx.moveTo(450, 255); // Рисуем и закршиваем треугольник
ctx.lineTo(255, 445);
ctx.lineTo(255, 255);
ctx.lineTo(450, 255);
ctx.fill();
ctx.stroke();


ctx.beginPath();
ctx.arc(255, 255, 200, Math.PI, -Math.PI / 2) // Рисуем и закршиваем четверть круга
ctx.moveTo(255, 55);
ctx.lineTo(255, 255);
ctx.lineTo(55, 255);

ctx.fill();
ctx.stroke();


ctx.moveTo(250, 55); // Вставляем R на график
ctx.lineTo(260, 55);
ctx.fillStyle = 'black'; // Задаём чёрный цвет для линий
ctx.font = "30px Verdana";
ctx.fillText("R", 260, 50)
ctx.moveTo(450, 250);
ctx.lineTo(450, 260);
ctx.font = "30px Verdana";
ctx.fillText("R", 455, 250)
ctx.moveTo(250, 445);
ctx.lineTo(260, 445);
ctx.fillText("-R", 270, 460)
ctx.moveTo(55, 250);
ctx.lineTo(55, 260);
ctx.fillText("-R", 15, 250)
ctx.stroke(); // Делаем контур

function validateX(){
    let x = document.getElementById("x-textinput").value;
    if (x < -2 || x > 2){
        alert("Некорректно введённые данные")
        document.getElementById("x-textinput").value = "";
    }
}

function validateY(){
    let x = document.getElementById("y-textinput").value;
    if (x < -5 || x > 3){
        alert("Некорректно введённые данные")
        document.getElementById("y-textinput").value = "";
    }
}

function mathFloor(n){
    if (n<-1.5){
        return -1.5;
    }
    else if (n > -1.5 && n < -1){
        return -1;
    }
    else if (n > -1 && n < -0.5){
        return -0.5;
    }
    else if (n > -0.5 && n < 0){
        return 0;
    }
    else if (n > 0 && n < 0.5){
        return 0.5;
    }
    else if (n > 0.5 && n < 1){
        return 1;
    }
    else if (n > 1 && n < 1.5){
        return 1.5;
    }
    else if (n > 1.5 && n < 2){
        return 2;
    }
}

function pos(e) {
    const r = $('input[name="r"]:checked').val();
    if (r === undefined) {
        alert("Введите R")
    } else {
        let x = e.pageX;
        let y = e.pageY;
        const plot_canvas = document.getElementById("canvas").getBoundingClientRect();
        if (x > 359 && x < 559 && y < 409 && y > 209) {
            let outX = (x - plot_canvas.x - 5) * 2.5;
            let outY = (y - plot_canvas.width) * 2.5;
            const plot_canvass = document.getElementById("canvas");
            const plot_context = plot_canvass.getContext("2d");
            plot_context.beginPath();
            plot_context.rect(outX, outY, 5, 5);
            let resX;
            let resY

            if (outX > 255) {
                resX = (outX - 250) * (r / 200);
            } else if (outX === 255) {
                resX = 0;
            } else {
                resX = (outX - 250) * (r / 200);
            }
            if (outY > 255) {
                resY = (outY - 250) * (r / 200) * -1;
            } else if (outY === 255) {
                resY = 0;
            } else {
                resY = (outY - 250) * (r / 200) * -1;
            }

            resX = mathFloor(resX)
            document.getElementById("y-textinput").value = resY;
            document.getElementById("x-textinput").value = resX;

            validateX()
            validateY()
            ctx.stroke(); // Делаем контур
        }
    }
}



document.addEventListener('DOMContentLoaded', () => {
    document.getElementById("canvas").addEventListener('click', pos);
})