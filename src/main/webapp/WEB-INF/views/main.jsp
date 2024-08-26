<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<html>
<head>
    <title>[ 메인 ]- Ezenblbug</title>
    <link rel="icon" href="${pageContext.request.contextPath}/resources/assets/zenblbug_logo.png" type="image/png">
    <link href="${path}/resources/main/style.css" rel="stylesheet" type="text/css"/>
    <link href="${path}/resources/app.css" rel="stylesheet" type="text/css"/>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="${path}/resources/main/main.js"></script>

</head>
<body>
<jsp:include page="/WEB-INF/views/header/header.jsp"/>

<div class="container">

    <div class="main-container">
        <div class="main-left-box">
            <div class="carousel-container">
                <div class="carousel-slides">
                    <img class="cody-img carousel-slide"
                         src="https://img.tumblbug.com/eyJidWNrZXQiOiJ0dW1ibGJ1Zy1hc3NldHMiLCJrZXkiOiJoZXJvZXMvbWFpbl9wY193YXRlcmJlYWRzXygxKS5qcGciLCJlZGl0cyI6eyJyZXNpemUiOnsid2lkdGgiOjE1NDIsImhlaWdodCI6NTYwLCJ3aXRob3V0RW5sYXJnZW1lbnQiOnRydWV9fX0="
                         class="">
                    <img class="cody-img carousel-slide"
                         src="https://img.tumblbug.com/eyJidWNrZXQiOiJ0dW1ibGJ1Zy1hc3NldHMiLCJrZXkiOiJoZXJvZXMvbWFpbl9wY18yMDI0ZmFuY2FsbF8oMSkuanBnIiwiZWRpdHMiOnsicmVzaXplIjp7IndpZHRoIjoxNTQyLCJoZWlnaHQiOjU2MCwid2l0aG91dEVubGFyZ2VtZW50Ijp0cnVlfX19"
                         class="carousel-slide">
                    <img class="cody-img carousel-slide"
                         src="https://img.tumblbug.com/eyJidWNrZXQiOiJ0dW1ibGJ1Zy1hc3NldHMiLCJrZXkiOiJoZXJvZXMvbWFpbl9wY19kZXVtb29uX2ZjMi5qcGciLCJlZGl0cyI6eyJyZXNpemUiOnsid2lkdGgiOjE1NDIsImhlaWdodCI6NTYwLCJ3aXRob3V0RW5sYXJnZW1lbnQiOnRydWV9fX0="
                         class="carousel-slide">
                </div>
                <div class="next-button-box">
                    <div class="page-number">1 / 3</div>
                    <div class="arrow-box">
                        <div class="img-button-circle white-left-arrow icon-30 color-button" onclick="moveSlide(-1)"></div>
                        <div class="img-button-circle white-right-arrow icon-30 color-button" onclick="moveSlide(1)"></div>
                    </div>
                </div>
            </div>


            <div class="left-box-category-box">

                <div class="category-box-items cursor">
                    <div class="category-box-img game-pad icon-65"></div>
                    <div class="category-box-text">게임</div>
                </div>

                <div class="category-box-items cursor">
                    <div class="category-box-img food icon-65"></div>
                    <div class="category-box-text">푸드</div>
                </div>


                <div class="category-box-items cursor">
                    <div class="category-box-img color-box icon-65"></div>
                    <div class="category-box-text">소상공인</div>
                </div>

                <div class="category-box-items cursor">
                    <div class="category-box-img taro icon-65"></div>
                    <div class="category-box-text">타로</div>
                </div>

                <div class="category-box-items cursor">
                    <div class="category-box-img diary icon-65"></div>
                    <div class="category-box-text">디자인.문구</div>
                </div>

                <div class="category-box-items cursor">
                    <div class="category-box-img comic icon-65"></div>
                    <div class="category-box-text">웹툰.만화</div>
                </div>

                <div class="category-box-items cursor">
                    <div class="category-box-img else icon-65"></div>
                    <div class="category-box-text">잡화</div>
                </div>

                <div class="category-box-items cursor">
                    <div class="category-box-img goods icon-65"></div>
                    <div class="category-box-text">캐릭터.굿즈</div>
                </div>
            </div>

            <div class="attention-container">

                <div class="attention-title">주목할 만한 프로젝트</div>
                <!-- /////////////////////////나중에 foreach 사용///////////////////////// -->
                <div class="attention-card-box">
                    <div class="attention-card">
                        <div class="attention-card-img-box">
                            <a href="project/1">
                                <img class="attention-card-img" src="https://img.tumblbug.com/eyJidWNrZXQiOiJ0dW1ibGJ1Zy1wcm9qZWN0LWNvdmVyLWltYWdlcyIsImtleSI6IjZlMDE3ZjE2MGQ0NTk2ODMxZWVkYmEyZDhkZWUzYjgyNGEyNGZjZGYvNzJlZmIyMDAwNTAxZWQ1MjQxYzhlZTRjNWM5MWE3YjY2YTM0ZThlMC81ZTkwM2ZiNWYzYWNhMzc3NGM5ZTBmYzBiMmQ4NzVmYzg3OTA0M2MwL2JiMWNmMmQyLTUxZjUtNDg2MS05M2FhLTlhMzQ3NDQ1M2IwOC5qcGVnIiwiZWRpdHMiOnsicmVzaXplIjp7IndpZHRoIjo0NjUsImhlaWdodCI6NDY1LCJ3aXRob3V0RW5sYXJnZW1lbnQiOnRydWV9fX0=" alt=""/>
                            </a>
                            <div class="empty-heart project-like"></div>
                        </div>
                        <div class="attention-card-body">
                            <div class="attention-card-company line-cursor">(주)대교</div>
                            <a style="text-decoration: none" href="project/1">
                                <div class="attention-card-title">지브리 인형 지브리 인형 지브리 인형 지브리 인형 지브리 인형 지브리 인형 지브리 인형 지브리 인형 지브리 인형 &lt;가오나시&gt;</div>
                            </a>
                                <div class="attention-card-progress-rate">979% 달성</div>
                        </div>
                        <input name="project-id" type="hidden" value="1">
                    </div>
                    <div class="attention-card">
                        <div class="attention-card-img-box">
                            <img class="attention-card-img" src="https://img.tumblbug.com/eyJidWNrZXQiOiJ0dW1ibGJ1Zy1wcm9qZWN0LWNvdmVyLWltYWdlcyIsImtleSI6IjYwNjY0Y2JjNjkyNjE4MmUxOGEwYjA4OGJjNTVhYmZkNTYzMWZhNDEvN2VkMjY0MDIxYTkxMmRjMGIxOTFlYmUwZjU2MjY0ZjhiZTdmODMxNi83NjU3MWRiNTAyNjlkMTJhNzMwYThmMzc1YjlmODk0ODgyOWQwNzFiLzc4MjVhMzBkLWM4YWQtNDRhMy05ZTAwLWFiMzBkYThiYzY0NC5qcGVnIiwiZWRpdHMiOnsicmVzaXplIjp7IndpZHRoIjo0NjUsImhlaWdodCI6NDY1LCJ3aXRob3V0RW5sYXJnZW1lbnQiOnRydWV9fX0=" alt=""/>
                            <div class="empty-heart project-like"></div>
                        </div>
                        <div class="attention-card-body">
                            <div class="attention-card-company line-cursor">(주)대교</div>
                            <div class="attention-card-title">지브리 인형 지브리 인형 지브리 인형 지브리 인형 지브리 인형 지브리 인형 지브리 인형 지브리 인형 지브리 인형 &lt;가오나시&gt;</div>
                            <div class="attention-card-progress-rate">979% 달성</div>
                        </div>
                    </div>
                    <div class="attention-card">
                        <div class="attention-card-img-box">
                            <img class="attention-card-img" src="https://img.tumblbug.com/eyJidWNrZXQiOiJ0dW1ibGJ1Zy1wcm9qZWN0LWNvdmVyLWltYWdlcyIsImtleSI6IjZlMDE3ZjE2MGQ0NTk2ODMxZWVkYmEyZDhkZWUzYjgyNGEyNGZjZGYvZGM3MWMxMDZhNDRkNDhhZTFlZGEyNDJjNGUxYTkxZTE3N2E0NjI5YS9jOWRiNDRiNmI2MjU3OTIzMzQzOGY2NDU4NjBiZGEyYWY3NzJiZmZjLzUwMGY0ZGUwLTE1OWUtNDZkZS05MmQwLWJiOGNkZTk1ZDZlMS5qcGVnIiwiZWRpdHMiOnsicmVzaXplIjp7IndpZHRoIjo0NjUsImhlaWdodCI6NDY1LCJ3aXRob3V0RW5sYXJnZW1lbnQiOnRydWV9fX0=" alt=""/>
                            <div class="empty-heart project-like"></div>
                        </div>
                        <div class="attention-card-body">
                            <div class="attention-card-company line-cursor">(주)대교</div>
                            <div class="attention-card-title">지브리 인형 지브리 인형 지브리 인형 지브리 인형 지브리 인형 지브리 인형 지브리 인형 지브리 인형 지브리 인형 &lt;가오나시&gt;</div>
                            <div class="attention-card-progress-rate">979% 달성</div>
                        </div>
                    </div>
                    <div class="attention-card">
                        <div class="attention-card-img-box">
                            <img class="attention-card-img" src="https://img.tumblbug.com/eyJidWNrZXQiOiJ0dW1ibGJ1Zy1wcm9qZWN0LWNvdmVyLWltYWdlcyIsImtleSI6IjAwZTAyODBjZmNkMzc4MzlkNzBjY2U2M2VhM2M4OTM2MGVmNTlhZjUvOTgxYTYyOWVmZTc2ODE4MjgzMTE4NjRmMzI3NDgwMDM4YmQ4ODgxNi9kZjgxZjMwOTUxN2I5ZWY1Y2JkNWYzMjE4YTQ2ZDAxMWU2YTVkYjg0L2EwNjhkOTc5LTM1NzAtNDYyMy1iZTNhLWM4Njk1YmJhZmNjNy5qcGVnIiwiZWRpdHMiOnsicmVzaXplIjp7IndpZHRoIjo0NjUsImhlaWdodCI6NDY1LCJ3aXRob3V0RW5sYXJnZW1lbnQiOnRydWV9fX0=" alt=""/>
                            <div class="empty-heart project-like"></div>
                        </div>
                        <div class="attention-card-body">
                            <div class="attention-card-company line-cursor">(주)대교</div>
                            <div class="attention-card-title">지브리 인형 지브리 인형 지브리 인형 지브리 인형 지브리 인형 지브리 인형 지브리 인형 지브리 인형 지브리 인형 &lt;가오나시&gt;</div>
                            <div class="attention-card-progress-rate">979% 달성</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="main-right-box">

            <div class="main-right-box-title">
                <div class="right-box-title-bundle">
                    <div class="right-box-title-first-bundle">
                        <div class="title-first-bundle-item-left">인기 프로젝트</div>
                        <div class="title-first-bundle-item-right op-8 cursor">전체보기</div>
                    </div>
                    <div class="op-9">24.07.31 11:33 기준</div>
                </div>
            </div>

            <div class="main-right-hit-box">

                <div class="hit-box-bundle">
                    <div class="hit-img-items cursor">
                        <div class="hit-img-item bag-img "></div>
                    </div>
                    <div class="hit-number red">1</div>
                    <div class="hit-text-box">
                        <div class="op-8 line-cursor">OvB 어버버</div>
                        <div class="hit-text-box-title cursor">오프에 진심인 덕후가<br>만든 [콘서트 가방]</div>
                        <div class="hit-text-box-percentage">89606% 달성</div>
                    </div>
                </div>

                <div class="hit-box-bundle">
                    <div class="hit-img-items cursor">
                        <div class="hit-img-item bag-img"></div>
                    </div>
                    <div class="hit-number red">2</div>
                    <div class="hit-text-box">
                        <div class="op-8 line-cursor">솜니움</div>
                        <div class="hit-text-box-title cursor">로판 신발 3D소재 -1-</div>
                        <div class="hit-text-box-percentage">1425% 달성</div>
                    </div>
                </div>

                <div class="hit-box-bundle">
                    <div class="hit-img-items cursor">
                        <div class="hit-img-item bag-img"></div>
                    </div>
                    <div class="hit-number red">3</div>
                    <div class="hit-text-box">
                        <div class="op-8 line-cursor">솜니움</div>
                        <div class="hit-text-box-title cursor">현대 신발 3D소재 -2-</div>
                        <div class="hit-text-box-percentage">1237% 달성</div>
                    </div>
                </div>

                <div class="hit-box-bundle">
                    <div class="hit-img-items cursor">
                        <div class="hit-img-item bag-img"></div>
                    </div>
                    <div class="hit-number">4</div>
                    <div class="hit-text-box">
                        <div class="op-8 line-cursor">Loma</div>
                        <div class="hit-text-box-title cursor">작지만 강렬한 세계최초 <br>2in1 플레저토이</div>
                        <div class="hit-text-box-percentage">4131% 달성</div>
                    </div>
                </div>

                <div class="hit-box-bundle">
                    <div class="hit-img-items cursor">
                        <div class="hit-img-item bag-img"></div>
                    </div>
                    <div class="hit-number">5</div>
                    <div class="hit-text-box">
                        <div class="op-8 line-cursor">하쿠저장소</div>
                        <div class="hit-text-box-title cursor">센과 치히로의 모루꽃다발 <br>DIY KIT</div>
                        <div class="hit-text-box-percentage">394% 달성</div>
                    </div>
                </div>

                <div class="hit-box-bundle">
                    <div class="hit-img-items cursor">
                        <div class="hit-img-item bag-img"></div>
                    </div>
                    <div class="hit-number">6</div>
                    <div class="hit-text-box">
                        <div class="op-8 line-cursor">다산북스</div>
                        <div class="hit-text-box-title cursor">로드 오브 히어로즈 공식 <br>아트북</div>
                        <div class="hit-text-box-percentage">2260% 달성</div>
                    </div>
                </div>

                <div class="hit-box-bundle">
                    <div class="hit-img-items cursor">
                        <div class="hit-img-item bag-img"></div>
                    </div>
                    <div class="hit-number">7</div>
                    <div class="hit-text-box">
                        <div class="op-8 line-cursor">arnucu</div>
                        <div class="hit-text-box-title cursor">스페셜 이펙트 브러쉬 <br>컬렉션 100</div>
                        <div class="hit-text-box-percentage">877% 달성</div>
                    </div>
                </div>

                <div class="hit-box-bundle">
                    <div class="hit-img-items cursor">
                        <div class="hit-img-item bag-img"></div>
                    </div>
                    <div class="hit-number">8</div>
                    <div class="hit-text-box">
                        <div class="op-8 line-cursor">일러스트레이터 강정연</div>
                        <div class="hit-text-box-title cursor">프리랜서 <br>일러스트레이터로</div>
                        <div class="hit-text-box-percentage">877% 달성</div>
                    </div>
                </div>

                <div class="main-right-box-badge">인기 프로젝트 전체보기</div>

            </div>
        </div>


    </div>

</div>

<jsp:include page="/WEB-INF/views/footer/footer.jsp"/>
</body>
</html>
