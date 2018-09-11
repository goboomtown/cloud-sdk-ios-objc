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


#import "SWGCommonReportResponse.h"
#import "SWGReportHeadersItem.h"
#import "SWGReportingKPIOpenIssuesResponseResults.h"
@protocol SWGCommonReportResponse;
@class SWGCommonReportResponse;
@protocol SWGReportHeadersItem;
@class SWGReportHeadersItem;
@protocol SWGReportingKPIOpenIssuesResponseResults;
@class SWGReportingKPIOpenIssuesResponseResults;



@protocol SWGReportingKPIOpenIssuesResponse
@end

@interface SWGReportingKPIOpenIssuesResponse : SWGObject


@property(nonatomic) NSArray<SWGReportHeadersItem>* headers;
/* Indicates success of the operation [optional]
 */
@property(nonatomic) NSNumber* success;

@property(nonatomic) NSDate* currentServerTime;
/* Report title [optional]
 */
@property(nonatomic) NSString* title;

@property(nonatomic) NSArray<SWGReportingKPIOpenIssuesResponseResults>* results;

@end
