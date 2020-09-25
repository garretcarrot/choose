#import <XCTest/XCTest.h>
#import "../SDAppDelegate.m"

static char *colorCode;

@interface choose_tests : XCTestCase

@end

@implementation choose_tests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
    colorCode = NULL;
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    if (colorCode != NULL) {
        free(colorCode);
    }
}

- (void)testHexFromSDColor {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    colorCode = HexFromSDColor(NSColor.whiteColor);
    XCTAssert(colorCode != NULL && strcmp(colorCode, "FFFFFF") == 0);
}

@end
