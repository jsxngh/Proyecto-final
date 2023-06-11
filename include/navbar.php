<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
  integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href=<?php echo "$index_url" ?>>Blog Squad</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item"><a class="nav-link" href=<?php echo $posts_url; ?>> <!--All posts-->
          All Posts
        </a></li>

      <li class="nav-item"><a class="nav-link" href=<?php echo $top_posts_url; ?>>Top posts</a></li>
      <li class="nav-item"><a class="nav-link" href=<?php echo $contact_us_url; ?>>Contact Us</a></li>
    </ul>
    <form class="navbar-form pull-left" role="search" action=<?php echo $search_url; ?> method="post">
            <div class="input-group">
               <input type="text" class="form-control" placeholder="Search" name="q">
               <div class="input-group-btn">
               <button class="btn btn-outline-success my-2 my-sm-0" type="submit" name="submit">Search</button>
               </div>
            </div>
          </form>
    <ul class="nav navbar-nav navbar-right">
  </div>
  <?php
  if (!isset($_SESSION['username'])) {
    include("loginform.php");
  } else {
    include("userdetail.php");
  }
  ?>
  </ul>
</nav>