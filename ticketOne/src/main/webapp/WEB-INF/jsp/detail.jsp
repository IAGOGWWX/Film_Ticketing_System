<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>详情页</title>
</head>
<body>

    <div>
        <div>
            <a><img src="${pageContext.request.contextPath}${filmDetaill.imgPath}"></a>
        </div>
        <div>
            片名：${filmDetaill.name}
        </div>
        <div>
            主演：${filmDetaill.player}
        </div>
        <div>
            类型：${filmDetaill.type}
        </div>
        <div>
            导演：${filmDetaill.director}
        </div>
        <div>
            国家：${filmDetaill.country}
        </div>
        <div>
            时长：${filmDetaill.length}
        </div>
        <div>
            上映日期：<fmt:formatDate value="${filmDetaill.playTime}" pattern="yyyy-MM-dd"></fmt:formatDate>
        </div>

        <div>
            描述：${filmDetaill.synopsis}
        </div>
    </div>




</body>
</html>
