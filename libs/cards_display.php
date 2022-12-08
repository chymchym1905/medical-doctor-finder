<?php

function card($md_id, $md_name, $md_dept, $md_image, $md_loc){
    $element="
    <div class=\"col-md-3 col-sm-6 col-xs-12\">
                        <div class=\"card\">
                            <img src=\"$md_image\" class=\"card-img\" alt=\"\">
                            <div class=\"card-container\">
                                <h5 class=\"card-title\">$md_name</h5>
                                <p class=\"card-text\">Khoa $md_dept</p>
                                <h4 class=\"card-text\">$md_loc</h4>
                                <a href=\"doctor-profile.php?id='.$md_id.'\" class=\"btn btn-primary\">View Profile</a>
                            </div>
                        </div>
                    </div>";

    echo $element;
}

?>
