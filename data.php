<?php
$connection = mysqli_connect('localhost', 'root', '', 'fortnitequiz');
$rows_ask = "SELECT id FROM pytania";
$first_ask = mysqli_query($connection, $rows_ask);
$first_ask_length = mysqli_num_rows($first_ask);
$used_questions = array();
$questions = array();

function unique_rand_id(){
    $randid = rand(1, $GLOBALS['first_ask_length']);
    if(!in_array($randid, $GLOBALS['used_questions'])){
        return $randid;
    }
    else{
        return unique_rand_id();
    }
}
for($i = 0; $i < 10;$i++){
    $rand_id = unique_rand_id();
    $question_get_data_ask = "SELECT pytanie, ilosc_odpowiedzi, odpowiedzi.odpowiedz1, odpowiedzi.odpowiedz2, odpowiedzi.odpowiedz3, odpowiedzi.odpowiedz4, odpowiedzi.odpowiedz_p FROM pytania JOIN odpowiedzi on odpowiedzi.id = pytania.odpowiedzi_id WHERE pytania.id = $rand_id;";
    $question_ask = mysqli_query($connection, $question_get_data_ask);
    $question = mysqli_fetch_row($question_ask);
    array_push($questions,$question);
    array_push($used_questions, $rand_id);
}
$jsdata = json_encode($questions);
echo $jsdata;
?>