function updateDateTime() {
let currentDate = new Date();
let currentDayNumber = currentDate.getDay();
let currentDayName = getDayName(currentDayNumber);
let currentMonth = currentDate.getMonth() + 1;
let currentYear = currentDate.getFullYear();

let shortDate = currentDayName + " " + currentDate.getDate() + "/" + currentMonth + "/" + currentYear;
let shortTime = " Time " + currentDate.getHours() + ":" + currentDate.getMinutes() + ":" + currentDate.getSeconds(); 

document.getElementById("currentDate").innerHTML = shortDate;
document.getElementById("currentTime").innerHTML = shortTime;

}


function getDayName(dayNumber) {
const daysOfTheWeek = [
    "Monday", 
    "Tuesday", 
    "Wednesday", 
    "Thursday", 
    "Friday", 
    "Saturday", 
    "Sunday"
];

return daysOfTheWeek[dayNumber - 1];


}

setInterval(updateDateTime,1000);