<html>
   <head>
	<title>Admin</title>
	<link href="<?php echo base_url().'assets/css/bootstrap.css'; ?>" rel="stylesheet" />
	<link href="<?php echo base_url().'assets/css/bootstrap-theme.css'; ?>" rel="stylesheet" />
	<script src="<?php echo base_url().'assets/js/jquery.js' ; ?>" ></script>
	<script src="<?php echo base_url().'assets/js/boostrap.js' ; ?>" ></script>
   </head>
   <body>
	<nav class="navbar navbar-inverse navbar-fixed-top">
  		<div class="container-fluid">
  	 	<div class="navbar-header">
      			<a class="navbar-brand" href="#">EI-Card</a>
    		</div>
    		<ul class="nav navbar-nav">
      			<li class="active"><a href="<?php echo base_url().'index.php/welcome/admin' ; ?>">Home</a></li>
      			<li class="dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown">Users <b class="caret"></b></a>
				<ul class="dropdown-menu">
     			 		<li><a href="<?php echo base_url().'index.php/users/auth/create_user' ; ?>">Create user</a></li>
     			 		<li><a href="#">Delete user</a></li>
     			 		<li><a href="#">Modify user</a></li> 
				</ul>
      			</li>
			<li>
				<a href="<?php echo base_url().'index.php/welcome/admin/new_customer' ; ?>">New customers</a>
			</li>
      			<li class="dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown">View carts<b class="caret"></b></a>
				<ul class="dropdown-menu">
					<li><a href="<?php echo base_url().'index.php/welcome/admin/view_assurance' ; ?>">Assurance</a></li>
					<li><a href="<?php echo base_url().'index.php/welcome/admin/view_carte_rose' ; ?>">Carte rose</a></li>
				</ul>
      			</li>
      			<li class="dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown">Edit cart<b class="caret"></b></a>
				<ul class="dropdown-menu">
					<li><a href="<?php echo base_url().'index.php/welcome/admin/edit_assurance' ; ?>">Assurance</a></li>
     			 		<li><a href="<?php echo base_url().'index.php/welcome/admin/edit_carte_rose' ; ?>">Carte rose</a></li>
				</ul>
			</li>
    		</ul>
    			<ul class="nav navbar-nav navbar-right">
      				<li><a href="#"><span class="glyphicon glyphicon-user"></span>Profile</a></li>
      				<li><a href="<?php echo base_url().'index.php/users/auth/logout' ; ?>"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
    			</ul>
  		</div>
	</nav>
<h1><?php echo lang('edit_user_heading');?></h1>
<p><?php echo lang('edit_user_subheading');?></p>

<div id="infoMessage"><?php echo $message;?></div>

<?php echo form_open(uri_string());?>

      <p>
            <?php echo lang('edit_user_fname_label', 'first_name');?> <br />
            <?php echo form_input($first_name);?>
      </p>

      <p>
            <?php echo lang('edit_user_lname_label', 'last_name');?> <br />
            <?php echo form_input($last_name);?>
      </p>

      <p>
            <?php echo lang('edit_user_company_label', 'company');?> <br />
            <?php echo form_input($company);?>
      </p>

      <p>
            <?php echo lang('edit_user_phone_label', 'phone');?> <br />
            <?php echo form_input($phone);?>
      </p>

      <p>
            <?php echo lang('edit_user_password_label', 'password');?> <br />
            <?php echo form_input($password);?>
      </p>

      <p>
            <?php echo lang('edit_user_password_confirm_label', 'password_confirm');?><br />
            <?php echo form_input($password_confirm);?>
      </p>

      <?php if ($this->ion_auth->is_admin()): ?>

          <h3><?php echo lang('edit_user_groups_heading');?></h3>
          <?php foreach ($groups as $group):?>
              <label class="checkbox">
              <?php
                  $gID=$group['id'];
                  $checked = null;
                  $item = null;
                  foreach($currentGroups as $grp) {
                      if ($gID == $grp->id) {
                          $checked= ' checked="checked"';
                      break;
                      }
                  }
              ?>
              <input type="checkbox" name="groups[]" value="<?php echo $group['id'];?>"<?php echo $checked;?>>
              <?php echo htmlspecialchars($group['name'],ENT_QUOTES,'UTF-8');?>
              </label>
          <?php endforeach?>

      <?php endif ?>

      <?php echo form_hidden('id', $user->id);?>
      <?php echo form_hidden($csrf); ?>

      <p><?php echo form_submit('submit', lang('edit_user_submit_btn'));?></p>

<?php echo form_close();?>
</body>
</html>
