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
            labels: ["5월", "6월", "7월", "8월", "9월", "10월"],
            datasets: [{
                label: '내 개인 점수',
                data: ['${list}' ],
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
                    data: [0, 0, 0, 0, 0, 0 ],
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

		var button = document.getElementById("sendAjax");
		button.addEventListener("click", function() {
    		sendAjax('http://localhost:8080/personal_score/score_select');
		})
		
		function sendAjax(url) {
			var oReq = new XMLHttpRequest();
			
			oReq.open('POST', url);
			oReq.setRequestHeader('Content-Type', "application/json") // json 형태로 보낸다                         
    		oReq.send();

			oReq.addEventListener('load', function() {
				var result = JSON.parse(oReq.responseText);
        		var score = result.score;
        		var comp_data = data.datasets[0].data;

				for (var i = 0; i < comp_data.length; i++) {
	            	comp_data[i] = score[i];
	       		}

				data.datasets[0].data = comp_data;
		        myChart.update();
			})
		}
		
		app.post('/', function(req, res) {
			var responseData = {};
			
			var query =  connection.query('select avg from score where mem_id="test4" ORDER BY seq DESC limit 5', function(err, rows) {
				responseData.score = [];
    			if(err) throw err;
    			if(rows[0]) {
					responseData.result = "ok";
					 rows.forEach(function(val){
						responseData.score.push(val.score);
					})
				}
				else{
			      responseData.result = "none";
			      responseData.score = "";
			    }
				res.json(responseData);
			});
		});

    });