<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    margin: 0;
    padding: 20px;
}

.container {
    max-width: 600px;
    margin: auto;
    background: white;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
}

h1 {
    text-align: center;
}

label {
    display: block;
    margin: 10px 0 5px;
}

input, textarea {
    width: 100%;
    padding: 10px;
    margin-bottom: 20px;
    border: 1px solid #ccc;
    border-radius: 4px;
}

button {
    background-color: #28a745;
    color: white;
    border: none;
    padding: 10px 15px;
    border-radius: 5px;
    cursor: pointer;
    width: 100%;
}

button:hover {
    background-color: #218838;
}

.hidden {
    display: none;
}

#message {
    margin-top: 20px;
    padding: 10px;
    background-color: #d4edda;
    border: 1px solid #c3e6cb;
    color: #155724;
    border-radius: 5px;
}

</style>
</head>
<body>
    <div class="container">
        <h1>Add Event</h1>
        <form id="eventForm" action="event-b.jsp">
            <label for="eventName">Event Name:</label>
            <input type="text" id="eventName" name="eventName" required>

            <label for="eventDate">Event Date:</label>
            <input type="date" id="eventDate" name="eventDate" required>

            <label for="eventTime">Event Time:</label>
            <input type="time" id="eventTime" name="eventTime" required>

            <label for="eventDescription">Description:</label>
            <input id="eventDescription" name="eventDescription" rows="4" required></textarea>

            <button type="submit">Add Event</button>
        </form>
        <div id="message" class="hidden"></div>
    </div>
    <script src="script.js"></script>
<
</body>
</html>