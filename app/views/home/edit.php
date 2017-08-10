<form method="post" action="../update">
    USERNAME :<input type="text" name="username" value="<?php echo $data['edit_user']->username ?>"><br>
    EMAIL    :<input type="text" name="email" value="<?php echo $data['edit_user']->email ?>"><br>
    <input type="hidden" name="id" value="<?php echo $data['edit_user']->id ?>">
    <input type="submit" name="submit">
</form>