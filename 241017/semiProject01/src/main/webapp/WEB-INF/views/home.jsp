<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="false" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
<%@include file="template/head.jspf" %>
<style>
  .image-text {
    position: absolute;
    top: 10px;
    left: 50%;
    transform: translateX(-50%);
    color: white;
    font-size: 100px;
    font-weight: bold;
    text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
  }

  .prev, .next {
    position: absolute;
    top: 50%;
    transform: translateY(-50%);
    background-color: rgba(0, 0, 0, 0.5);
    color: white;
    border: none;
    padding: 10px;
    cursor: pointer;
  }

  .prev {
    left: 0;
  }

  .next {
    right: 0;
  }

  /* Carousel 전체 영역에 동일한 크기 설정 */
  .carousel-inner {
    width: 100%;
    height: 500px;
  }

  /* 이미지를 중앙에 두고 동일한 크기로 유지 */
  .carousel-inner .item img {
    width: 100%;
    height: 500px;
    object-fit: cover;
  }

  /* Carousel control (이전, 다음 버튼) 스타일 */
  .carousel-control {
    width: 5%;
  }

  /* Carousel caption (설명 텍스트) 중앙 정렬 */
  .carousel-caption {
    position: absolute;
    bottom: 20px;
    left: 50%;
    transform: translateX(-50%);
    font-size: 30px;
    text-align: center;
    color: white;
  }
</style>
</head>
<body>
<%@include file="template/menu.jspf" %>

<p style="text-align: center;">숙소예약</p>

<div class="jumbotron">
    <form action="searchResults.jsp" method="get" style="text-align: center;">
        <label for="location">위치:</label>
        <!-- 드롭다운 메뉴로 변경: 광주, 제주, 서울, 부산 옵션 추가 -->
        <select id="location" name="location" required>          
            <option value="서울">서울</option>
            <option value="부산">부산</option>
             <option value="광주">광주</option>
            <option value="제주">제주</option>
        </select>

        <label for="checkin">체크인:</label>
        <input type="date" id="checkin" name="checkin" required>

        <label for="checkout">체크아웃:</label>
        <input type="date" id="checkout" name="checkout" required>

        <label for="guests">인원수:</label>
        <input type="number" id="guests" name="guests" min="1" required>

        <button type="submit">검색</button>
    </form>
</div>

<h1>추천 숙소</h1>
<div id="carousel-recommend" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-recommend" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-recommend" data-slide-to="1"></li>
    <li data-target="#carousel-recommend" data-slide-to="2"></li>
    <li data-target="#carousel-recommend" data-slide-to="3"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="https://goguides.azureedge.net/media/q31l3eni/0e2d3e0f-a8d4-4e9e-86e0-f540e8b516a1.jpg" alt="오션뷰">
      <div class="carousel-caption">
        <p>오션뷰</p>
      </div>
    </div>
    
    <div class="item">
      <img src="https://cooknchefnews.com/news/data/20220914/p1065605738685968_275_thum.jpg" alt="반려동물">
      <div class="carousel-caption">
        <p>반려동물 동반가능</p>
      </div>
    </div>
    
    <div class="item">
      <img src="https://lh4.googleusercontent.com/proxy/LGvbvEEZ79A2iOC_w4t2Pw8k3HClsTSKgSgT35-ROrmj5nLMgmquF9sA5GXJM6S5SwF7H5rEAM21eHJ_qX77RzV2ZIk0Mpc6zLZvxb_ufQU" alt="펜션">
      <div class="carousel-caption">
        <p>펜션</p>
      </div>
    </div>

    <div class="item">
      <img src="https://th.bing.com/th/id/OIP.tSSuMEVvCF_RZzrXVF0BmAHaE6?w=303&h=201&c=7&r=0&o=5&pid=1.7" alt="콘도">
      <div class="carousel-caption">
        <p>콘도</p>
      </div>
    </div>
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-recommend" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-recommend" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

<h1 style="text-align: left;">인기 여행지</h1>
<div id="carousel-destination" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-destination" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-destination" data-slide-to="1"></li>
    <li data-target="#carousel-destination" data-slide-to="2"></li>
    <li data-target="#carousel-destination" data-slide-to="3"></li>
    <li data-target="#carousel-destination" data-slide-to="4"></li>
    <li data-target="#carousel-destination" data-slide-to="5"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="https://encrypted-tbn2.gstatic.com/licensed-image?q=tbn:ANd9GcShetcwkJsD-qStxOHfYuU12Jhb0XLgcMx99j8spEzKKJjvVOBQtWdn4s1s2wHyL9xV_hl65p_PuOjaNWtWUSUj5915g7eQSIBwAo9x8Q" alt="도쿄">
      <div class="carousel-caption">
        <p>도쿄</p>
      </div>
    </div>
    
    <div class="item">
      <img src="https://lh5.googleusercontent.com/p/AF1QipNWgLMvwDVGkRjsSEHQ7kShLBIVqQtqKeTbnqMv=w540-h312-n-k-no" alt="오사카">
      <div class="carousel-caption">
        <p>오사카</p>
      </div>
    </div>
    
    <div class="item">
      <img src="https://lh6.googleusercontent.com/proxy/VSDBMeOlHFia1rVgjtrzdD42kC-HsycxOoAOJ_VCsdrf1eGyS8-438Q3d5ZNb2nr8rNFxLRn6010qqIibO88yCK8tSWGlI9c4nZ4SpC3OuHk_771MhIgkGMUPNdhXZ3ytMcfVc54246Fipdt8_4UvcyhIAcAkKg=w540-h312-n-k-no" alt="파리">
      <div class="carousel-caption">
        <p>파리</p>
      </div>
    </div>

    <div class="item">
      <img src="https://encrypted-tbn2.gstatic.com/licensed-image?q=tbn:ANd9GcRfy0GJeSvOlk4DCD5F_KBpRmVv1zMAjd4Q3jxsRwasl5N3KplKt3RoJWUMrNV6Wd6E7oqYfPGRFZPvc66qqjUqlg8LD73_dEIJRNzTqg" alt="런던">
      <div class="carousel-caption">
        <p>런던</p>
      </div>
    </div>
    
    <div class="item">
      <img src="https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcRdLCH_x5hHwbCB-sxl71rvo_4vH8Cq5VNmPgubI7ZoyoIdHXoBd4y4NTmFl6F9y7iKWjxzFcuZgNzakmOSMDj7TIflZ3cUI4BNVeNOyTs" alt="부산">
      <div class="carousel-caption">
        <p>부산</p>
      </div>
    </div>
    
    <div class="item">
      <img src="https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcTqH0RUng4SnrWQdoyUIoRtulus5WLhGkIu71nJ3HzoBl3o5VNym7ETvN_fBcCImHyIbqwzUCnyLVVIQfq3005UPzyizDdC1-qPDgXgiYw" alt="제주도">
      <div class="carousel-caption">
        <p>제주도</p>
      </div>
    </div>
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-destination" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-destination" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

<%@include file="template/footer.jspf" %>
</body>
</html>





