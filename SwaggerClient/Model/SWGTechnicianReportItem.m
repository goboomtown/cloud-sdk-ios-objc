#import "SWGTechnicianReportItem.h"

@implementation SWGTechnicianReportItem

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"technicianID": @"Technician ID", @"technicianName": @"Technician Name", @"officePhone": @"Office Phone", @"cellPhone": @"Cell Phone", @"eMail": @"E-mail", @"technicianStreet1": @"Technician Street 1", @"technicianStreet2": @"Technician Street 2", @"city": @"City", @"state": @"State", @"zipcode": @"Zipcode", @"country": @"Country", @"timeZone": @"Time Zone", @"nearestMetro": @"Nearest Metro", @"hourlyRate": @"Hourly Rate", @"travelRadius": @"Travel Radius", @"averageTravelDistanceToCustomerLocationForCompletedWorkOrders": @"Average Travel Distance to Customer Location for Completed Work Orders", @"status": @"Status", @"ofJobsAdvertised": @"# of Jobs Advertised", @"ofJobsDeclined": @"# of Jobs Declined", @"ofJobsNoResponse": @"# of Jobs No Response", @"ofJobsCanceled": @"# of Jobs Canceled", @"ofJobsCompleted": @"# of Jobs Completed", @"averageTechnicianRating": @"Average Technician Rating", @"averageNPS": @"Average NPS", @"averageMargin_": @"Average Margin %", @"onTimePerformance": @"On Time Performance", @"dateOfLastWorkOrder": @"Date of Last Work Order" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"technicianID", @"technicianName", @"officePhone", @"cellPhone", @"eMail", @"technicianStreet1", @"technicianStreet2", @"city", @"state", @"zipcode", @"country", @"timeZone", @"nearestMetro", @"hourlyRate", @"travelRadius", @"averageTravelDistanceToCustomerLocationForCompletedWorkOrders", @"status", @"ofJobsAdvertised", @"ofJobsDeclined", @"ofJobsNoResponse", @"ofJobsCanceled", @"ofJobsCompleted", @"averageTechnicianRating", @"averageNPS", @"averageMargin_", @"onTimePerformance", @"dateOfLastWorkOrder"];
  return [optionalProperties containsObject:propertyName];
}

@end
