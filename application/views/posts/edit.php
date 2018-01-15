
<h2><?= $title ?></h2>
<?php echo validation_errors(); ?>
<?php echo form_open('posts/update'); ?>
<input type="hidden" name="id" value="<?php echo $post['id']; ?>">
  <div class="form-group">
    <label>Title</label>
    <input value=<?php echo $post['title']; ?> type="text" class="form-control" name="title" id="title" aria-describedby="emailHelp" placeholder="Add Title">
    
  </div>
  <div class="form-group">
    <label>Body</label>
    <textarea placeholder="Enter Your Body" class="form-control" id="editor1" name="body" rows="10" cols="15"><?php echo $post['body']; ?> </textarea> 
  </div>
   <label for="Category">Category</label>
   <div class="form-group">
    <select name="category_id" class="form-group">
     <?php foreach($categories as $category): ?>
         <option value="<?php echo $category['id']; ?>"><?php echo $category['name']; ?></option>
     <?php endforeach; ?>
   
    </select>
   </div>

 
  <button type="submit" class="btn btn-primary">Update Post</button>
<?php echo form_close(); ?>
