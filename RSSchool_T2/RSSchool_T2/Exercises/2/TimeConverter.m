#import "TimeConverter.h"

@implementation TimeConverter
// Complete the following function
- (NSString*)convertFromHours:(NSString*)hours minutes:(NSString*)minutes {

    NSInteger h = [hours intValue];
    NSInteger m = [minutes intValue];

    NSArray *sArray = @[@"", @"one", @"two", @"three", @"four",
    @"five", @"six", @"seven", @"eight", @"nine",
    @"ten", @"eleven", @"twelve", @"thirteen",
    @"fourteen", @"quarter", @"sixteen", @"seventeen",
    @"eighteen", @"nineteen", @"twenty", @"twenty one",
    @"twenty two", @"twenty three", @"twenty four",
    @"twenty five", @"twenty six", @"twenty seven",
    @"twenty eight", @"twenty nine", @"half"];

    if (h > 12 || m > 60) {
        return sArray[0];
    } else if (m == 0) {
        return [NSString stringWithFormat: @"%@ o' clock", sArray[h]];
    } else if (m <= 30) {
        if (m == 15 || m == 30) {
            return [NSString stringWithFormat: @"%@ past %@", sArray[m], sArray[h]];
        } else {
            return [NSString stringWithFormat: @"%@ minutes past %@", sArray[m], sArray[h]];
        }
    } else if (m > 30) {
        h += 1;
        m = 60 - m;
        if (m == 15) {
            return [NSString stringWithFormat: @"%@ to %@", sArray[m], sArray[h]];
        } else {
            return [NSString stringWithFormat: @"%@ minutes to %@", sArray[m], sArray[h]];
        }
    }
    return @"";
}
@end
