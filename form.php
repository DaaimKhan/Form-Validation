<?php
$fullName = $_POST['fullName'];
$phoneNumber = $_POST['phoneNumber'];
$email = $_POST['email'];
$password = $_POST['password'];
$confirm_password = $_POST['confirm_password'];

// ---------------------------------File upload handling

$targetDirectory = "uploads/"; // Directory where you want to store the uploaded files
$targetFile = $targetDirectory . basename($_FILES["fileToUpload"]["name"]);
$uploadOk = 1;
$imageFileType = strtolower(pathinfo($targetFile, PATHINFO_EXTENSION));

// -------------------------------------Check if file already exists

if (file_exists($targetFile)) {
    echo "Sorry, the file already exists.";
    $uploadOk = 0;
}

// ------------------------------------Check file size (adjust as needed)

if ($_FILES["fileToUpload"]["size"] > 5000000) { // 5MB limit
    echo "Sorry, your file is too large.";
    $uploadOk = 0;
}

// ---------------------------Allow only certain file formats (add more as needed)

if ($imageFileType != "jpg" && $imageFileType != "jpeg" && $imageFileType != "png" && $imageFileType != "pdf") {
    echo "Sorry, only JPG, JPEG, PNG, and PDF files are allowed.";
    $uploadOk = 0;
}

if ($uploadOk == 0) {
    echo "Sorry, your file was not uploaded.";
} else {
    if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $targetFile)) {
        // File uploaded successfully, now insert the file path into the database
        $conn = new mysqli('localhost', 'root', '', 'form');
        if ($conn->connect_error) {
            die('Connection Failed: ' . $conn->connect_error);
        } else {
            $stmt = $conn->prepare("INSERT INTO regs (fullName, phoneNumber, email, password, confirm_password, file_path) VALUES (?, ?, ?, ?, ?, ?)");
            $stmt->bind_param("sissss", $fullName, $phoneNumber, $email, $password, $confirm_password, $targetFile);
            $stmt->execute();
            echo "File Upload Successful";
            $stmt->close();
            $conn->close();
        }
    } else {
        echo "Sorry, there was an error uploading your file.";
    }
}
?>
