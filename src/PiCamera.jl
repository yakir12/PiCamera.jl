module PiCamera

export preview

using VideoIO, ImageView

function preview()
    cam = VideoIO.opencamera()
    img = read(cam)
    i = imshow(img)
        sleep(0)
    canvas = i["gui"]["canvas"]
for i in 1:50
        img = read(cam)
	@show i
end
    @async while true
        img = read(cam)
        imshow!(canvas, img)
        sleep(0)
    end
    return cam
end

end # module
