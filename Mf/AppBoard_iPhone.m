//
//   ______    ______    ______    
//  /\  __ \  /\  ___\  /\  ___\   
//  \ \  __<  \ \  __\_ \ \  __\_ 
//   \ \_____\ \ \_____\ \ \_____\ 
//    \/_____/  \/_____/  \/_____/ 
//
//  Powered by BeeFramework
//
//
//  AppBoard_iPhone.m
//  Mf
//
//  Created by Man Tung on 4/24/13.
//    Copyright (c) 2013 chanmd. All rights reserved.
//

#import "AppBoard_iPhone.h"
#import "CatelogBoard_iPhone.h"

#pragma mark -

@implementation AppBoard_iPhone

DEF_SINGLETON( AppBoard_iPhone )

DEF_NOTIFICATION( SWITCH_CATELOG )
DEF_NOTIFICATION( SWITCH_MAIN )
DEF_NOTIFICATION( SWITCH_PANEL )
DEF_NOTIFICATION( SWITCH_SETTING )

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
        [BeeUITipsCenter setDefaultContainerView:self.view];
        [BeeUITipsCenter setDefaultBubble:[UIImage imageNamed:@"alertBox.png"]];
        
        self.view.backgroundColor = [UIColor whiteColor];
        
        _mainStackGroup = [[BeeUIStackGroup alloc] init];
        [self.view addSubview:_mainStackGroup.view];
        
        [self addObsevers];
        
        [self presentModalBoard:[[[CatelogBoard_iPhone alloc] init] autorelease] animated:NO];
        
        [self postNotification:self.SWITCH_CATELOG];
        
        
    }
    else if ( [signal is:BeeUIBoard.DELETE_VIEWS] )
    {
        SAFE_RELEASE( _mainStackGroup );
    }
    else if ( [signal is:BeeUIBoard.LAYOUT_VIEWS] )
    {
        _mainStackGroup.view.frame = CGRectMake(0, 0, self.viewBound.size.width, self.viewBound.size.height);
    }
    else if ( [signal is:BeeUIBoard.LOAD_DATAS] )
    {
    }
    else if ( [signal is:BeeUIBoard.FREE_DATAS] )
    {
    }
    else if ( [signal is:BeeUIBoard.WILL_APPEAR] )
    {
    }
    else if ( [signal is:BeeUIBoard.DID_APPEAR] )
    {
    }
    else if ( [signal is:BeeUIBoard.WILL_DISAPPEAR] )
    {
    }
    else if ( [signal is:BeeUIBoard.DID_DISAPPEAR] )
    {
    }
    else if ( [signal is:BeeUIBoard.ORIENTATION_CHANGED] )
    {
    }
    else if ( [signal is:BeeUIBoard.ANIMATION_BEGIN] )
    {
    }
    else if ( [signal is:BeeUIBoard.ANIMATION_FINISH] )
    {
    }
    else if ( [signal is:BeeUIBoard.MODALVIEW_WILL_SHOW] )
    {
    }
    else if ( [signal is:BeeUIBoard.MODALVIEW_DID_SHOWN] )
    {
    }
    else if ( [signal is:BeeUIBoard.MODALVIEW_WILL_HIDE] )
    {
    }
    else if ( [signal is:BeeUIBoard.MODALVIEW_DID_HIDDEN] )
    {
    }
    else if ( [signal is:BeeUIBoard.POPOVER_WILL_PRESENT] )
    {
    }
    else if ( [signal is:BeeUIBoard.POPOVER_DID_PRESENT] )
    {
    }
    else if ( [signal is:BeeUIBoard.POPOVER_WILL_DISMISS] )
    {
    }
    else if ( [signal is:BeeUIBoard.POPOVER_DID_DISMISSED] )
    {
    }
}

- (void)handleUISignal_UINavigationBar:(BeeUISignal *)signal
{
    if ( [signal is:UINavigationBar.BARBUTTON_LEFT_TOUCHED] )
    {
        // TODO
    }
    else if ( [signal is:UINavigationBar.BARBUTTON_RIGHT_TOUCHED] )
    {
        // TODO
    }
}

- (void)showBoard:(Class)clazz
{
    BeeUIStack * stack = [_mainStackGroup reflect:[clazz description]];
    
    if ( nil == stack )
    {
        stack = [BeeUIStack stack:[clazz description] firstBoardClass:[clazz class]];
        
        CGRect stackFrame = self.view.frame;
        stackFrame.origin = CGPointZero;
        stack.view.frame = stackFrame;
        
        [_mainStackGroup append:stack];
    }
    else
    {
        [_mainStackGroup present:stack];
    }
}

- (void)addObsevers
{
    [self observeNotification:self.SWITCH_CATELOG];
    [self observeNotification:self.SWITCH_MAIN];
    [self observeNotification:self.SWITCH_PANEL];
    [self observeNotification:self.SWITCH_SETTING];
}

#pragma mark Notification

- (void)handleNotification:(NSNotification *)notification
{
    [super handleNotification:notification];
    
    if ( [notification is:self.SWITCH_CATELOG] )
    {
        [self showBoard:[CatelogBoard_iPhone class]];
        
    } else if ( [notification is:self.SWITCH_MAIN] )
    {
        [self showBoard:[CatelogBoard_iPhone class]];
        
    } else if ( [notification is:self.SWITCH_PANEL] )
    {
        [self showBoard:[CatelogBoard_iPhone class]];
        
    } else if ( [notification is:self.SWITCH_SETTING] )
    {
        [self showBoard:[CatelogBoard_iPhone class]];
    }
}

#pragma mark Message

- (void)handleMessage:(BeeMessage *)msg
{
    [super handleMessage:msg];
}

@end
