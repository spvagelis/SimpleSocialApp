//
//  ViewController.m
//  SimpleSocialApp
//
//  Created by vagelis spirou on 20/5/16.
//  Copyright © 2016 Vangelis Spyrou. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)takePhotoButtonPressed:(id)sender {
    
    picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    [picker setSourceType:UIImagePickerControllerSourceTypeCamera];
    [self presentViewController:picker animated:YES completion:NULL];
}

- (IBAction)loadFromLibraryButtonPressed:(id)sender {
    
    picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    [picker setSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
    [self presentViewController:picker animated:YES completion:NULL];
}

-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info {
    
    image = [info objectForKey:@"UIImagePickerControllerOriginalImage"];
    [self.imageView setImage:image];
    [self dismissViewControllerAnimated:YES completion:NULL];
    
}

-(void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    
    [self dismissViewControllerAnimated:YES completion:NULL];
    
}


- (IBAction)postToFacebookButtonPressed:(id)sender {
    
    composer = [[SLComposeViewController alloc] init];
    composer = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
    [composer setInitialText:[NSString stringWithFormat:@"%@", self.textField.text]];
    [composer addImage:self.imageView.image];
    [composer presentViewController:composer animated:YES completion:NULL];
    
}

- (IBAction)sendATweetButtonPressed:(id)sender {
    
    composer = [[SLComposeViewController alloc] init];
    composer = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
    [composer setInitialText:[NSString stringWithFormat:@"%@", self.textField.text]];
    [composer addImage:self.imageView.image];
    [composer presentViewController:composer animated:YES completion:NULL];
}

- (IBAction)dismissKeyboard:(id)sender {
    
    [self resignFirstResponder];
}
@end
