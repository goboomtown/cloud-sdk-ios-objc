#import <Foundation/Foundation.h>
#import "SWGObject.h"

/**
* Boomtown Cloud API
* The REST API for 3rd-party integrations with the Boomtown Cloud. Authentication is provided as HTTP headers using the credentials provided to you at sign-up time. To access the Cloud API, is recommended to use the open source [Boomtown Cloud SDK](https://github.com/goboomtown) as this handles authentication and data-handling for you, but plain REST can be used as well. If not using a provided SDK, provide authentication details via HTTP headers `X-Boomtown-Token` and `X-Boomtown-Signature` as described [in the SDK documentation](https://github.com/goboomtown/cloud-sdk-php#documentation-for-authorization) 
*
* OpenAPI spec version: 3.0.0
* 
*
* NOTE: This class is auto generated by the swagger code generator program.
* https://github.com/swagger-api/swagger-codegen.git
* Do not edit the class manually.
*/





@protocol SWGTechnicianReportItem
@end

@interface SWGTechnicianReportItem : SWGObject


@property(nonatomic) NSString* technicianID;

@property(nonatomic) NSString* technicianName;

@property(nonatomic) NSString* officePhone;

@property(nonatomic) NSString* cellPhone;

@property(nonatomic) NSString* eMail;

@property(nonatomic) NSString* technicianStreet1;

@property(nonatomic) NSString* technicianStreet2;

@property(nonatomic) NSString* city;

@property(nonatomic) NSString* state;

@property(nonatomic) NSString* zipcode;

@property(nonatomic) NSString* country;

@property(nonatomic) NSString* timeZone;

@property(nonatomic) NSString* nearestMetro;

@property(nonatomic) NSNumber* hourlyRate;

@property(nonatomic) NSNumber* travelRadius;

@property(nonatomic) NSNumber* averageTravelDistanceToCustomerLocationForCompletedWorkOrders;

@property(nonatomic) NSString* status;

@property(nonatomic) NSNumber* ofJobsAdvertised;

@property(nonatomic) NSNumber* ofJobsDeclined;

@property(nonatomic) NSNumber* ofJobsNoResponse;

@property(nonatomic) NSNumber* ofJobsCanceled;

@property(nonatomic) NSNumber* ofJobsCompleted;

@property(nonatomic) NSNumber* averageTechnicianRating;

@property(nonatomic) NSNumber* averageNPS;

@property(nonatomic) NSNumber* averageMargin_;

@property(nonatomic) NSNumber* onTimePerformance;

@property(nonatomic) NSDate* dateOfLastWorkOrder;

@end
