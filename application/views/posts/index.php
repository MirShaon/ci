<h1><?= $title; ?></h1>
<br>

<div class="container">
 <?php  foreach($posts as $post) : ?>
    <div class="row">
      <div class="col-md-3">
   
       <img class="post-thumb" src="<?php echo site_url(); ?>assets/images/posts/<?php echo $post['post_image']; ?>" alt="">

      </div>
      <div class="col-md-9">

           

            <h3><?php echo $post['title']; ?></h3> 
            <br>
            <small class="post-date">Posted on: <?php echo $post['created_at']; ?><strong><?php echo $post['name']; ?></strong></small>
                 
          <?php echo $post['body']; ?>
          <p><a class="btn btn-primary pull-right" href="<?php echo site_url('/posts/'.$post['slug']); ?>">Read More</a></p>
         


           
      </div>

    
    
    </div>
   
     <?php endforeach;?>
  <div class="pagination-links">
		<?php echo $this->pagination->create_links(); ?>
  </div>
   

 
     

</div>


