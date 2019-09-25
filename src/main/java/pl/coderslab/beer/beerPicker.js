$(function () {

    $('input[name="pickedBeers"]:checked').each(function() {
        console.log(this.value);
    });


})