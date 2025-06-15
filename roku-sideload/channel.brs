' RokuDev Private Channel main BrightScript file

sub Main()
    screen = CreateObject("roScreen", true)
    port = CreateObject("roMessagePort")
    screen.SetMessagePort(port)
    screen.Clear(&h000000FF) ' Black background

    ' Display placeholder text
    screen.DrawText("RokuDev Private Channel", 50, 50, &h00FFFFFF) ' White text
    screen.SwapBuffers()

    while true
        msg = wait(0, port)
        if type(msg) = "roScreenEvent" then
            if msg.isScreenClosed() then
                exit while
            end if
        end if
    end while
end sub
