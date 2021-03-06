//
//  CocoaTouchGestures.cpp
//  Gesture
//
//  Created by Ali Nakipoğlu on 5/5/13.
//
//

#include "CocoaTouchGestures.h"

#ifdef __OBJC__

#include "UIView+UIView_Gestures.h"

#endif

void addSwipeGestures( std::vector<SwipeGestureRecognizerInfo*> & gestureInfos, ci::app::WindowRef windowRef )
{
#ifdef __OBJC__
    [[windowRef->getNativeViewController() view] addSwipeGestures:gestureInfos];
#endif
};

void addTapGestures( TapGestureRecognizerInfo* singleTapInfo, TapGestureRecognizerInfo* doubleTapInfo, ci::app::WindowRef windowRef )
{
#ifdef __OBJC__
    [[windowRef->getNativeViewController() view] addTapGestures:singleTapInfo:doubleTapInfo];
#endif
};