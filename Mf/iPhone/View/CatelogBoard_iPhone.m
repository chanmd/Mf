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

@implementation StartCell

DEF_NOTIFICATION( START );
DEF_NOTIFICATION( FEEDBACK);
DEF_NOTIFICATION( TUTORIAL );

- (void)handleUISignal_StartCell:(BeeUISignal *)signal
{
	[super handleUISignal:signal];
	
	if ( [signal is:BeeUIBoard.CREATE_VIEWS] )
	{
        _startbutton = [[BeeUIButton alloc] initWithFrame:CGRectZero];
        _startbutton.title = @"开始";
        _startbutton.backgroundColor = [UIColor blackColor];
        [_startbutton addSignal:self.START forControlEvents:UIControlEventTouchUpInside];
        
        
        _feedbackbutton = [[BeeUIButton alloc] initWithFrame:CGRectZero];
        _feedbackbutton.title = @"反馈";
        _feedbackbutton.backgroundColor = [UIColor blackColor];
        [_feedbackbutton addSignal:self.FEEDBACK forControlEvents:UIControlEventTouchUpInside];
        
        
        _tutorialbutton = [[BeeUIButton alloc] initWithFrame:CGRectZero];
        _tutorialbutton.title = @"帮助";
        _tutorialbutton.backgroundColor = [UIColor blackColor];
        [_tutorialbutton addSignal:self.TUTORIAL forControlEvents:UIControlEventTouchUpInside];
        
        //		[self showNavigationBarAnimated:NO];
        
	}
    else if ( [signal is:BeeUIBoard.DELETE_VIEWS] )
    {
        SAFE_RELEASE_SUBVIEW( _startbutton );
        SAFE_RELEASE_SUBVIEW( _feedbackbutton );
        SAFE_RELEASE_SUBVIEW( _tutorialbutton );
    }
	else if ( [signal is:BeeUIBoard.LAYOUT_VIEWS] )
	{
        _startbutton.frame = CGRectMake(100, 100, 120, 50);
        
        _feedbackbutton.frame = CGRectMake(100, 200, 120, 50);
        
        _tutorialbutton.frame = CGRectMake(100, 300, 120, 50);
        
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
        NSLog(@"start");
        
    }
    else if ( [signal is:self.FEEDBACK] )
    {
        // TODO
        NSLog(@"feedback");
        
    }
    else if ( [signal is:self.TUTORIAL] )
    {
        //TODO
        NSLog(@"tutorial");
        
    }
}



@end

#pragma mark -

@implementation CatelogBoard_iPhone

- (void)load
{
	[super load];
}

- (void)unload
{
	[super unload];
    //
}

#pragma mark Signal

- (void)handleUISignal_BeeUIBoard:(BeeUISignal *)signal
{
	[super handleUISignal:signal];
	
	if ( [signal is:BeeUIBoard.CREATE_VIEWS] )
	{
		self.view.backgroundColor = [UIColor whiteColor];
        
        _startcell = [[StartCell alloc] initWithFrame:CGRectZero   ];
        
        
        
        
//		[self showNavigationBarAnimated:NO];
        
	}
    else if ( [signal is:BeeUIBoard.DELETE_VIEWS] )
    {
        
    }
	else if ( [signal is:BeeUIBoard.LAYOUT_VIEWS] )
	{
        
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
