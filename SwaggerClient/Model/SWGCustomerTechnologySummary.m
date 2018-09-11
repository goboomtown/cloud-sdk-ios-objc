#import "SWGCustomerTechnologySummary.h"

@implementation SWGCustomerTechnologySummary

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"parentId": @"parent_id", @"type": @"type", @"critical": @"critical", @"active": @"active", @"make": @"make", @"model": @"model", @"lastChecked": @"last_checked", @"lastSeen": @"last_seen", @"lastChanged": @"last_changed", @"pciCompliant": @"pci_compliant", @"policy": @"policy", @"status": @"status" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"parentId", @"type", @"critical", @"active", @"make", @"model", @"lastChecked", @"lastSeen", @"lastChanged", @"pciCompliant", @"policy", @"status"];
  return [optionalProperties containsObject:propertyName];
}

@end
