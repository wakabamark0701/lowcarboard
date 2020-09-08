$(function() {
  $("#post_foodname1").on("keyup", function() {
    let input = $("#post_foodname1").val();
    console.log(input);
    // $.ajax({
    //   type: "GET",
    //   url: "/foods/new",
    //   data: { keyword: input },
    //   dataType: "json"
    // })
    // .done(function(foods) {
    //   console.log("成功です");
    // })
    // .fail(function() {
    //   console.log("失敗です");
    // });
  });
});
