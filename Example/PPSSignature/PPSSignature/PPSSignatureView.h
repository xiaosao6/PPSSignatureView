#import <UIKit/UIKit.h>
#import <GLKit/GLKit.h>

@interface PPSSignatureView : GLKView

@property (assign, nonatomic) UIColor *strokeColor;
@property (assign, nonatomic) BOOL hasSignature;
@property (strong, nonatomic) UIImage *signatureImage;


/**
 *  擦除所有图形
 */
- (void)erase;

/**
 *  返回包含该签字view的ViewController，可以添加到自己的ViewController中作为子vc
 */
+(GLKViewController *)vc;

@end
