<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>all-employees</title>
</head>
<body>
    <h1>Employee info</h1>
    <br>
    <form:form action="saveNewEmployee" modelAttribute="newEmployee"> <!-- атрибут модели, в который всё сохранится -->
        Name <form:input path="name"/> <!-- строка ввода -->
        <br>
        SurName <form:input path="surname"/>
        <br>
        Salary <form:input path="salary"/>
        <br>
        Department <form:input path="department"/>
        <br>
        <input type="submit" value="Add him!">
    </form:form>
</body>
</html>