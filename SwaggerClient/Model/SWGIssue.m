#import "SWGIssue.h"

@implementation SWGIssue

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"referenceNum": @"reference_num", @"remoteId": @"remote_id", @"customerId": @"customer_id", @"customerName": @"customer_name", @"customerEmail": @"customer_email", @"customerLocationId": @"customer_location_id", @"customerLocationName": @"customer_location_name", @"customerUserId": @"customer_user_id", @"customerUserName": @"customer_user_name", @"customerUserEmail": @"customer_user_email", @"userId": @"user_id", @"externalId": @"external_id", @"type": @"type", @"category": @"category", @"details": @"details", @"status": @"status", @"job": @"job", @"resolution": @"resolution", @"created": @"created", @"updated": @"updated", @"scheduledTime": @"scheduled_time", @"enrouteTime": @"enroute_time", @"arrivalTime": @"arrival_time", @"departureTime": @"departure_time", @"idrIsq": @"idr_isq", @"idrProcess": @"idr_process", @"idrResolution": @"idr_resolution", @"techSupportMinutes": @"tech_support_minutes", @"specialNotes": @"special_notes", @"unmanaged": @"unmanaged", @"metadataValues": @"metadata_values" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"referenceNum", @"remoteId", @"customerName", @"customerEmail", @"customerLocationName", @"customerUserName", @"customerUserEmail", @"userId", @"externalId", @"type", @"category", @"details", @"status", @"job", @"resolution", @"created", @"updated", @"scheduledTime", @"enrouteTime", @"arrivalTime", @"departureTime", @"idrIsq", @"idrProcess", @"idrResolution", @"techSupportMinutes", @"specialNotes", @"unmanaged", @"metadataValues"];
  return [optionalProperties containsObject:propertyName];
}

@end
