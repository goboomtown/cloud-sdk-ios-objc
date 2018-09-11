#import <Foundation/Foundation.h>
#import "SWGEnumerationItemResponse.h"
#import "SWGErrorResponse.h"
#import "SWGShipmentCreateRequest.h"
#import "SWGShipmentResponse.h"
#import "SWGApi.h"

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



@interface SWGShipmentsApi: NSObject <SWGApi>

extern NSString* kSWGShipmentsApiErrorDomain;
extern NSInteger kSWGShipmentsApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(SWGApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Create a Shipment for a Customer
/// Creates a *Shipment* object
///
/// @param shipments The *Shipment* to create (optional)
/// 
///  code:200 message:"The created *Shipment* object",
///  code:400 message:"",
///  code:403 message:"",
///  code:404 message:"",
///  code:422 message:"",
///  code:500 message:""
///
/// @return SWGShipmentResponse*
-(NSURLSessionTask*) createShipmentWithShipments: (SWGShipmentCreateRequest*) shipments
    completionHandler: (void (^)(SWGShipmentResponse* output, NSError* error)) handler;


/// Get a Shipment
/// Returns an *Shipment* object.
///
/// @param shipmentId The primary key of the *Shipment*
/// 
///  code:200 message:"The *Shipment* object",
///  code:0 message:"Unexpected error"
///
/// @return SWGShipmentResponse*
-(NSURLSessionTask*) getShipmentWithShipmentId: (NSString*) shipmentId
    completionHandler: (void (^)(SWGShipmentResponse* output, NSError* error)) handler;


/// Get 'Carrier' dictionary for mapping keys to labels
/// Returns a dictionary for mapping 'Carrier' keys to labels on *Shipment* objects.
///
/// 
///  code:200 message:"Dictionary of key/label 'Category' pairs",
///  code:0 message:"Unexpected error"
///
/// @return SWGEnumerationItemResponse*
-(NSURLSessionTask*) getShipmentMetaCarriersWithCompletionHandler: 
    (void (^)(SWGEnumerationItemResponse* output, NSError* error)) handler;


/// Get 'Status' dictionary for mapping keys to labels
/// Returns a dictionary for mapping 'Status' keys to labels on *Shipment* objects. 
///
/// 
///  code:200 message:"Dictionary of key/label 'Status' pairs",
///  code:0 message:"Unexpected error"
///
/// @return SWGEnumerationItemResponse*
-(NSURLSessionTask*) getShipmentMetaStatusesWithCompletionHandler: 
    (void (^)(SWGEnumerationItemResponse* output, NSError* error)) handler;


/// Get a collection of Shipments
/// Returns a paginated collection of *Shipment* objects.
///
/// @param limit Pagination result limit (defaults to 10) (optional)
/// @param start Pagination starting result number (defaults to 0) (optional)
/// 
///  code:200 message:"Collection of *Shipment* objects",
///  code:0 message:"Unexpected error"
///
/// @return SWGShipmentResponse*
-(NSURLSessionTask*) getShipmentsWithLimit: (NSNumber*) limit
    start: (NSNumber*) start
    completionHandler: (void (^)(SWGShipmentResponse* output, NSError* error)) handler;



@end