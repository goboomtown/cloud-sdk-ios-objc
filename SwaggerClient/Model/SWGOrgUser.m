#import "SWGOrgUser.h"

@implementation SWGOrgUser

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"email": @"email", @"firstName": @"first_name", @"lastName": @"last_name", @"smsNumber": @"sms_number", @"externalId": @"external_id", @"timeZone": @"time_zone", @"status": @"status", @"present": @"present" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"smsNumber", @"externalId", @"timeZone", @"status", @"present"];
  return [optionalProperties containsObject:propertyName];
}

@end
