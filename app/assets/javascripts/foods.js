// $(function() {
//   function addFood(food) {
//     let html = `
//                 <div class="food clearfix">
//                   <p class="food__name">${food.name}</p>
//                   <div class="food__addbtn" data-food-name="${food.name}">追加</div>
//                 </div>
//                 `;
//     $("#post_foodname1").append(html);
//   }

//   function addNoFood() {
//     let html = `
//                 <div class="food clearfix">
//                   <p class="food__name"">食品が見つかりません</p>
//                 </div>
//                 `;
//     $("#post_foodname1").append(html);
//   }  

//   $("#post_foodname1").on("keyup",function() {
//     let input = $("#post_foodname1").val();
//     $.ajax({
//       type: 'GET',
//       url: '/foods',
//       data: { keyword: input },
//       dataType: 'json'
//     })

//     .done(function(foods) {
//       if (foods.length !== 0) {
//         foods.forEach(function(food) {
//           addFood(food);
//         });
//       } else if (input.length == 0) {
//         return false;
//       } else {
//         addNoFood();
//       }
//     })
//     // .fail(function() {
//     //   alert("通信エラーです。ユーザーが表示できません。");
//     // });
//   });
// });
