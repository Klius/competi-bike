
function drawChart(){
var chart = new google.visualization.ColumnChart(document.getElementById('graph'));
var data = new google.visualization.DataTable(JSON.parse(stats));

var options = {
    title: 'Kilometros por día',
    hAxis: {title: '',  titleTextStyle: {color: '#333'}},
    vAxis: {
            minValue: 0,
            format: '#\'km\''
        },
    colors:['#bfce6c']
};

chart.draw(data, options);
}