import cv2
from pyzbar.pyzbar import decode
image_name = input("Please enter the name of the image: ")
image_extension = input("Please enter the image extension e.g. png, JPEG: ").lower()
img = cv2.imread(f"{image_name}.{image_extension}")
result = decode(img)
for results in result:
    print(results.data.decode("utf-8"))
