#import "AbbreviationMaker.h"

@implementation AbbreviationMaker
// Complete the abbreviation function below.
- (NSString *) abbreviationFromA:(NSString *)a toB:(NSString *)b {
    a = [a uppercaseString];
//    NSMutableString *aStr = [NSMutableString string];
//    NSMutableString *bStr = [NSMutableString string];
    NSMutableArray *aArray = [NSMutableArray array];
    NSMutableArray *bArray = [NSMutableArray array];
    NSInteger x = -1;
    NSInteger j = 0;

    for (int i = 0; i < [a length]; i++) {
        char ch = [a characterAtIndex:i];
        [aArray addObject: [NSString stringWithFormat:@"%c", ch]];
    }
    NSLog(@"%@", aArray);

    for (int i = 0; i < [b length]; i++) {
        char ch = [b characterAtIndex:i];
        [bArray addObject: [NSString stringWithFormat:@"%c", ch]];
    }
    NSLog(@"%@", bArray);



//    if ([aArray count] < [bArray count]) {
//        return @"NO";
//    }
//
//    for (int i = 0; i < [bArray count]; i++) {
//        x = x+1;
//        while (x <= [aArray count] && aArray[x] != bArray[i]) {
//            [aArray removeObjectAtIndex: x];
//        }
//    }

//    while ([aArray count] > [bArray count]) {
//        j = [bArray count] - 1;
//        [aArray removeObjectAtIndex: j];
//    }

//    if ([aArray count] == [bArray count]) {
//        return @"YES";
//    } else if ([aArray count] < [bArray count]){
//        return @"NO";
//    }

    if ([aArray count] < [bArray count]) {
           return @"NO";
    } else if ([aArray count] >= [bArray count]) {
        for (int i = 0; i < [bArray count]; i++) {
              x = x+1;
              while (x <= [aArray count] && aArray[x] != bArray[i]) {
                  [aArray removeObjectAtIndex: x];
              }
          }
    }

    if ([aArray count] == [bArray count]) {
           return @"YES";
    } else if ([aArray count] > [bArray count]){
        while ([aArray count] > [bArray count]) {
            j = [bArray count] - 1;
            [aArray removeObjectAtIndex: j];
        }
    } else {
        return @"NO";
    }


    return @"NO";
}
@end
