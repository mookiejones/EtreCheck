/***********************************************************************
 ** Etresoft
 ** John Daniel
 ** Copyright (c) 2012-2014. All rights reserved.
 **********************************************************************/

#import "HelpManager.h"
#import "Model.h"
#import "DiagnosticEvent.h"

@interface PopoverManager ()

// Show detail.
- (void) showDetail: (NSString *) title
  content: (NSAttributedString *) content;

@end

@implementation HelpManager

// Constructor.
- (id) init
  {
  self = [super init];
  
  if(self)
    {
    myMinDrawerSize = NSMakeSize(300, 100);
    }
  
  return self;
  }

// Show detail.
- (void) showDetail: (NSString *) name
  {
  NSString * helpText = NSLocalizedStringFromTable(name, @"Help", NULL);
  
  if(![helpText length])
    helpText = NSLocalizedString(@"No help available", NULL);
    
  NSAttributedString * content =
    [[NSAttributedString alloc] initWithString: helpText];
    
  [super
    showDetail: NSLocalizedStringFromTable(name, @"Collectors", NULL)
    content: content];
    
  [content release];
  }

@end
