<!DOCTYPE html>
<html lang="pl">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Fortnite LAKru Quiz</title>
    <link rel="stylesheet" href="css/style-quiz-site.css" />
    <!-- Favicon -->
    <link rel="apple-touch-icon" sizes="180x180" href="favicon/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="favicon/favicon-16x16.png">
    <link rel="manifest" href="favicon/site.webmanifest">
  </head>
  <body class="start-load-bscroll-q">
    <script>
      var questions = <?php include 'data.php' ?>;
      </script>
      <script src="quiz-gen.js"></script>
  </body>
</html>