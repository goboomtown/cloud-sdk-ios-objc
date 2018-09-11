#import "SWGReportingKPIOpenIssuesResponseResults.h"

@implementation SWGReportingKPIOpenIssuesResponseResults

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"orgId": @"Org Id", @"orgTeamId": @"Org Team Id", @"customer": @"Customer", @"siteName": @"Site Name", @"type": @"Type", @"category": @"Category", @"status": @"Status", @"claimed": @"Claimed", @"created": @"Created" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"orgId", @"orgTeamId", @"customer", @"siteName", @"type", @"category", @"status", @"claimed", @"created"];
  return [optionalProperties containsObject:propertyName];
}

@end
