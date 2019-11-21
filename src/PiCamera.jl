module PiCamera

export preview

using VideoIO, ImageView, Dates

function preview()
    cam = VideoIO.opencamera()
    img = read(cam)
    i = imshow(img)
    canvas = i["gui"]["canvas"]
    start = now()
    while now() - start ≤ Minute(1)
        img = read(cam)
        imshow!(canvas, img)
        sleep(0.001)
    end

    # Create a condition object
    c = Condition()

    # Get the window
    win = i["gui"]["window"]

    # Notify the condition object when the window closes
    signal_connect(win, :destroy) do _
        notify(c)
    end

    # Wait for the notification before proceeding ...
    wait(c)
    close(cam)
end

end # module
