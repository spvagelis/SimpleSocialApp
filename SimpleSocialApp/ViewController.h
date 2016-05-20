//
//  ViewController.h
//  SimpleSocialApp
//
//  Created by vagelis spirou on 20/5/16.
//  Copyright © 2016 Vangelis Spyrou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UINavigationControllerDelegate,UIImagePickerControllerDelegate> {
    
    UIImagePickerController *picker;
    UIImage *image;
    
    
}

@property (strong, nonatomic) IBOutlet UITextField *textField;
@property (strong, nonatomic) IBOutlet UIImageView *imageView;

- (IBAction)takePhotoButtonPressed:(id)sender;
- (IBAction)loadFromLibraryButtonPressed:(id)sender;
- (IBAction)postToFacebookButtonPressed:(id)sender;
- (IBAction)sendATweetButtonPressed:(id)sender;

- (IBAction)dismissKeyboard:(id)sender;

@end

