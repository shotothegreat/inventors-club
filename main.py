import cv2
from pyzbar.pyzbar import decode
img = cv2.imread("barcode2.png")
result = decode(img)
print(result[0])