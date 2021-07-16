#define REMOTE_HYBRID
//#define REMOTE_MINICAP
#define REMOTE_PORT 1313
//#define REMOTE_PNGFORMAT
//#define REMOTE_APPNAME GenericCapture
#define REMOTE_OVERSAMPLE *(float *)device.remote.scale
#define REMOTE_BENCHMARK
#define REMOTE_DEFER 0.5
#define REMOTE_MAXDEFER 0.1

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
