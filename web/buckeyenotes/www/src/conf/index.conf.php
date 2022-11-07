<?php
   class MyDB extends SQLite3 {
      function __construct() {
         $this->open('db.db', SQLITE3_OPEN_READONLY);
      }
   }
   $db = new MyDB();
   if(!$db) {
      echo $db->lastErrorMsg();
   } else {
      //echo "Opened database successfully\n";
   }

?>
