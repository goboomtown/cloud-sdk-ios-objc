#import "SWGOrgReportItem.h"

@implementation SWGOrgReportItem

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"issueID": @"Issue ID", @"referenceNum": @"Reference Num", @"orgCasesTickets": @"Org Cases/Tickets", @"issueStatus": @"Issue Status", @"jobStatus": @"Job Status", @"adminUserOrgTeamUser": @"Admin User / Org Team User", @"org": @"Org", @"issueType": @"Issue Type", @"workOrderType": @"Work Order Type", @"issueCategory": @"Issue Category", @"customerName": @"Customer Name", @"customerLocationSiteName": @"Customer Location Site Name", @"customerLocationStreet1": @"Customer Location Street 1", @"customerLocationStreet2": @"Customer Location Street 2", @"city": @"City", @"state": @"State", @"zipcode": @"Zipcode", @"country": @"Country", @"timeZoneOfScheduledActionDateAndTime": @"Time Zone of Scheduled/Action Date and Time", @"issueCreationDateAndTime": @"Issue Creation Date and Time", @"dateAndTimeScheduledByProjectManager": @"Date and Time Scheduled by Project Manager", @"scheduledDateAndTime": @"Scheduled Date and Time", @"startDateAndTime": @"Start Date and Time", @"resolvedDateAndTime": @"Resolved Date and Time", @"remoteWaitTime": @"Remote Wait Time", @"serviceTime": @"Service Time", @"resolution": @"Resolution", @"nPS": @"NPS", @"technicianRating": @"Technician Rating", @"total": @"Total", @"paymentStatus": @"Payment Status", @"specialNotes": @"Special Notes", @"techSupportMinutes": @"Tech Support Minutes" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"issueID", @"referenceNum", @"orgCasesTickets", @"issueStatus", @"jobStatus", @"adminUserOrgTeamUser", @"org", @"issueType", @"workOrderType", @"issueCategory", @"customerName", @"customerLocationSiteName", @"customerLocationStreet1", @"customerLocationStreet2", @"city", @"state", @"zipcode", @"country", @"timeZoneOfScheduledActionDateAndTime", @"issueCreationDateAndTime", @"dateAndTimeScheduledByProjectManager", @"scheduledDateAndTime", @"startDateAndTime", @"resolvedDateAndTime", @"remoteWaitTime", @"serviceTime", @"resolution", @"nPS", @"technicianRating", @"total", @"paymentStatus", @"specialNotes", @"techSupportMinutes"];
  return [optionalProperties containsObject:propertyName];
}

@end
