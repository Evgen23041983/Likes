$(document).ready(function() {
    $(".like").bind("click", function() {
        let login = $(this).attr("data-login");
        let title = document.title;
        let url = document.location.href;
        let todayDate = new Date();
        let currYear = todayDate.getFullYear();
        let currMonth = todayDate.getMonth()+1;
        let currDay = todayDate.getDate();
        let data = currDay + "-" + currMonth + "-" + currYear;   
          $.ajax({
                url: "/like.php", 
                method: "POST",
                data: {title : title, url : url, login : login, data : data},
            success: function(result){
                $('.counter').text(result);
            }
        });
    });
    });