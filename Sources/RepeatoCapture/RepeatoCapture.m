
@import RepeatoRender;


#ifdef DEVELOPER_HOST
@implementation RepeatoRender(AutoConnect)
+ (void)load {
    [self setFormat:HYBRID_VERSION port:1313 retries:3 sleep:1.0];
    [self setDefer:0.5 maxDefer:0.1 jpegQuality:0.8 benchmark:TRUE];
#if TARGET_IPHONE_SIMULATOR
    [self startCapture:@"localhost"];
#else
    [self startCapture:@DEVELOPER_HOST];
#endif
}
@end
#endif
