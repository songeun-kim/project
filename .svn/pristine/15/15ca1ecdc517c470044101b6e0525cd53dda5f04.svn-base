$(function(){

    // 라디오 버튼 클릭시 그래프 전환 
    $('#r1').on('click',function(){
        if($('.container1').css('display')!='none'){
            $('.container2').show().siblings('div').hide();
        }else if($('.container2').css('display')!='none'){
            $('.container1').show().siblings('div').hide();
        }
    });
    $('#r2').on('click',function(){
        if($('.container2').css('display')!='none'){
            $('.container1').show().siblings('div').hide();
        }else if($('.container1').css('display')!='none'){
            $('.container2').show().siblings('div').hide();
        }
    });
    


// 막대 그래프
    var ctx = document.getElementById("myChart").getContext('2d');
    //차트 선언
    var myChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: ["3월", "4월", "5월", "6월", "7월", "8월"],
            datasets: [{
                label: '내 개인 점수',
                data: [12, 19, 3, 5, 2, 3  ],
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(255, 206, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)',
                    'rgba(153, 102, 255, 0.2)',
                    'rgba(255, 159, 64, 0.2)'
                ],
                borderColor: [
                    'rgba(255,99,132,1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)',
                    'rgba(153, 102, 255, 1)',
                    'rgba(255, 159, 64, 1)'
                ],
                borderWidth: 1
            }]
        },
        options: {
            maintainAspectRatio: true, // default value. false일 경우 포함된 div의 크기에 맞춰서 그려짐.
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero:true
                    }
                }]
            }
        }
    });

    // <!-- 꺾은선 그래프 -->
        var ctx = document.getElementById("myChart1").getContext('2d');
        //차트 선언
        var myChart = new Chart(ctx, {
            type: 'line',
            data: {
                labels: ["3월", "4월", "5월", "6월", "7월", "8월"],
                datasets: [{
                    label: '내 개인 점수',
                    data: [12, 19, 3, 5, 2, 3  ],
                    backgroundColor: [
                        'rgba(255, 99, 132, 0.2)',
                    ],
                    fill:false,
                    borderColor: [
                        'rgba(255,99,132,1)',
                    ],
                    borderWidth: 1
                }]
            },
            options: {
                maintainAspectRatio: true, // default value. false일 경우 포함된 div의 크기에 맞춰서 그려짐.
                scales: {
                    yAxes: [{
                        ticks: {
                            beginAtZero:true
                        }
                    }]
                }
            }
        });
    })