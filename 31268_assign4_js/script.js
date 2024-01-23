function validateAndGreet() {
    // Get user input
    var name = document.getElementById("name").value;
    var dob = document.getElementById("dob").value;
    var email = document.getElementById("email").value;
    var mobile = document.getElementById("mobile").value;
    var university = document.getElementById("university").value;
    

    // Validate input
    if (
        name.trim() === "" ||
        dob.trim() === "" ||
        email.trim() === "" ||
        mobile.trim() === "" ||
        isNaN(mobile) ||
        mobile.length !== 10 ||
        university.trim() === ""
    ) {
        alert("Please enter a valid Mobile Number.");
    } else {
        // Display greeting
        var greeting = "Entry submitted! Please check your email for further details!";
        alert(greeting);
    }
}






