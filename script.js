document.addEventListener("DOMContentLoaded", function() {
    const birthdayForm = document.getElementById("birthdayForm");
    const birthdayList = document.getElementById("birthdayList");

    // Store birthdays
    let birthdays = [];

    // Add event listener to the form
    birthdayForm.addEventListener("submit", function(event) {
        event.preventDefault();
        
        const name = document.getElementById("name").value;
        const date = document.getElementById("date").value;

        // Add birthday to the array
        birthdays.push({ name, date });
        displayBirthdays();
        
        // Clear the form
        birthdayForm.reset();
    });

    // Function to display upcoming birthdays
    function displayBirthdays() {
        birthdayList.innerHTML = ""; // Clear the list
        const today = new Date();
        const upcomingBirthdays = birthdays.filter(birthday => {
            const birthdayDate = new Date(birthday.date);
            return birthdayDate >= today;
        });

        upcomingBirthdays.forEach(birthday => {
            const li = document.createElement("li");
            li.textContent = `${birthday.name} - ${new Date(birthday.date).toLocaleDateString()}`;
            birthdayList.appendChild(li);
        });
    }
});




document.getElementById('login-btn').addEventListener('click', function() {
    document.getElementById('login-form').classList.add('active');
    document.getElementById('signup-form').classList.remove('active');
    this.classList.add('active');
    document.getElementById('signup-btn').classList.remove('active');
});

document.getElementById('signup-btn').addEventListener('click', function() {
    document.getElementById('signup-form').classList.add('active');
    document.getElementById('login-form').classList.remove('active');
    this.classList.add('active');
    document.getElementById('login-btn').classList.remove('active');
});





document.getElementById('eventForm').addEventListener('submit', function(event) {
    event.preventDefault(); // Prevent the default form submission

    const eventName = document.getElementById('eventName').value;
    const eventDate = document.getElementById('eventDate').value;
    const eventTime = document.getElementById('eventTime').value;
    const eventDescription = document.getElementById('eventDescription').value;

    // You can perform further actions, such as sending the data to a server
    // For now, we'll just display a success message

    const messageDiv = document.getElementById('message');
    messageDiv.classList.remove('hidden');
    messageDiv.innerHTML = `<strong>Event Added!</strong><br>
                             Name: ${eventName}<br>
                             Date: ${eventDate}<br>
                             Time: ${eventTime}<br>
                             Description: ${eventDescription}`;

    // Clear the form
    this.reset();
});

