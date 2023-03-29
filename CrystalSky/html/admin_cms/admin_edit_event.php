<!DOCTYPE html>

<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> CS Admin - CMS </title>
    <link rel="stylesheet" href="../../CrystalSky/css/admin_assets.css">
    <link rel="stylesheet" href="../../CrystalSkyadmin_cms.css">
    <link rel="stylesheet" href="../../CrystalSky/css/admin_tabs_pane.css">
    <link rel="icon" href="./assets/General Photos/Crystal Sky - Logo Only.png">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>


  

<body>
    <div class="admin_navigation_container">
        <div class="admin_navigation_logo_container">
            <a href="/html/admin_index/admin_index.html"><img id="admin_header_logo" src="../../CrystalSky/assets/General Photos/Crystal Sky - Logo.png"></a>
        </div>
        <div class="admin_right_navigation_tabs_container">
            <div class="admin_navigation_tab_logo_container">
                <img id="admin_navigation_tab_logo" src="../../CrystalSky/assets/Back Office - Tabs Logos/admin_cms/CMS.png">
            </div>
            <div class="admin_navigation_tabs_container">
                <ul>
                   <a href="http://localhost/SIA/content_ms/api/routes.php?request=index"  id="active_subsystem_tab"><li> Panel </li></a>
                    <a href="http://localhost/SIA/content_ms/api/routes.php?request=content"><li> Content </li></a>
                    <a href="http://localhost/SIA/content_ms/api/routes.php?request=rooms"><li> Rooms </li></a>
                    <a href="http://localhost/SIA/content_ms/api/routes.php?request=about"><li> About Us </li></a>
                </ul>
            </div>
        </div>
    </div>
    <div class="admin_container">
        <div class="admin_left_pane">
            <div class="admin_left_pane_content">
                <div class="admin_left_pane_content_account_name_container">
                    <img id="admin_icon" src="./assets/General Photos/admin_icon.png">
                    <p id="admin_name_header"> Welcome, <span id="admin_name"> CMS!</span></p>
                </div>
                <div class="admin_left_pane_content_tabs_container">
                    <a class="admin_unselected_tab tabs" href="../../CrystalSky/html/admin_index/admin_index.html"> 
                        <div class="admin_tab_logo_container">
                            <img id="admin_tab_logo" src="../../CrystalSky/assets/Back Office - Tabs Logos/admin_dashboard/Dashboard Logo/Dashboard - 7b.png">
                        </div>
                        <div class="admin_tab_text_container">
                            <p id="admin_tab_text"> Dashboard</p> 
                            <p id="admin_tab_short_text"> PANEL </p>
                        </div>
                    </a>
                    
                    <p id="admin_left_pane_content_management"> Management </p>
                    <p id="admin_left_pane_content_short_management"> Manage</p>
                    
                    <a class="admin_current_tab tabs pulse admin_tab_secgroup" href="../../CrystalSky/html/admin_cms/admin_cms.html"> 
                        <div class="admin_tab_logo_container">
                            <img id="admin_tab_logo" src="../../CrystalSky/assets/Back Office - Tabs Logos/admin_cms/CMS Logo/CMS - Blue.png">
                        </div>
                        <div class="admin_tab_text_container">
                            <p id="admin_tab_text"> Content </p>
                            <p id="admin_tab_short_text"> CMS </p>
                        </div>
                    </a>

                    <a class="admin_unselected_tab tabs admin_tab_secgroup" href="/html/admin_cdms/admin_cdms.html">
                        <div class="admin_tab_logo_container">
                            <img id="admin_tab_logo"
                                src="../../CrystalSky/assets/Back Office - Tabs Logos/admin_cdms/CDMS Logo/CDMS - 7b.png">
                        </div>
                        <div class="admin_tab_text_container">
                            <p id="admin_tab_text"> Customer Data </p>
                            <p id="admin_tab_short_text"> CDMS </p>
                        </div>
                    </a>
                    <a class="admin_unselected_tab tabs admin_tab_secgroup" href="../../CrystalSky/html/admin_ems/admin_ems.html"> 
                        <div class="admin_tab_logo_container">
                            <img id="admin_tab_logo" src="../../CrystalSky/assets/Back Office - Tabs Logos/admin_ems/EMS Logo/EMS - 7b.png">
                        </div>
                        <div class="admin_tab_text_container">
                            <p id="admin_tab_text"> Employee </p>
                            <p id="admin_tab_short_text"> EMS </p>
                        </div>
                    </a>

                    <a class="admin_unselected_tab tabs admin_tab_secgroup" href="../../CrystalSky/html/admin_ims/admin_ims.html"> 
                        <div class="admin_tab_logo_container">
                            <img id="admin_tab_logo" src="../../CrystalSky/assets/Back Office - Tabs Logos/admin_ims/Inventory Logo/Inventory - 7b.png">
                        </div>
                        <div class="admin_tab_text_container">
                            <p id="admin_tab_text"> Inventory </p>
                            <p id="admin_tab_short_text"> IMS </p>
                        </div>
                    </a>

                    <a class="admin_unselected_tab tabs admin_tab_secgroup" href="../../CrystalSky/html/admin_rms/admin_rms.html"> 
                        <div class="admin_tab_logo_container">
                            <img id="admin_tab_logo" src="../../CrystalSky/assets/Back Office - Tabs Logos/admin_rms/Revenue Logo/Revenue - 7b.png">
                        </div>
                        <div class="admin_tab_text_container">
                            <p id="admin_tab_text"> Revenue </p>
                            <p id="admin_tab_short_text"> RMS </p>
                        </div>
                    </a>

                    <div class="admin_logout_icon_pane">
                        <div class="admin_logout_icon_container">
                            <img id="admin_logout_icon" src="../../CrystalSky/assets/General Photos/logout.png">
                        </div>
                    </div>
                </div>

            </div>
        </div>



 
    <h1>Update Events</h1>
    <form action="../api/routes.php?request=update_event" method="post" enctype="multipart/form-data">

        <input type="hidden" name="user_id" value="<?php echo $_SESSION['id']; ?>">

        <input type="text" name="id" value="<?php echo $_GET['id']; ?>">

        <label for="title">Title</label>

        <input type="text" name="title" id="title" default="<?php echo $content['title']; ?>" placeholder="<?php echo $content['title']; ?>" required>

        <input type="text" id="category" name="category" value="Events" hidden>


        <label for="description">Description</label>
        <textarea name="description" id="description" cols="30" rows="10" default="<?php echo $content['description']; ?>" placeholder="<?php echo $content['description']; ?>"></textarea>

        <input type="date" name="date" id="date" default="<?php echo $content['date']; ?>">

        <input type="time" name="time" id="time" default="<?php echo $content['time']; ?>">

        <label for="media">Media</label>
        <input type="file" name="media" id="media" required>

        <input type="submit" value="Submit">
    </form>


    </body>

</html>


</body>
<script src="../../CrystalSky/javascript/default.js"></script>

</html>