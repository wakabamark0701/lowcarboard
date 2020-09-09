$(function() {
  function addFood(food){
    let html = `<div id="post_foodname1"><p>${food.name}</p></div>`;

  $(".contents-input__foods").append(html)
  }

  // function addNoFood(food){
  //   let html = `<div id="post_foodname1"><p>登録が有りません</p></div>`;

  // $(".contents-input__foods").append(html)

  // }


  $("#post_foodname1").on("keyup", function() {
    let input = $("#post_foodname1").val();
    console.log(input);
    $.ajax({
      type: "GET",
      url: "/foods/new",
      data: { keyword: input },
      dataType: "json"
    })
    .done(function(foods) {
      $(".contents-input__foods").empty();
      if (foods.length !== 0){
        foods.forEach(function(food){
          addFood(food);
      });
    }else if (input.length == 0){
      return false;  
    }
    }) 
    .fail(function() {
      console.log("失敗です");
    });
  });
});
