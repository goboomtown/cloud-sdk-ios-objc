#import "SWGCustomerTechnologyMetadata.h"

@implementation SWGCustomerTechnologyMetadata

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"downloadConsumed": @"download_consumed", @"uploadConsumed": @"upload_consumed", @"networkAtPosStation": @"network_at_pos_station", @"posEmvNfc": @"pos_emv_nfc", @"posOrg": @"pos_org", @"powerAtPosStation": @"power_at_pos_station", @"terminalId": @"terminal_id", @"uuid": @"uuid" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"downloadConsumed", @"uploadConsumed", @"networkAtPosStation", @"posEmvNfc", @"posOrg", @"powerAtPosStation", @"terminalId", @"uuid"];
  return [optionalProperties containsObject:propertyName];
}

@end
