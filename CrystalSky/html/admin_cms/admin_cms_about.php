<?php require_once 'admin_cms_header.php'; ?>




        <!-- ADD YOUR SUBSYSTEM CODES HERE -->

        <div class="admin_right_pane">

            <div class="admin_right_pane_content_container">
     
   



    <h1>About US</h1>
    <?php foreach ($contacts as $contact) : ?>


        <form action="../api/routes.php?request=update_contact" method="post" enctype="multipart/form-data">
            <!-- user id  -->
            <input type="hidden" name="user_id" value="<?php echo $_SESSION['id']; ?>">
            <label for="title">Title</label>
            <input type="text" name="title" id="title" placeholder="<?php echo $contact['title'] ?>" value="<?php echo $contact['title'] ?>">

            <label for="description">Description</label>
            <textarea name="description" id="description" cols="30" rows="10" placeholder="<?php echo $contact['description'] ?>"><?php echo $contact['description'] ?></textarea>

            <label for="contact_no">Contact number: </label>
            <input type="text" name="contact_no" id="contact_no" placeholder="<?php echo $contact['contact_no'] ?>" value="<?php echo $contact['contact_no'] ?>">

            <label for="email">Email: </label>
            <input type="email" name="email" id="email" placeholder="<?php echo $contact['email'] ?>" value="<?php echo $contact['email'] ?>">


            <label for="location">location: </label>
            <input type="text" name="location" id="location" placeholder="<?php echo $contact['location'] ?>" value="<?php echo $contact['location'] ?>">

            <label for="image">Media</label>
            <input type="file" name="image" id="image" default="<?php echo $contact['image'] ?>">

            <p> preview: <br><img src="../../cms_media/about/<?php echo $contact['image'] ?>" width="300px" /></p>


            <input type="submit" value="Submit">

        <?php endforeach; ?>
        </form>


            </div>
        </div>
    </div>

    


</body>
<script src="../../CrystalSky/javascript/default.js"></script>

</html>