# SwiftyDate
Simpler api for NSDate

#Features

- operator overloading for adding and subtracting dates
- operator overloading for date comparison
- easy access to NSCalenderComponents
- easy way to add x amount of NSCalenderUnit

#Examples

var nextYear = NSDate() + 1.year - 30.minute
nextYear += 5.day

var yesterday = NSDate() - 1.day

nextYear > yesterday //true

yesterday.minute //44

#Todo

tests...
