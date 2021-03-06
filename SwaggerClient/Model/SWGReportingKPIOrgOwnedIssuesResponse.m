#import "SWGReportingKPIOrgOwnedIssuesResponse.h"

@implementation SWGReportingKPIOrgOwnedIssuesResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"headers": @"headers", @"success": @"success", @"currentServerTime": @"current_server_time", @"title": @"title", @"results": @"results" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"headers", @"success", @"currentServerTime", @"title", @"results"];
  return [optionalProperties containsObject:propertyName];
}

@end
