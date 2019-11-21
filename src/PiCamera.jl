module PiCamera

export preview

using VideoIO, ImageView

function preview()
    cam = VideoIO.opencamera()
    img = read(cam)
    i = imshow(img)
    c = i["gui"]["canvas"]
    while true 
        img = read(cam)
        imshow!(c, img)
    end
end

end # module
