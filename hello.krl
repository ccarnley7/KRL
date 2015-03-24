ruleset echo {
  meta {  
    name "echo"
    description <<
    echo rule sets.
    >>
    author "adam burdett"
    logging off
  }

  rule hello{
    select when echo hello

    {
      send_directive("say") with something = "Hello World";
    }

  }
  rule message{
    select when echo message
    pre {
          foo = event:attr("input");
        }
    {
      send_directive("say") with something = foo;
    }

  }

  rule displayMEWOrking{
    select when pageview ".*" {
      notify("version" ,".1");

    }

  }
}