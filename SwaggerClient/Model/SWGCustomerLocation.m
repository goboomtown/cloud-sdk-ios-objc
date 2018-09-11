#import "SWGCustomerLocation.h"

@implementation SWGCustomerLocation

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"customerId": @"customer_id", @"street1": @"street_1", @"street2": @"street_2", @"city": @"city", @"state": @"state", @"zipcode": @"zipcode", @"latitude": @"latitude", @"longitude": @"longitude", @"phone": @"phone", @"siteName": @"site_name", @"externalId": @"external_id", @"notes": @"notes", @"customForms": @"custom_forms", @"files": @"files", @"customerIds": @"customer_ids", @"metadataValues": @"metadata_values", @"technology": @"technology" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"customerId", @"street2", @"latitude", @"longitude", @"phone", @"siteName", @"externalId", @"notes", @"customForms", @"files", @"customerIds", @"metadataValues", @"technology"];
  return [optionalProperties containsObject:propertyName];
}

@end
