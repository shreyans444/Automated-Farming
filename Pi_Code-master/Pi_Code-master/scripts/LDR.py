import RPi.GPIO as GPIO
import spidev
import time


# Open SPI bus
spi = spidev.SpiDev()
spi.open(0, 0)

# Funtion to read data from MCP3008 chip
# The integer channel should be from 0-7
def ReadChannel(channel):
    adc = spi.xfer2([1, (8 + channel) << 4, 0])
    data = ((adc[1] & 3) << 8) + adc[2]
    return data


# Function to convert data to voltage
def ConvertVolts(data, places):
    volts = (data * 3.3) / float(1023)
    volts = round(volts, places)
    return volts


# Funtion to convert voltage in perccent
def ConvertPercent(data):
    percent = (data * 100) / float(1023)

    # Rounding percent to 2 digits
    return round(percent, 2)

def PercentOm(data):
    result = (100 - data)

    return result

#Read channel
light_channel = 0

def main():

    while True:
        # Read and calculate light data
        light_level = ReadChannel(light_channel)
        light_volts = ConvertVolts(light_level, 2)
        light_percent = ConvertPercent(light_level)

       

def destroy():
    GPIO.cleanup()


if __name__ == '__main__':
    try:
        main()
    except KeyboardInterrupt:
        destroy()
