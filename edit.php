<?php 

require_once 'db_connect.php';

if ($_GET['id']) {
   $id = $_GET['id'];

   $sql = "SELECT * FROM library WHERE pk_libraby_id = {$id}";
   $result = $conn->query($sql);

   $data = $result->fetch_assoc();

   $conn->close();

?>

<!DOCTYPE html>
<html>
<head>
   <title >Edit User</title>

   <style type= "text/css">
       fieldset {
           margin : auto;
           margin-top: 100px;
            width: 50%;
       }

       table  tr th {
           padding-top: 20px;
       }
   </style>

</head>
<body>

<fieldset>
   <legend>Update Library</legend>

   <form action="update.php"  method="post">
       <table  cellspacing="0" cellpadding= "0">
           <tr>
               <th>Title</th>
               <td><input type="text"  name="title" placeholder ="Title" value="<?php echo $data['title'] ?>"  /></td>
           </tr >    
           <tr>
               <th>First Name</th>
               <td><input type= "text" name="surname_author"  placeholder="First Name" value ="<?php echo $data['surname_author'] ?>" /></td >
           </tr>
           <tr>
               <th>Last Name</th>
               <td><input type ="text" name= "lastname_author" placeholder= "Last Name" value= "<?php echo $data['lastname_author'] ?>" /></td>
           </tr>
           <tr>
               <input type= "hidden" name= "id" value= "<?php echo $data['pk_libraby_id']?>" />
               <td><button  type= "submit">Save Changes</button></td>
               <td><a  href= "index.php"><button  type="button">Back</button ></a></td >
           </tr>
       </table>
   </form >

</fieldset >

</body >
</html >

<?php
}
?> 