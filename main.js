function validateForm() {
    let firstName = document.forms["dataCollection"]["firstName"].value;
    let lastName = document.forms["dataCollection"]["lastName"].value;
    let email = document.forms["dataCollection"]["email"].value;
    let carsListed = document.forms["dataCollection"]["carsListed"].value;
    let make = document.forms["dataCollection"]["make"].value;
    let model = document.forms["dataCollection"]["model"].value;
    let engine = document.forms["dataCollection"]["engine"].value;
    let seats = document.forms["dataCollection"]["seats"].value;
    let safetyRating = document.forms["dataCollection"]["safetyRating"].value;
    let towingCapacity = document.forms["dataCollection"]["towingCapacity"].value;
    let description = document.forms["dataCollection"]["description"].value;
    let price = document.forms["dataCollection"]["price"].value;
    if (firstName =="") {
        alert("First name must be filled out.");
        return false;
    }
    else if (lastName =="") {
        alert("Last name must be filled out.");
        return false;
    }
    else if (email =="") {
        alert("Email must be filled out.");
        return false;
    }
    else if (carsListed =="") {
        alert("Number of cars previously listed must be filled out.");
        return false;
    }
    else if (make =="") {
        alert("Car make must be filled out.");
        return false;
    }
    else if (model =="") {
        alert("Car model must be filled out.");
        return false;
    }
    else if (engine =="") {
        alert("Engine size must be filled out.");
        return false;
    }
    else if (seats =="") {
        alert("Number of seats must be filled out.");
        return false;
    }
    else if (safetyRating =="") {
        alert("Safety rating must be filled out.");
        return false;
    }
    else if (towingCapacity =="") {
        alert("Towing capacity must be filled out.");
        return false;
    }
    else if (description =="") {
        alert("Description must be filled out.");
        return false;
    }
    else if (price =="") {
        alert("Price must be filled out.");
        return false;
    }
}