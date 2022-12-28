<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <title>회원가입</title>
    <style>
      .outer {
        width: 60%;
        min-width: 650px;
        background: rgb(248, 249, 250);
        box-shadow: rgba(0, 0, 0, 0.06) 0px 0px 4px 0px;
        margin: auto;
        margin-top: 70px;
        margin-bottom: 70px;
      }

      #joinForm {
        width: 400px;
        margin: auto;
        padding: 10px;
      }

      #joinForm h1 {
        text-align: center;
      }

      .input_area {
        border: solid 1px #dadada;
        padding: 10px 10px 14px 10px;
        background: white;
      }

      .input_area input:not([type='checkbox']) {
        width: 250px;
        height: 30px;
        border: 0px;
      }

      .btnArea {
        text-align: center;
        padding: 50px;
      }

      button {
        width: 100px;
        height: 35px;
        border: 0px;
        color: white;
        background: #282a35;
        margin: 5px;
      }
    </style>
  </head>
  <body>
    <!-- index.jsp 생성 후 모든 페이지에 include할 menubar.jsp 생성 -->

    <div class="outer">
      <div id="joinInfoArea">
        <form
          id="joinForm"
          action="<%= request.getContextPath() %>/memberJoin"
          method="post"
          onsubmit="return validate();"
        >
          <h1>회원 가입</h1>

          <h4>* 아이디</h4>
          <span class="input_area"
            ><input type="text" maxlength="13" name="userId" required
          /></span>
          <button id="idCheck" type="button">중복확인</button>

          <h4>* 비밀번호</h4>
          <span class="input_area"
            ><input type="password" maxlength="15" name="userPwd" required
          /></span>

          <h4>* 비밀번호 확인</h4>
          <span class="input_area"
            ><input type="password" maxlength="15" name="userPwd2" required
          /></span>
          <label id="pwdResult"></label>

          <h4>* 이름</h4>
          <span class="input_area"
            ><input type="text" maxlength="5" name="userName" required
          /></span>

          <h4>연락처</h4>
          <span class="input_area"
            ><input
              type="tel"
              maxlength="11"
              name="phone"
              placeholder="(-없이)01012345678"
          /></span>

          <h4>이메일</h4>
          <span class="input_area"><input type="email" name="email" /></span>

          <div class="btnArea">
            <button id="joinBtn">가입하기</button>
          </div>
        </form>
      </div>
    </div>

  
    <!-- "검색" 단추를 누르면 팝업 레이어가 열리도록 설정한다 -->
    <script>
      $(function () {
        $('#postcodify_search_button').postcodifyPopUp();
      });
    </script>

    <script>
      function validate() {
        return true;
      }
    </script>
  </body>
</html>
