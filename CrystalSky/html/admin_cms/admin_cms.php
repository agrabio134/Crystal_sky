

<?php require_once 'admin_cms_header.php'; ?>



        <!-- ADD YOUR SUBSYSTEM CODES HERE -->

        <div class="admin_right_pane">

            <div class="admin_right_pane_content_container">
                <div class="admin_right_pane_annoucements">
                    <div class="admin_right_pane_column">
                        <div class="admin_right_pane_icon_dashboard">
                            <img src="../../CrystalSky/assets/SUBSYSTEM_PHOTOS/CMS/announcement.png">
                        </div>
                        <div class="admin_right_pane_card">
                        <p class="admin_right_pane_text">Total Announcements</p>
                        <p class="admin_right_pane_number"><?php echo $count_announcements; ?></p>
                        </div>
                </div>
                
                <div class="admin_right_pane_column">
                    <div class="admin_right_pane_icon_dashboard">
                            <img src="../../CrystalSky/assets/SUBSYSTEM_PHOTOS/CMS/event.png">
                        </div>
                    <h4>Total Events</h4>
                    <?php echo $count_events; ?>
                </div>
                
                <div class="admin_right_pane_column">
                    <div class="admin_right_pane_icon_dashboard">
                            <img src="../../CrystalSky/assets/SUBSYSTEM_PHOTOS/CMS/event.png">
                        </div>
                    <h4>Total Post</h4>
                    <?php echo $count_total; ?>
                </div>
                
                <div class="admin_right_pane_column">
                    <div class="admin_right_pane_icon_dashboard">
                            <img src="../../CrystalSky/assets/SUBSYSTEM_PHOTOS/CMS/event.png">
                        </div>
                <h4>Total Images</h4>
                <?php echo $count_imgs; ?>
                </div>
                </div>
</div>
                
                </div>

            </div>
        </div>
    </div>

    


</body>
<script src="../../CrystalSky/javascript/default.js"></script>

</html>