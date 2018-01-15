<h2><?= $title; ?></h2>

<?php echo validation_errors(); ?>
<?php echo form_open_multipart('categories/create'); ?>
  <div class="form-group">
     <label>Category Name</label>
     <input class="form-control" type="text" name="name" placeholder="Enter Category Name" value="">
      <button type="submit" class="btn btn-primary">Create Category</button>
  </div>



<?php echo form_close();  ?>