#import "FibonacciResolver.h"

@implementation FibonacciResolver
- (NSArray*)productFibonacciSequenceFor:(NSNumber*)number {
    NSArray *fibArray = @[@0, @1, @1, @2, @3, @5, @8, @13, @21, @34, @55, @89, @144, @233];
    NSInteger value = 0;
    NSInteger index = 0;
    NSInteger fib1 = 0;
    NSInteger fib2 = 0;
    NSInteger fib3 = 0;
    NSInteger prod = [number intValue];

    while (value < prod) {
        index = index + 1;
        fib1 = [fibArray[index] intValue];
        fib2 = [fibArray[index+1] intValue];
        fib3 = [fibArray[index+2] intValue];
        value = fib1 * fib2;
    }

    if (value == prod) {
        NSNumber *number1 = [NSNumber numberWithInteger: fib1];
        NSNumber *number2 = [NSNumber numberWithInteger: fib2];
        return @[number1, number2, @1];
    } else {
        NSNumber *number1 = [NSNumber numberWithInteger: fib1];
        NSNumber *number2 = [NSNumber numberWithInteger: fib2];
        return @[number1, number2, @0];
    }
}
@end
