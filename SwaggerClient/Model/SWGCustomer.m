#import "SWGCustomer.h"

@implementation SWGCustomer

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"name": @"name", @"nameLegal": @"name_legal", @"street1": @"street_1", @"street2": @"street_2", @"city": @"city", @"state": @"state", @"zipcode": @"zipcode", @"email": @"email", @"phone": @"phone", @"externalId": @"external_id", @"industry": @"industry", @"status": @"status", @"created": @"created" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"nameLegal", @"street1", @"street2", @"city", @"state", @"phone", @"externalId", @"industry", @"status", @"created"];
  return [optionalProperties containsObject:propertyName];
}

@end
