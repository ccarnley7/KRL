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

  rule hello_world is active {
  select when echo hello
  send_directive("say") with
    something = "Hello World";
}
   
rule echo is active {
  select when echo message input "(.*)" setting(m)
  send_directive("say") with
    something = m;
}
}
