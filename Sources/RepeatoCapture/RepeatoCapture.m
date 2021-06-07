
@import RepeatoRender;

@implementation RepeatoRender(Connect)

+ (void)load {
    [self startCapture:@DEVELOPER_HOST];
}

@end
