#import <Foundation/Foundation.h>

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


extern NSString * SWGPercentEscapedStringFromString(NSString *string);

extern NSString * const kSWGApplicationJSONType;

@protocol SWGSanitizer <NSObject>

/**
 * Sanitize object for request
 *
 * @param object The query/path/header/form/body param to be sanitized.
 */
- (id) sanitizeForSerialization:(id) object;

/**
 * Convert parameter to NSString
 */
- (NSString *) parameterToString: (id) param;

/**
 * Convert date to NSString
 */
+ (NSString *)dateToString:(id)date;

/**
 * Detects Accept header from accepts NSArray
 *
 * @param accepts NSArray of header
 *
 * @return The Accept header
 */
-(NSString *) selectHeaderAccept:(NSArray *)accepts;

/**
 * Detects Content-Type header from contentTypes NSArray
 *
 * @param contentTypes NSArray of header
 *
 * @return The Content-Type header
 */
-(NSString *) selectHeaderContentType:(NSArray *)contentTypes;

@end

@interface SWGSanitizer : NSObject <SWGSanitizer>



@end