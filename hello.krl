ruleset echo {
  meta {
    name "Echo"
    description <<
The Echo Server
>>
    author "Christian"
    logging on
    sharing on
    provides hello
 
  }
  global {
    hello = function(obj) {
      msg = "Hello " + obj
      msg
    };
 
  }
  rule hello is active {
    select when echo hello
    send_directive("say") with
      something = "Hello World";
  }

  rule message is active {
    select when echo message
    send_directive("say") with
    somthing = event::attr("input");
  }
 
}
