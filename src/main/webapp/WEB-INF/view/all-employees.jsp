<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>all-employees</title>
</head>
<body>
    <h1>Main Page</h1>
    <br>
    <table>
        <tr>
            <th>Name</th>
            <th>Surname</th>
            <th>Department</th>
            <th>Salary</th>
            <th>Operations</th>
        </tr>
        <c:forEach var="emp" items="${allEmployees}">
            <c:url var="updateBtn" value="/updateInfo"> <!-- делаем ссылку для кнопки -->
                <c:param name="empId" value="${emp.id}"/> <!-- При переходе по ссылке будет доступна Переменная empId с ID работника -->
            </c:url>
            <c:url var="deleteBtn" value="/deleteInfo"> <!-- делаем ссылку для кнопки -->
                <c:param name="empId" value="${emp.id}"/> <!-- При переходе по ссылке будет доступна Переменная empId с ID работника -->
            </c:url>
            <tr>
                <td>${emp.name}</td>
                <td>${emp.surname}</td>
                <td>${emp.department}</td>
                <td>${emp.salary}</td>
                <td>
                    <!-- тут рисуем кнопку и указываем ссылку для кнопки -->
                    <input type="button" value="Update" onclick="window.location.href = '${updateBtn}'"/>
                </td>
                <td>
                    <input type="button" value="Delete" onclick="window.location.href = '${deleteBtn}'"/>
                </td>
            </tr>
        </c:forEach>
    <br>
    </table>
    <!-- addNewEmployee - это страница /addNewEmployee, на которой сработает метод Контроллера,
    соответствующий @RequestMapping("/addNewEmployee") -->
    <input type="button" value="Add" onclick="window.location.href = 'addNewEmployee'">
</body>
</html>