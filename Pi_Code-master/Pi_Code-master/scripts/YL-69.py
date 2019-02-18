import RPi.GPIO as GPIO
import spidev
import time

# Open SPI bus
spi = spidev.SpiDev()
spi.open(0, 0)

def ReadChannel(channel):
    adc = spi.xfer2([1, (8 + channel) << 4, 0])
    data = ((adc[1] & 3) << 8) + adc[2]
    return data

def ConvertVolts(data, places):
    volts = (data * 3.3) / float(1023)
    volts = round(volts, places)
    return volts

def ConvertPercent(data):
    percent = (data * 100) / float(1023)

    return round(percent, 2)

def PercentOm(data):
    result = (100 - data)

    return result

moisture_channel = 1
moisture_channel_2 = 2

def main():

    while True:

      
        moisture_level = (ReadChannel(moisture_channel) + ReadChannel(moisture_channel_2))/2
        moisture_volts = ConvertVolts(moisture_level, 2)
        moisture_percent = PercentOm(ConvertPercent(moisture_level))

   

def destroy():
    GPIO.cleanup()


if __name__ == '__main__':
    try:
        main()
    except KeyboardInterrupt:
        destroy()
