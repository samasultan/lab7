//
//  main.m
//  PigLatin
//
//  Created by user169313 on 2021-07-13.
//

#import <Foundation/Foundation.h>
#import "NSString+PigLatin.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *something = @"Heel";
        
        NSLog(@"%@", [something stringByPigLatinization]);
        
    }
    return 0;
}
