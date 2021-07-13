//
//  NSString+PigLatin.m
//  PigLatin
//
//  Created by user169313 on 2021-07-13.
//

#import "NSString+PigLatin.h"

@implementation NSString (PigLatin)

-(NSString *)stringByPigLatinization {
    
    // "Hello"
    
//    NSMutableArray *letters = [[self componentsSeparatedByString:@""] mutableCopy];
    
    NSMutableArray *letters = [[NSMutableArray alloc] initWithCapacity:[self length]];
    for (int i=0; i < [self length]; i++) {
        NSString *ichar  = [NSString stringWithFormat:@"%c", [self characterAtIndex:i]];
        [letters addObject:ichar];
    }
    NSLog(@"letters: %@", [letters componentsJoinedByString:@""]);

    NSCharacterSet *consonants = [NSCharacterSet characterSetWithCharactersInString:@"AEIOUYaeiouy"];
    
    NSMutableArray *consonantChunks = [[self componentsSeparatedByCharactersInSet:consonants] mutableCopy];
    NSString *firstChunk = [consonantChunks objectAtIndex:0];
    NSLog(@"firstChunk: %@", firstChunk);
    
//    NSArray *chunkRange = [firstChunk componentsSeparatedByString:@""];
    
    NSMutableArray *chunkRange = [[NSMutableArray alloc] initWithCapacity:[firstChunk length]];
    for (int i=0; i < [firstChunk length]; i++) {
        NSString *ichar  = [NSString stringWithFormat:@"%c", [firstChunk characterAtIndex:i]];
        [chunkRange addObject:ichar];
    }
    NSLog(@"chunkRange: %@", [chunkRange componentsJoinedByString:@""]);

    
    NSRange range = NSMakeRange(0, [firstChunk length]);
    
    [letters removeObjectsInRange:range];
    
    [letters addObject:firstChunk];
    [letters addObject:@"ay"];
    
    NSString *finalWord =  [letters componentsJoinedByString:@""];
    
    return finalWord;
}

@end



// Turn string into array of letters and spaces
//    [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];

// Separate words by spaces
//    NSArray *wordsArray = [self componentsSeparatedByString:@" "];

//    NSArray *lettersArray = [self componentsSeparatedByString:@" "];



//NSString *str = @"Hey whats up";
//
//NSScanner *scanner = [NSScanner scannerWithString:str];
//
//// Skip commas
//NSMutableCharacterSet *skipChars = [NSMutableCharacterSet characterSetWithCharactersInString:@","];
//// Skip whitespace
//[skipChars formUnionWithCharacterSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
//// scanner now ignores skipChars eg. the characters to be skipped (commas and whitespace)
//scanner.charactersToBeSkipped = skipChars;
//
//// instructions codes can be upper- or lower-case
//NSCharacterSet *instructionSet = [NSCharacterSet characterSetWithCharactersInString:@"BCDFGHJKLMNPQRSTVWXYZbcdfghjklmnpqrstvwxyz"];
//
//// scan tring for an instruction code
//while ([scanner scanCharactersFromSet:instructionSet intoString:&str]) {
//    
//    
//}
