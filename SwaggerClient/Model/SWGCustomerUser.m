#import "SWGCustomerUser.h"

@implementation SWGCustomerUser

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"customerId": @"customer_id", @"customerLocationId": @"customer_location_id", @"firstName": @"first_name", @"lastName": @"last_name", @"fullName": @"full_name", @"email": @"email", @"smsNumber": @"sms_number", @"externalId": @"external_id", @"lang": @"lang" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"customerId", @"customerLocationId", @"fullName", @"smsNumber", @"externalId", @"lang"];
  return [optionalProperties containsObject:propertyName];
}

@end
