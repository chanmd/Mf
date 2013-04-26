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
//  AppBoard_iPhone.h
//  Mf
//
//  Created by Man Tung on 4/24/13.
//    Copyright (c) 2013 chanmd. All rights reserved.
//

#import "Bee.h"

@interface AppBoard_iPhone : BeeUIBoard
{
    BeeUIStackGroup *	_mainStackGroup;
}

AS_SINGLETON( AppBoard_iPhone )

AS_NOTIFICATION( SWITCH_CATELOG )
AS_NOTIFICATION( SWITCH_MAIN )
AS_NOTIFICATION( SWITCH_PANEL )
AS_NOTIFICATION( SWITCH_SETTING )

@end
