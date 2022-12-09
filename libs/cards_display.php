<?php

function card($md_id, $md_name, $md_dept, $md_image, $md_loc, $md_desc){
    $element="
    <div class=\"col-md-3 col-sm-6 col-xs-12\">
                        <div class=\"card\">
                            <img src=\"$md_image\" class=\"card-img\" alt=\"\">
                            <div class=\"card-container\">
                                <h5 class=\"card-title\">$md_name</h5>
                                <p class=\"card-text\">Khoa $md_dept</p>
                                <h4 class=\"card-text\">$md_loc</h4>
                                <p class=\"card-text\">$md_desc</p>
                                <a href=\"?page=doctor-profile&md_id=$md_id\" class=\"btn btn-primary\">View Profile</a>
                            </div>
                        </div>
                    </div>";
    echo $element;
}

function md_profile($md_id, $md_name, $md_dept, $md_photo, $md_clinic, $md_address, $md_desc, $md_degree){
    $element="
        <div class=\"col-12\">
            <div class=\"profile-card\">
                <img src=\"$md_photo\" class=\"profile-card-img\" alt=\"\">
                <div class=\"profile-card-container\">
                    <h2 class=\"profile-card-title\">$md_name</h2>
                    <h4 class=\"profile-card-text\">Khoa $md_dept</h4>
                    <h5 class=\"profile-card-text\">$md_clinic</h5>
                    <p class=\"profile-card-text\">$md_desc</p>
                    <a href=\"?page=make-appointment&md_id=$md_id\" class=\"btn btn-primary\">Make an Appointment</a>
                </div>
            </div>
        </div>";
    echo $element;
    $_SESSION['doctor_id'] = $md_id;
}

function p_profile($p_id, $p_name, $p_dob, $p_desc, $p_address, $md_id, $user_id){
    $element="
    <div class=\"col-md-3 col-sm-6 col-xs-12\">
                        <div class=\"card\">
                            <img src=\"$md_image\" class=\"card-img\" alt=\"\">
                            <div class=\"card-container\">
                                <h5 class=\"card-title\">$md_name</h5>
                                <p class=\"card-text\">Khoa $md_dept</p>
                                <h4 class=\"card-text\">$md_loc</h4>
                                <p class=\"card-text\">$md_desc</p>
                                <a href=\"?page=doctor-profile&md_id=$md_id\" class=\"btn btn-primary\">View Profile</a>
                            </div>
                        </div>
                    </div>";
    echo $element;
}

?>
