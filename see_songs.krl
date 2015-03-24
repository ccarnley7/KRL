ruleset see_songs {
  meta {
    name "see_songs"
    description <<
The Echo Server
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
  select when echo message input "(.*)" setting(m)
  send_directive("sing") with
    song = m;
}
}
