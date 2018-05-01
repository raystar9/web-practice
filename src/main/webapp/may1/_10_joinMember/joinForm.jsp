<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
  <fieldset>
    <legend>회원가입양식</legend>
    <form method="post" action="joinProcess.jsp" id="myForm">
        <table>
          <tr>
            <td><div>ID</div></td><td><input type="text" name="id" id="id"><input type="button" id="idCheckButton" value="ID중복검사"></td>
          </tr>
          <tr>
            <td><div>비밀번호</div></td><td><input type="password" name="pass" id="pass"></td>
          </tr>
          <tr>
            <td><div for="name">이름</div></td>
            <td>
                <input type="text" name="name" id="name">
              </td>
          </tr>
          <tr><td><div for="">나이</div></td>
            <td>
                <input type="text" name="age" id="age">
            </td>
          </tr>
          <tr><td><div for="male">성별</div></td>
            <td>
              <input type="radio" name="gender" id="gender1" value="m">남성
              <input type="radio" name="gender" id="gender2" value="f">여성
            </td>
          </tr>
          <tr><td><div for="">이메일</div></td>
            <td>
                <input type="text" name="email" id="email">
            </td>
          </tr>
          <tr><td colspan="2"><input type="submit"></td></tr>
        </table>
      </form>
  </fieldset>
</body>
</html>