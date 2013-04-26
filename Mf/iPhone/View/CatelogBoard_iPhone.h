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
//  CatelogBoard_iPhone.h
//  Mf
//
//  Created by Man Tung on 4/25/13.
//    Copyright (c) 2013 chanmd. All rights reserved.
//

#import "Bee.h"

#pragma mark -

@interface StartCell : BeeUIGridCell

@end

@interface CatelogBoard_iPhone : BeeUIBoard
{
    BeeUIButton * _startbutton;
}

AS_SIGNAL( START );
AS_SIGNAL( TIPS );

@end
