#import "SWGCustomerTechnology.h"

@implementation SWGCustomerTechnology

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"parentId": @"parent_id", @"customerId": @"customer_id", @"customerLocationId": @"customer_location_id", @"orgId": @"org_id", @"nickname": @"nickname", @"type": @"type", @"critical": @"critical", @"active": @"active", @"label": @"label", @"make": @"make", @"model": @"model", @"serialNumber": @"serial_number", @"version": @"version", @"ipAddress": @"ip_address", @"macAdddress": @"mac_adddress", @"externalId": @"external_id", @"notes": @"notes", @"location": @"location", @"statusDetail": @"status_detail", @"created": @"created", @"updated": @"updated", @"lastChecked": @"last_checked", @"lastSeen": @"last_seen", @"lastChanged": @"last_changed", @"pciSscRefNo": @"pci_ssc_ref_no", @"ptsDeviceDependencies": @"pts_device_dependencies", @"appPaDssListed": @"app_pa_dss_listed", @"paDdsExpireDate": @"pa_dds_expire_date", @"metadataValues": @"metadata_values", @"pciCompliant": @"pci_compliant", @"policy": @"policy", @"status": @"status" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"parentId", @"customerId", @"customerLocationId", @"orgId", @"nickname", @"type", @"critical", @"active", @"label", @"make", @"model", @"serialNumber", @"version", @"ipAddress", @"macAdddress", @"externalId", @"notes", @"location", @"statusDetail", @"created", @"updated", @"lastChecked", @"lastSeen", @"lastChanged", @"pciSscRefNo", @"ptsDeviceDependencies", @"appPaDssListed", @"paDdsExpireDate", @"metadataValues", @"pciCompliant", @"policy", @"status"];
  return [optionalProperties containsObject:propertyName];
}

@end
