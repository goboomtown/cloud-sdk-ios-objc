#import "SWGIssueMetadata.h"

@implementation SWGIssueMetadata

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"preferredInstallDate": @"preferred_install_date", @"preferredTimeFrame": @"preferred_time_frame", @"alternateInstallDate": @"alternate_install_date", @"alternateTimeFrame": @"alternate_time_frame", @"numberOfPosDevices": @"number_of_pos_devices" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"preferredInstallDate", @"preferredTimeFrame", @"alternateInstallDate", @"alternateTimeFrame", @"numberOfPosDevices"];
  return [optionalProperties containsObject:propertyName];
}

@end
