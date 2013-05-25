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
{
    BeeUIButton * _startbutton;
    BeeUIButton * _feedbackbutton;
    BeeUIButton * _tutorialbutton;
}

AS_SIGNAL( START );
AS_SIGNAL( FEEDBACK );
AS_SIGNAL( TUTORIAL );

@end

@interface SegmentCell : BeeUIGridCell
{
    UILabel * _policelabel;
    UILabel * _mafialabel;
    UILabel * _townlabel;
    UILabel * _judgelabel;
    UIPickerView * _picker;
    BeeUIButton * _nextbutton;
}

@end

@interface CatelogBoard_iPhone : BeeUIBoard
{
    StartCell * _startcell;
    
}


@end
