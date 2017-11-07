#import "CustomObject.h"
#include <AR6/ARController.h>

@interface CustomObject () <SCNSceneRendererDelegate> {
    ARController *arController;
}
@end

@implementation CustomObject


- (void) someMethod {
    NSLog(@"SomeMethod Ran");
}

@end
