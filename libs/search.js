$(document).ready(function () {
    // Send Search Text to the server
    $(".main-search-bar").keyup(function () {
      let searchText = $(this).val();
      if (searchText != "") {
        $.ajax({
          url: "search.php",
          method: "post",
          data: {
            query: searchText,
          },
          success: function (response) {
            $(".mysearch-list").html(response);
          }
        });
      } else {
        $(".mysearch-list").html("");
      }
    });
  });

