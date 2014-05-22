//
//  MKTestTests.m
//  MKTestTests
//
//  Created by kramden on 5/22/14.
//  Copyright (c) 2014 kramden. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "MKNetworkKit.h"


@interface MKTestTests : XCTestCase

@end

@implementation MKTestTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testNSDataBase64CategoryWithString1
{
    
    // hello world
    NSString *encodedString = @"aGVsbG8gd29ybGQK";
    
    NSData *data = [NSData dataFromBase64String:encodedString];
    
    NSString *expectedOutput = @"hello world\n";
    
    NSString *converted = [[NSString alloc]initWithData:data
                                           encoding:NSASCIIStringEncoding];
    
    XCTAssertTrue(([converted isEqualToString:expectedOutput]),
                  @"conversion from base64 to NSData failed");
    
}


- (void)testNSDataBase64CategoryWithString2
{
    
    // "the quick brown fox jumps over the lazy dog"
    NSString *encodedString = @"dGhlIHF1aWNrIGJyb3duIGZveCBqdW1wcyBvdmVyIHRoZSBsYXp5IGRvZwo=";
    
    NSData *data = [NSData dataFromBase64String:encodedString];
    
    NSString *expectedOutput = @"the quick brown fox jumps over the lazy dog\n";
    
    NSString *converted = [[NSString alloc]initWithData:data encoding:NSASCIIStringEncoding];
    
    XCTAssertTrue(([converted isEqualToString:expectedOutput]), @"conversion from base64 to NSData failed");
    
}


@end
