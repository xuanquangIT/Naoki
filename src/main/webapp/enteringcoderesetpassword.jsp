<%--
  Created by IntelliJ IDEA.
  User: hadan
  Date: 11/3/2024
  Time: 9:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 10/6/2024
  Time: 12:03 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Naoki</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%--    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">--%>
    <%--    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>--%>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <%--    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>--%>

    <%--    Swiper--%>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@splidejs/splide@4.1.4/dist/css/splide.min.css" integrity="sha256-5uKiXEwbaQh9cgd2/5Vp6WmMnsUr3VZZw0a8rKnOKNU=" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@splidejs/splide@4.1.4/dist/js/splide.min.js" integrity="sha256-FZsW7H2V5X9TGinSjjwYJ419Xka27I8XPDmWryGlWtw=" crossorigin="anonymous"></script>
    <%-- end    Swiper--%>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">
    <%-- Favicon --%>
    <link rel="icon" href="${pageContext.request.contextPath}/assets/images/logos/square-logo.png" type="image/x-icon">
    <%-- Fontawesome --%>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <%-- Custom CSS --%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/styles/main.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/styles/header.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/styles/footer.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/styles/signin.css" />
    <style>
        #countdown-container {
            width: 35px;
            height: 35px;
            border: 3px solid #E41936;
            border-radius: 50%;
            position: relative;
            display: flex;
            justify-content: center;
            align-items: center;
            color: #E41936;
            margin-right: 10px;
        }
        #countdown {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }
        .countdown-wrapper {
            display: flex;
            align-items: center;
        }
    </style>
</head>
<body>
<!-- Header -->
<jsp:include page="WEB-INF/views/header.jsp"/>
<!-- end Header -->


<!-- Sign In -->
<div class="container d-flex justify-content-center align-items-center mt-5">
    <div class="signin-container my-3 p-4 rounded" >
        <div class="d-flex flex-column align-items-center">
            <h2 class="text-center fw-bold mb-4">Xác thực code</h2>
            <div class="container-fluid">
                <form action="forgotpassword" method="post">
                    <input type="hidden" name="action" value="EnteredCodeResetPassword" >
                    <div class="mb-3">
                        <input type="text" class="form-control input-field" name="code" id="email" placeholder="Enter code" required>
                    </div>
                    <div class="mb-3 countdown-wrapper">
                        <span id="countdown-text" class="me-2">Mã có hiệu lực trong </span>
                        <div id="countdown-container" class="d-flex justify-content-center align-items-center">
                            <span id="countdown"></span>
                        </div>
                    </div>

                    <!-- Login button -->
                    <input type="submit" class="primary-btn w-100 mb-4" value="Submit"/>
                </form>
                <form action="forgotpassword" method="post" id="resendForm" >
                    <input type="hidden" name="action" value="ResendCodeResetPassword">
                    <button type="submit" class="btn btn-link p-0" id="resendButton" style="display: none;">Gửi lại mã</button>
                </form>
            </div>
        </div>
    </div>

</div>
<script>
    let timeLeft = 30;
    const countdownElement = document.getElementById('countdown');
    const countdownText = document.getElementById('countdown-text');
    const resendButton = document.getElementById('resendButton');
    const countdownContainer = document.getElementById('countdown-container');
    const resendForm = document.getElementById('resendForm');
    const countdownWrapper = document.querySelector('.countdown-wrapper');

    const countdownInterval = setInterval(() => {
        if (timeLeft <= 0) {
            clearInterval(countdownInterval);
            countdownWrapper.style.display = 'none';
            resendButton.style.display = 'block';
        } else {
            countdownElement.textContent = timeLeft + 's';
            timeLeft--;
        }
    }, 1000);


</script>
<%--    Footer--%>
<jsp:include page="WEB-INF/views/footer.jsp"/>
<%-- end    Footer--%>
</body>
</html>
