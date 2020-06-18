<?php
if ($_GET['run']) {
  shell_exec("/home/update.sh");
  header('Location: http://mynewprojectwebsite.cf/');
}
?>

<a href="?run=true">Click Me!</a>