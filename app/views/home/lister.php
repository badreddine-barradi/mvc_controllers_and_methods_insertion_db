<table align="center" border="1">
    <tr style="background-color: burlywood">
        <td>ID</td>
        <td>Username</td>
        <td>Email</td>
        <td>Modifier</td>
        <td>Supprimer</td>
    </tr>
<?php foreach ($data['users'] as $user)
{
    echo "<tr>";
        echo "<td>".$user->id."</td> ";
        echo "<td>".$user->username."</td> ";
        echo "<td>".$user->email."</td>";
        ?>
        <td><a href="edit/<?php echo $user->id ?>">Modifier</a></td>
        <td><input type="button"onClick="deleteme(<?php echo $user->id; ?>)" name="Delete" value="Supprimer"></td>
        <script language="javascript">
            function deleteme(delid)
            {
                if(confirm("Do you want Delete!")){
                    window.location.href='destroy/' +delid+'';
                    return true;
                }
            }
        </script>
    </tr>
<?php

}

//<?=$data['name']
    ?>

</table>
<center><input type="button"onClick="add()" name="add" value="+"></td>
    <script language="javascript">
        function add(id)
        {
            window.location.href='add';
        }
    </script></center>