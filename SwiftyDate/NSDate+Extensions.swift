//
//  NSDate+Extensions.swift
//  SwiftyDate
//
//  Created by Luke De Feo on 03/02/2016.
//  Copyright © 2016 Luke De Feo. All rights reserved.
//

import Foundation

extension Int{
	
	var nanosecond: (Int, NSCalendarUnit) {
		return (self, NSCalendarUnit.Nanosecond)
	}
	
	var second: (Int, NSCalendarUnit) {
		return (self, NSCalendarUnit.Second)
	}
	
	var minute: (Int, NSCalendarUnit) {
		return (self, NSCalendarUnit.Minute)
	}
	
	var hour: (Int, NSCalendarUnit) {
		return (self, NSCalendarUnit.Hour)
	}
	
	var day: (Int, NSCalendarUnit) {
		return (self, NSCalendarUnit.Day)
	}
	
	var month: (Int, NSCalendarUnit) {
		return (self, NSCalendarUnit.Month)
	}
	
	var year: (Int, NSCalendarUnit) {
		return (self, NSCalendarUnit.Year)
	}
}

public func + (date: NSDate, tuple: (value: Int, unit: NSCalendarUnit)) -> NSDate {
	return NSCalendar.currentCalendar().dateByAddingUnit(tuple.unit, value: tuple.value, toDate: date, options:.WrapComponents)!
}

public func - (date: NSDate, tuple: (value: Int, unit: NSCalendarUnit)) -> NSDate {
	return NSCalendar.currentCalendar().dateByAddingUnit(tuple.unit, value: (-tuple.value), toDate: date, options:.WrapComponents)!
}

public func += (inout date: NSDate, tuple: (value: Int, unit: NSCalendarUnit)) {
	date =  NSCalendar.currentCalendar().dateByAddingUnit(tuple.unit, value: tuple.value, toDate: date, options:.WrapComponents)!
}

public func -= (inout date: NSDate, tuple: (value: Int, unit: NSCalendarUnit)) {
	date =  NSCalendar.currentCalendar().dateByAddingUnit(tuple.unit, value: -tuple.value, toDate: date, options:.WrapComponents)!
}

func <=(lhs: NSDate, rhs: NSDate) -> Bool {
	return lhs.timeIntervalSince1970 <= rhs.timeIntervalSince1970
}
func >=(lhs: NSDate, rhs: NSDate) -> Bool {
	return lhs.timeIntervalSince1970 >= rhs.timeIntervalSince1970
}
func >(lhs: NSDate, rhs: NSDate) -> Bool {
	return lhs.timeIntervalSince1970 > rhs.timeIntervalSince1970
}
func <(lhs: NSDate, rhs: NSDate) -> Bool {
	return lhs.timeIntervalSince1970 < rhs.timeIntervalSince1970
}
func ==(lhs: NSDate, rhs: NSDate) -> Bool {
	return lhs.timeIntervalSince1970 == rhs.timeIntervalSince1970
}

extension NSDate {
	
	convenience init(year: Int, month: Int, day: Int, hour: Int = 0, minute: Int = 0, second: Int = 0 ) {
		
		let components = NSDateComponents()
		components.year = year
		components.month = month
		components.day = day
		components.hour = hour
		components.minute = minute
		components.second = second
		let date = NSCalendar.currentCalendar().dateFromComponents(components)!
		self.init(timeIntervalSince1970: date.timeIntervalSince1970)
		
	}
}

extension NSDate {
	
	var second: Int {
		return NSCalendar.currentCalendar().components(NSCalendarUnit.Second, fromDate: self).second
	}
	
	var minute: Int {
		return NSCalendar.currentCalendar().components(NSCalendarUnit.Minute, fromDate: self).minute
	}
	
	var hour: Int {
		return NSCalendar.currentCalendar().components(NSCalendarUnit.Hour, fromDate: self).hour
	}
	
	var day: Int {
		return NSCalendar.currentCalendar().components(NSCalendarUnit.Day, fromDate: self).day
	}
	
	var month: Int {
		return NSCalendar.currentCalendar().components(NSCalendarUnit.Month, fromDate: self).month
	}
	
	var year: Int {
		return NSCalendar.currentCalendar().components(NSCalendarUnit.Year, fromDate: self).year
	}
	
}