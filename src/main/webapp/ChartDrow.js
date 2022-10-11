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
ctx.arc(255, 255, 200, Math.PI, -Math.PI/2) // Рисуем и закршиваем четверть круга
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

// function compareData(){
    const r = $('input[name="r"]:checked').val();

    console.log(typeof r)
// }