
$(document).ready(function() {
    $.ajax({
        type: "GET",
        url: "/Library/book/getAllAuthors",
        dataType: "json",
        success : function(response) {
            //Create a map.
            var data =
                $.map(response, function(item){
                  console.log("id: " + item.id);
                  console.log("name: " + item.lastName);
                    return{
                        id: item.id,
                        value: item
                    }
                });


            $("#author_textField").autocomplete({
                source: data,
                select: function (event, ui){
                    console.log("selected id:" + ui.item.id);
                    console.log("selected name:" + ui.item.value);

                    //when a country is selected(ie: type China and press enter),
                    //change the value of hidden field to the country's id.
                    $('#author_id').val(ui.item.id);
                }
            });
        }
    });
});