#import "Dates.h"

@implementation Dates

- (NSString *)textForDay:(NSString *)day month:(NSString *)month year:(NSString *)year {

//    NSString *sDate = day + @" " + month + @" " + year;
//	NSMutableString *sDate = day + month + year;
//    NSString *sDate = @"a";

    NSMutableString *sDate = [[NSMutableString alloc] initWithString: day];
    [sDate appendString: @"-"];
    [sDate appendString: month];
    [sDate appendString: @"-"];
    [sDate appendString: year];

    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat: @"dd-MM-yyyy"];
    NSDate *date  = [dateFormatter dateFromString: sDate];

    // Convert to new Date Format
    [dateFormatter setDateFormat: @"dd MMMM, EEEE"];
    NSLocale *ruLocale = [[NSLocale alloc] initWithLocaleIdentifier: @"ru_RU"];
    dateFormatter.locale = ruLocale;
    NSString *newDate = [dateFormatter stringFromDate: date];

    if (newDate == nil) {
        return @"Такого дня не существует";
    } else {
        return newDate;
    }
}

@end
