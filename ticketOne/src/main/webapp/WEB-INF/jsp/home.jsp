<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css">


</head>
<body>


   


    <div class="main">



        <nav class="nav">
            <a href="" >正在热映</a>
            <a href="" class="selector">即将上映</a>
            <a href="" >经典影片</a>
        </nav>



        <div class="container clearfix">

            <div class="choose-area clearfix">

                <!-- 列表 -->
                <div class="chose-item clearfix">
                    <div class="left">
                        类型 :
                    </div>
                    <div class="right">
                        <ul>
                            <li><a class="select" href="">Lorem.</a><a href="">Eligendi!</a><a href="">Iusto?</a><a href="">Necessitatibus.</a><a href="">Sapiente.</a><a href="">Quibusdam!</a><a href="">Hic?</a><a href="">Accusantium.</a><a href="">Nam.</a><a href="">Omnis?</a><a href="">Maiores?</a><a href="">Doloremque.</a><a href="">Vero!</a><a href="">Aliquam?</a><a href="">Mollitia.</a><a href="">Temporibus.</a><a href="">Ut.</a><a href="">Iure!</a><a href="">Natus.</a><a href="">Repellat.</a></li>
                        </ul>
                    </div>
                </div>
                <div class="chose-item  clearfix">
                    <div class="left">
                        区域 :
                    </div>
                    <div class="right">
                        <ul>
                            <li><a class="select" href="">Lorem.</a><a href="">Eligendi!</a><a href="">Iusto?</a><a href="">Necessitatibus.</a><a href="">Sapiente.</a><a href="">Quibusdam!</a><a href="">Hic?</a><a href="">Accusantium.</a><a href="">Nam.</a><a href="">Omnis?</a><a href="">Maiores?</a><a href="">Doloremque.</a><a href="">Vero!</a><a href="">Aliquam?</a><a href="">Mollitia.</a><a href="">Temporibus.</a><a href="">Ut.</a><a href="">Iure!</a><a href="">Natus.</a><a href="">Repellat.</a></li>
                        </ul>
                    </div>
                </div>
                <div class="chose-item clearfix non-line">
                    <div class="left">
                        年代 :
                    </div>
                    <div class="right">
                        <ul>
                            <li><a class="select" href="">Lorem.</a><a href="">Eligendi!</a><a href="">Iusto?</a><a href="">Necessitatibus.</a><a href="">Sapiente.</a><a href="">Quibusdam!</a><a href="">Hic?</a><a href="">Accusantium.</a><a href="">Nam.</a><a href="">Omnis?</a><a href="">Maiores?</a><a href="">Doloremque.</a><a href="">Vero!</a><a href="">Aliquam?</a><a href="">Mollitia.</a><a href="">Temporibus.</a><a href="">Ut.</a><a href="">Iure!</a><a href="">Natus.</a><a href="">Repellat.</a></li>
                        </ul>
                    </div>
                </div>





            </div>

            <!-- 电影图片 评分 名称-->

            <div class="movies clearfix">


                <c:forEach items="${filmVoList}" var="film" >
                    <div class="movie-item">
                        <div class="poster">
                            <a href="filmInfo?filmId=${film.filmId}">
                                <img src="${pageContext.request.contextPath}${film.imgPath}" alt="">
                            </a>
                        </div>
                        <div class="movie-name">
                                ${film.name}
                        </div>
                        <div class="movie-name">
                            导演：${film.director}
                        </div>

                    </div>
                </c:forEach>


            </div>




            <div class="pages" >
                <a class="selector" href="" class="prev"> 上一页</a><a href="">1</a><a href="">2</a><a href="">3</a><a href="">4</a><a href="">5</a><a href="">6</a><a href="">7</a><a href="">8</a><a href="">9</a><a href="">10</a><a href="" class="next">下一页</a>
            </div>


        </div>




    </div>


</body>
</html>