
@import RepeatoRender;


#ifdef DEVELOPER_HOST
@implementation RepeatoRender(AutoConnect)
+ (void)load {
#if TARGET_IPHONE_SIMULATOR
    [self startCapture:@"localhost"];
#else
    [self startCapture:@DEVELOPER_HOST];
#endif
}
@end
#endif
