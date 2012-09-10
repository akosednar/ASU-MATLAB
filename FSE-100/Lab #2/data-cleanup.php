<?php
/*
* Description: FSE 100 - Lab #2 - PHP Script to Cleanup Data
* Author: Anthony Kosednar
* Date: 09/10/2012
*/

// Add an clean input function
function cleanInput($input){
	return strip_tags(trim(preg_replace('/<[^>]*>%#;/', '', $input)));
}

// First check to see if we have any data
if(!isset($_REQUEST["data"])){
	echo "URL to data to cleanup is not set.";
	exit();
}

$data = cleanInput($_REQUEST["data"]);

// Now check to see if that data is a url
if (filter_var($data, FILTER_VALIDATE_URL) == false) {
	echo "<!-- ".$data." --> \n";
	echo "URL set is not valid.";
	exit();
}

// We read the data from the url
$data = file_get_contents($data);

// Now we read each line individually
$data_array = explode("\n", $data);

foreach ($data_array as $line=>$data) {	
	// Get rid of the header lines and any blank lines
	if($line != "0" && $line != "1" && $data != "" && $data != " "){
		// Get the columns we want (column 2, and 5) and echo them.
		$column = explode(",",$data);
		echo $column[2].",".$column[5]." \n";
	}
} 
?>
