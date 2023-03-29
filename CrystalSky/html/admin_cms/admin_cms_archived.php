<?php require_once 'admin_cms_header.php'; ?>



            <h1>Events</h1>

<table>
    <thead>
        <th>Title</th>
        <th>Description</th>
        <th>Date</th>
        <th>Time</th>
        <th>Media</th>
        <th>Action</th>
    </thead>

    <?php foreach ($archivedEve_results as $content) :  ?>
        <tbody>
            <td><?php echo $content['title']; ?></td>
            <td><?php echo $content['description']; ?></td>
            <td><?php echo $content['date']; ?></td>
            <td><?php echo $content['time']; ?></td>
            <td>
                <img src="../../cms_media/content/<?php echo $content['media']; ?> " height="150px" width="300px" />
            </td>
            <!-- archive -->
            <td> <a href="javascript:void(0)" onclick="confirmArchive(<?php echo $content['id']; ?>)">Unarchive</a>
            </td>
        </tbody>
    <?php endforeach; ?>
</table>


<h1>Announcements</h1>

<table>
    <thead>
        <th>Title</th>
        <th>Description</th>
        <th>Media</th>
        <th>Action</th>
    </thead>

    <?php foreach ($archivedAnn_results as $content) :  ?>
        <tbody>
            <td><?php echo $content['title']; ?></td>
            <td><?php echo $content['description']; ?></td>

            <td>
                <img src="../../cms_media/content/<?php echo $content['media']; ?> " height="150px" width="300px" />
            </td>
            <!-- archive -->
            <td> <a href="javascript:void(0)" onclick="confirmArchive(<?php echo $content['id']; ?>)">Unarchive</a>
            </td>
        </tbody>
    <?php endforeach; ?>
</table>
<h1>Gallery</h1>
<table>
    <thead>
        <th>id</th>
        <th>Images</th>
        <th>action</th>
    </thead>

    <?php foreach ($archivedImg_results as $img_content) : ?>

        <tbody>
            <td>
                <?php echo $img_content['id']; ?>

            </td>
            <td>
                <img src="../../cms_media/uploads/<?php echo $img_content['media']; ?> " height="150px" width="300px" />
            </td>

            <!-- archive -->
            <td>
                <a href="javascript:void(0)" onclick="confirmArchiveImg(<?php echo $img_content['id']; ?>)">Unarchive</a>
            </td>
        </tbody>
    <?php endforeach; ?>

</table>
       
            

            </div>
        </div>
    </div>

    


</body>
<script src="../../CrystalSky/javascript/default.js"></script>

<script>
    const editEvent = (id) => {

    // Create a new form element
    var form = document.createElement("form");

    // Set the form attributes
    form.method = "POST";
    form.action = "../api/routes.php?request=editEvent&id=" + id;

    // Create a new input element for the ID
    var input = document.createElement("input");
    input.type = "hidden";
    input.name = "id";
    input.value = id;

    // Append the input element to the form
    form.appendChild(input);

    // Append the form to the body and submit it
    document.body.appendChild(form);
    form.submit();

}

const editAnnouncement =(id)=> {

// Create a new form element
var form = document.createElement("form");

// Set the form attributes
form.method = "POST";
form.action = "../api/routes.php?request=editAnnouncement&id=" + id;

// Create a new input element for the ID
var input = document.createElement("input");
input.type = "hidden";
input.name = "id";
input.value = id;

// Append the input element to the form
form.appendChild(input);

// Append the form to the body and submit it
document.body.appendChild(form);
form.submit();

}




const confirmArchive = (id) => {
    if (confirm("Are you sure you want to archive this content?")) {
        // Create a new form element
        var form = document.createElement("form");

        // Set the form attributes
        form.method = "POST";
        form.action = "../api/routes.php?request=archive&id=" + id;

        // Create a new input element for the ID
        var input = document.createElement("input");
        input.type = "hidden";
        input.name = "id";
        input.value = id;

        // Append the input element to the form
        form.appendChild(input);

        // Append the form to the body and submit it
        document.body.appendChild(form);
        form.submit();
    } else {
        // If the user cancels, do nothing
        return;
    }
}
</script>
</html>