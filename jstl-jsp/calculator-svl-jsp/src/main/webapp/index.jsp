<%--
  Created by IntelliJ IDEA.
  User: Truong
  Date: 3/2/2022
  Time: 8:11 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Caculator</title>
  </head>
  <body>
    <h1>Simple Calculator</h1>
    <form action="/calculator" method="post">
      <fieldset>
        <legend>Calculator</legend>
          <table>
            <tr>
              <td>First Operand: </td>
              <td><input type="text" name="first-operand"></td>
            </tr>
            <tr>
              <td>Operator: </td>
              <td>
                <select name="operator" id="operator-id">
                  <option value="+">Addition</option>
                  <option value="-">Subtration</option>
                  <option value="*">Multipcation</option>
                  <option value="/">Division</option>
                </select>
              </td>
            </tr>
            <tr>
              <td>Second Operand: </td>
              <td><input type="text" name="second-operand"></td>
            </tr>
            <tr>
              <td></td>
              <td><input type="submit" name="Calculate"></td>
            </tr>
          </table>
      </fieldset>
    </form>
  </body>
</html>
