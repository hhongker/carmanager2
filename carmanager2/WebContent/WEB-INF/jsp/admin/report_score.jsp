<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>违章信息统计</title>
    <!-- 引入 echarts.js -->
    <script src="${pageContext.request.contextPath}/js/echarts.min.js"></script>
</head>
<body>
    <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
    <div id="main" style="width: 100%;height:100%; min-height:600px;" ></div>
    <script type="text/javascript">
    var myChart = echarts.init(document.getElementById('main'));
    option = {
    	    title: {
    	        text: '分值统计',
    	        subtext: '分值统计',
    	        left: 'center'
    	    },
    	    tooltip: {
    	        trigger: 'item',
    	        formatter: '{a} <br/>{b} : {c} ({d}%)'
    	    },
    	    legend: {
    	        left: 'center',
    	        top: 'bottom',
    	        data: ${names}
    	    },
    	    toolbox: {
    	        show: true,
    	        feature: {
    	            mark: {show: true},
    	            dataView: {show: true, readOnly: false},
    	            magicType: {
    	                show: true,
    	                type: ['pie', 'funnel']
    	            },
    	            restore: {show: true},
    	            saveAsImage: {show: true}
    	        }
    	    },
    	    series: [
    	        
    	        {
    	            name: '分值统计',
    	            type: 'pie',
    	            radius: [30, 110],
    	            center: ['50%', '50%'],
    	            roseType: 'area',
    	            data: ${scores}
    	        }
    	    ]
    	};

    myChart.setOption(option);
    </script>
</body>
</html>