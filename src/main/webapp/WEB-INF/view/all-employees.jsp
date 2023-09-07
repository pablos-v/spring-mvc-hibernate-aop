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
        </tr>
        <c:forEach var="emp" items="${allEmployees}">
            <tr>
                <td>${emp.name}</td>
                <td>${emp.surname}</td>
                <td>${emp.department}</td>
                <td>${emp.salary}</td>
            </tr>
        </c:forEach>
    <br>
    <!-- addNewEmployee - это страница /addNewEmployee, на которой сработает метод Контроллера,
    соответствующий @RequestMapping("/addNewEmployee") -->
    </table>
    <input type="button" value="Add" onclick="window.location.href = 'addNewEmployee'">
</body>
</html>