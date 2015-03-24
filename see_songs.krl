ruleset see_songs {
  meta {
    name "see_songs"
    description <<
The see songs Server
>>
    author "Christian"
    logging on
    sharing on
  }
  global {
    hello = function(obj) {
      msg = "Hello " + obj
      msg
    };
 
  }
  rule songs is active {
    select when echo message msg_type "(song)" setting(m)
    send_directive("sing") with
      song = m;
  }
}
