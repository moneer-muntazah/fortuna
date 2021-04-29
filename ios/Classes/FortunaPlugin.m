#import "FortunaPlugin.h"
#if __has_include(<fortuna/fortuna-Swift.h>)
#import <fortuna/fortuna-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "fortuna-Swift.h"
#endif

@implementation FortunaPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFortunaPlugin registerWithRegistrar:registrar];
}
@end
