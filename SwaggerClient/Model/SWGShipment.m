#import "SWGShipment.h"

@implementation SWGShipment

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"_description": @"description", @"pieces": @"pieces", @"carrier": @"carrier", @"carrierTracking": @"carrier_tracking", @"estimatedArrival": @"estimated_arrival", @"status": @"status", @"created": @"created", @"updated": @"updated" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"_description", @"pieces", @"estimatedArrival", @"status", @"created", @"updated"];
  return [optionalProperties containsObject:propertyName];
}

@end
