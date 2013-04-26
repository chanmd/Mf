//
//	 ______    ______    ______    
//	/\  __ \  /\  ___\  /\  ___\   
//	\ \  __<  \ \  __\_ \ \  __\_ 
//	 \ \_____\ \ \_____\ \ \_____\ 
//	  \/_____/  \/_____/  \/_____/ 
//
//	Powered by BeeFramework
//
//
//  CatelogBoard_iPhone.m
//  Mf
//
//  Created by Man Tung on 4/25/13.
//    Copyright (c) 2013 chanmd. All rights reserved.
//

#import "CatelogBoard_iPhone.h"

#pragma mark -

@implementation CatelogBoard_iPhone

DEF_NOTIFICATION( START );
DEF_NOTIFICATION( TIPS);

- (void)load
{
	[super load];
}

- (void)unload
{
	[super unload];
}

#pragma mark Signal

- (void)handleUISignal_BeeUIBoard:(BeeUISignal *)signal
{
	[super handleUISignal:signal];
	
	if ( [signal is:BeeUIBoard.CREATE_VIEWS] )
	{
		self.view.backgroundColor = [UIColor whiteColor];
        
        _startbutton = [[BeeUIButton alloc] initWithFrame:CGRectZero];
        [_startbutton setBackgroundImage:[UIImage imageNamed:@"table.png"]];
        [_startbutton addSignal:self.START forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:_startbutton];
        
//		[self showNavigationBarAnimated:NO];
        
	}
    else if ( [signal is:BeeUIBoard.DELETE_VIEWS] )
    {
        SAFE_RELEASE_SUBVIEW( _startbutton );
    }
	else if ( [signal is:BeeUIBoard.LAYOUT_VIEWS] )
	{
        _startbutton.frame = CGRectMake(103, 100, 114, 115);
	}
}

- (void)handleUISignal_UINavigationBar:(BeeUISignal *)signal
{
//	if ( [signal is:UINavigationBar.BARBUTTON_LEFT_TOUCHED] )
//	{
//		// TODO
//	}
    if ( [signal is:UINavigationBar.BARBUTTON_RIGHT_TOUCHED] )
    {
        // TODO
    }
}

- (void)handleUISignal_CatelogBoard_iPhone:(BeeUISignal *)signal
{
    if ( [signal is:self.START] )
    {
        // TODO
        NSLog(@"hello,world!");

    }
}

/*



#pragma mark Notification

- (void)handleNotification:(NSNotification *)notification
{
	[super handleNotification:notification];

	if ( [notification is:<#CLASS.NAME#>] )
	{
		// TODO
	}
}

- (void)handleNotification_<#CATEGORY#>:(NSNotification *)notification
{
	[super handleNotification:notification];

	if ( [notification is:<#CLASS.NAME#>] )
	{
		// TODO
	}
}

#pragma mark Message

- (void)handleMessage:(BeeMessage *)msg
{
	[super handleMessage:msg];

	if ( [msg is:<#CLASS.NAME#>] )
	{
		// TODO
	}
}

- (void)handleMessage_<#CATEGORY#>:(BeeMessage *)msg
{
	[super handleMessage:msg];

	if ( [msg is:<#CLASS.NAME#>] )
	{
		if ( msg.sending )
		{
			// TODO: show loading
		}
		else
		{
			// TODO: hide loading
		}
		
		if ( msg.succeed )
		{
			// TODO: reload data
		}
		else if ( msg.failed )
		{
			// TODO: show tips
		}
		else if ( msg.cancelled )
		{
			// TODO:
		}
	}
}
 
 */

@end
