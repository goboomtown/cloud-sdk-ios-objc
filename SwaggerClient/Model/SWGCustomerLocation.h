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


#import "SWGCustomFormDataList.h"
#import "SWGCustomerLocationMetadata.h"
#import "SWGCustomerTechnologySummary.h"
#import "SWGUploadFile.h"
@protocol SWGCustomFormDataList;
@class SWGCustomFormDataList;
@protocol SWGCustomerLocationMetadata;
@class SWGCustomerLocationMetadata;
@protocol SWGCustomerTechnologySummary;
@class SWGCustomerTechnologySummary;
@protocol SWGUploadFile;
@class SWGUploadFile;



@protocol SWGCustomerLocation
@end

@interface SWGCustomerLocation : SWGObject

/* Primary key [optional]
 */
@property(nonatomic) NSString* _id;
/* The primary key of the related *Customer* [optional]
 */
@property(nonatomic) NSString* customerId;
/* Address 1 
 */
@property(nonatomic) NSString* street1;
/* Address 2 [optional]
 */
@property(nonatomic) NSString* street2;
/* City 
 */
@property(nonatomic) NSString* city;
/* State/Province (2 char code) 
 */
@property(nonatomic) NSString* state;
/* ZIP/Postal Code 
 */
@property(nonatomic) NSString* zipcode;
/* Latitude [optional]
 */
@property(nonatomic) NSNumber* latitude;
/* Longitude [optional]
 */
@property(nonatomic) NSNumber* longitude;
/* Phone [optional]
 */
@property(nonatomic) NSString* phone;
/* Informal reference, an alias [optional]
 */
@property(nonatomic) NSString* siteName;
/* Unique ID / Primary Key of this object within a third-party system, used to correlate with the callee's data [optional]
 */
@property(nonatomic) NSString* externalId;
/* Notes [optional]
 */
@property(nonatomic) NSString* notes;

@property(nonatomic) SWGCustomFormDataList* customForms;
/* File attachments by category [optional]
 */
@property(nonatomic) NSArray<NSArray<SWGUploadFile>*>* files;
/* Customer Identification Number(s) (MIDs) [optional]
 */
@property(nonatomic) NSArray<NSString*>* customerIds;

@property(nonatomic) SWGCustomerLocationMetadata* metadataValues;

@property(nonatomic) SWGCustomerTechnologySummary* technology;

@end
