# Matrix Assessment Report

> [!TIP]
> Use this document to record your progress, the problems you faced and how you solved (or avoided) them.
> You can include images or add files in this directory if you want.

<!-- TODO: Write about what you tried and your process here -->

> For reference, I am going under the assumption AI is completely not allowed during this so all the research and whatnot is manual.

> Entry #1
Alright so I have no clue what Matrix is but I had heard it before so obviously the first step will be to read about tuwunnel and Matrix to understand fully what I was getting into.

> Entry #2
Ok so from what I understand I require some domain where I need DNS control, now I do know that stuff like cloudfare works well for this because I've done something similar to this before so despite the fact its $10 I'll go with it and just pray I did actually need it.

> Entry #3
I'll now pull tuwunnel, I don't think I have docker installed on this computer so let me real quick do that lmao, also turns out it was $15 it was USD :(.

> Entry #4
Now I need to create a config file according to the tuwunnel documentation and fill it with the domain I now own.

> Entry #5
Alright so after some tinkering I got the server to run, now I need to register for an account in said server, however it is returning a 403 error, so I am going to figure out how to solve that.

> Entry #6
Fixed it!! Reading the error messages now as I try and register it seems i need a session ID and this is REALLY reminding me of Comp1531 lmao, so one hopes this will somewhat come in handy later on, I additionally found out I need to do the command lines in JSON, which is again luckily something I am familiar with given I have done 1531 along with other personal projects.

> Entry #7
I now have a Matrix handle (I think), PRAYING this works now, all I have to do is create a private chat room and then send a message as far as I am aware but also I could be completely off so idk if this'll work. I tried to use federation and I was a bit lost as to how it worked so I think I will try and message instead.

> Entry #8
I alledgedly sent a message, I have no clue if it worked but I have messaged the discord to see if anything came through, fingers crossed.

> Entry #9
Alright so it didn't work :(, however I was recommended to use element.io to check to see if it works so I am trything that now.

> Entry #10
I opened up element.io and it errored saying I needed permission to send messages, turns out my localhost didn't have the ability to go online, so I will use cloudfared to host a tunnel and be able to properly go online.

> Entry #11
SUCCESS!! I restarted the server this time with a cloudfared public url and after adding a [global.well_known] section as recommended by the FAQ, it finally allowed it to work for me! I am very happy with this lol.

## Matrix Handle

`@admin:theorem-nova-merry-acute.trycloudflare.com`
