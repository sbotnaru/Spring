<html>
<head>
    <style>
        .button {
            background-color: #4CAF50; /* Green */
            border: none;
            color: white;
            padding: 20px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            -webkit-transition-duration: 0.4s; /* Safari */
            transition-duration: 0.4s;
            cursor: pointer;
        }


        .button1 {
            background-color: white;
            color: black;
            border: 2px solid #4CAF50;
        }

        .button1:hover {
            background-color: #4CAF50;
            color: white;
        }
    </style>


</head>
<body>


<center>
<h2>Choose what you want to do?</h2>
<button class="button1" onclick="window.location.href = 'showForm';">INSERT DATA</button >
    <button class="button1" onclick="window.location.href = 'display';">DISPLAY DATA</button>
</center>
</body>
</html>
