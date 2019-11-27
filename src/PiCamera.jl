module PiCamera

export preview

using AbstractPlotting, GLMakie, Makie, VideoIO, CoordinateTransformations, Interact, Observables

# cam_rotation = slider(range(0, stop = 2π, length = 100))
# cam_position = slider(range(0, stop = 2π, length = 100))
# cam_transform = PerspectiveMap() ∘ inv(AffineMap(cam_rotation, cam_position))
# screen_points = map(cam_transform, points)

function preview()
    cam = VideoIO.opencamera()
    VideoIO.playvideo(cam)
end

end # module
