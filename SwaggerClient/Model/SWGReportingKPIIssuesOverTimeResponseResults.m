#import "SWGReportingKPIIssuesOverTimeResponseResults.h"

@implementation SWGReportingKPIIssuesOverTimeResponseResults

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"orgId": @"Org Id", @"org": @"Org", @"orgTeamId": @"Org Team Id", @"orgTeam": @"Org Team", @"category": @"Category", @"type": @"Type", @"intervalLabel": @"Interval Label", @"intervalDate": @"Interval Date", @"interval": @"Interval", @"issues": @"# Issues" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"orgId", @"org", @"orgTeamId", @"orgTeam", @"category", @"type", @"intervalLabel", @"intervalDate", @"interval", @"issues"];
  return [optionalProperties containsObject:propertyName];
}

@end
