(function() {
  var write_foo;

  write_foo = function() {
    return document.write('foo');
  };

  write_foo();

}).call(this);

(function() {
  var write_bar;

  write_bar = function() {
    return document.write('bar');
  };

  write_bar();

}).call(this);
