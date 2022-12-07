<?php

function card($product_name, $product_price, $product_image, $product_desc){
    $element="
    <div class=\"col-md-3 col-sm-6 my-3 my-md-0\">
        <form action=\"index.php\" method=\"post\">
            <div class=\"card shadow\">
                <div>
                    <img src=\"$product_image\" alt=\"Product\" class=\"img-fluid card-img-top\">
                </div>
                <div class=\"card-body\">
                    <h5 class=\"card-title\">$product_name</h5>
                    <p class=\"card-text\">
                        $product_desc
                    </p>
                    <h5>
                        <span class=\"price\">
                           Khoa $product_price
                        </span>
                    </h5>
                    <a class=\"btn btn-success btn-lg\" href=\"Flights\">Book now!</a>
                </div>
            </div>
        </form>
    </div>";

    echo $element;
}

?>
