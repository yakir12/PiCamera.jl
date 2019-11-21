module PiCamera

using PyCall
math = pyimport("math")
@show math.sin(math.pi / 4)

#=using PyCall, Images, CoordinateTransformations, ImageView

from io import BytesIO
from time import sleep
from picamera import PiCamera

# Create an in-memory stream
my_stream = BytesIO()
camera = PiCamera()
camera.start_preview()
# Camera warm-up time
sleep(2)
camera.capture(my_stream, 'jpeg')=#

end # module
