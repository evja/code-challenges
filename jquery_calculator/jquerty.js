$( document ).ready(function() {

  var add = function(a, b) {
    var sum = a + b
    return(sum)
  };

  var keys = $('#nums span');
  console.log(keys);

  var disp = $('#screen');

  for (var i = 0; i < keys.length; i++) {
    keys[i].onclick = function() {
      var val = this.innerHTML

      var a_num = $('#screen').append(val);

      if(val == '+') {
        alert(disp)
      };
    };
  };
});