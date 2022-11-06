from PIL import Image
import numpy

image = Image.open('static/IMG.png')
imagedata = numpy.asarray(image)

copy = numpy.array(imagedata)
temp1 = numpy.array(copy[0][0])
temp2 = numpy.array(copy[0][1])
copy[0][0] = temp2
copy[0][1] = temp1

newimage = Image.fromarray(copy)
newimage.save('sol.png', 'PNG')