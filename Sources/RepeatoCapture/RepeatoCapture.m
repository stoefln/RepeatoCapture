#if DEBUG || TARGET_IPHONE_SIMULATOR
@import RepeatoRender;

#ifdef DEVELOPER_HOST
@implementation RepeatoRender(Connect)
+ (void)load {
#if TARGET_IPHONE_SIMULATOR
    [self startCapture:@"localhost"];
#else
    [self startCapture:@DEVELOPER_HOST];
#endif
}
@end
#endif
#else
#error "Do not include RepeatoCapture in a release build."
#endif
