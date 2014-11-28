/***********************************************************************
 ** Etresoft
 ** John Daniel
 ** Copyright (c) 2014. All rights reserved.
 **********************************************************************/

#import "Collector.h"

// Collect information about adware.
@interface AdwareCollector : Collector
  {
  NSMutableDictionary * myAdwareFiles;
  }

@property (retain) NSMutableDictionary * adwareFiles;

@end
