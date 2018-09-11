#import "SWGReportsApi.h"
#import "SWGQueryParamCollection.h"
#import "SWGApiClient.h"
#import "SWGErrorResponse.h"
#import "SWGReportingKPIActiveSupportMinutesResponse.h"
#import "SWGReportingKPIAverageTimeToScheduledResponse.h"
#import "SWGReportingKPIIssuesByAgeResponse.h"
#import "SWGReportingKPIIssuesByCategoryResponse.h"
#import "SWGReportingKPIIssuesByGeographyResponse.h"
#import "SWGReportingKPIIssuesByLocationResponse.h"
#import "SWGReportingKPIIssuesOverTimeResponse.h"
#import "SWGReportingKPIIssuesRemoteVsOnsiteResponse.h"
#import "SWGReportingKPIIssuesTimeToCompletionResponse.h"
#import "SWGReportingKPIOpenIssuesResponse.h"
#import "SWGReportingKPIOrgOwnedIssuesResponse.h"
#import "SWGReportingKPITimeOnsiteByLocationResponse.h"
#import "SWGReportingOrgsResponse.h"
#import "SWGReportingTechniciansResponse.h"


@interface SWGReportsApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation SWGReportsApi

NSString* kSWGReportsApiErrorDomain = @"SWGReportsApiErrorDomain";
NSInteger kSWGReportsApiMissingParamErrorCode = 234513;

@synthesize apiClient = _apiClient;

#pragma mark - Initialize methods

- (instancetype) init {
    return [self initWithApiClient:[SWGApiClient sharedClient]];
}


-(instancetype) initWithApiClient:(SWGApiClient *)apiClient {
    self = [super init];
    if (self) {
        _apiClient = apiClient;
        _mutableDefaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

-(NSString*) defaultHeaderForKey:(NSString*)key {
    return self.mutableDefaultHeaders[key];
}

-(void) setDefaultHeaderValue:(NSString*) value forKey:(NSString*)key {
    [self.mutableDefaultHeaders setValue:value forKey:key];
}

-(NSDictionary *)defaultHeaders {
    return self.mutableDefaultHeaders;
}

#pragma mark - Api Methods

///
/// Key Performance Indicator Support Minutes By Category
/// App and phone support minutes by category
///  @param startDate The report start date (optional)
///
///  @param endDate The report end date (optional)
///
///  @returns SWGReportingKPIActiveSupportMinutesResponse*
///
-(NSURLSessionTask*) getReportActiveSupportMinutesWithStartDate: (NSString*) startDate
    endDate: (NSString*) endDate
    completionHandler: (void (^)(SWGReportingKPIActiveSupportMinutesResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/reports/kpi_active_support_minutes"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (startDate != nil) {
        queryParams[@"start_date"] = startDate;
    }
    if (endDate != nil) {
        queryParams[@"end_date"] = endDate;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/x-www-form-urlencoded", @"multipart/form-data"]];

    // Authentication setting
    NSArray *authSettings = @[@"X-Boomtown-Date", @"X-Boomtown-Signature", @"X-Boomtown-Token"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGReportingKPIActiveSupportMinutesResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGReportingKPIActiveSupportMinutesResponse*)data, error);
                                }
                            }];
}

///
/// Key Performance Indicator Average Time To Scheduled
/// Returns the average of the difference (in days) of the onsite support scheduled date from the issue creation date
///  @param startDate The report start date (optional)
///
///  @param endDate The report end date (optional)
///
///  @returns SWGReportingKPIAverageTimeToScheduledResponse*
///
-(NSURLSessionTask*) getReportAverageTimeToScheduledWithStartDate: (NSString*) startDate
    endDate: (NSString*) endDate
    completionHandler: (void (^)(SWGReportingKPIAverageTimeToScheduledResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/reports/kpi_average_time_to_scheduled"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (startDate != nil) {
        queryParams[@"start_date"] = startDate;
    }
    if (endDate != nil) {
        queryParams[@"end_date"] = endDate;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/x-www-form-urlencoded", @"multipart/form-data"]];

    // Authentication setting
    NSArray *authSettings = @[@"X-Boomtown-Date", @"X-Boomtown-Signature", @"X-Boomtown-Token"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGReportingKPIAverageTimeToScheduledResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGReportingKPIAverageTimeToScheduledResponse*)data, error);
                                }
                            }];
}

///
/// Key Performance Indicator Issues By Age
/// Count of issues by static date ranges
///  @param startDate The report start date (optional)
///
///  @param endDate The report end date (optional)
///
///  @returns SWGReportingKPIIssuesByAgeResponse*
///
-(NSURLSessionTask*) getReportIssuesByAgeWithStartDate: (NSString*) startDate
    endDate: (NSString*) endDate
    completionHandler: (void (^)(SWGReportingKPIIssuesByAgeResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/reports/kpi_issues_by_age"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (startDate != nil) {
        queryParams[@"start_date"] = startDate;
    }
    if (endDate != nil) {
        queryParams[@"end_date"] = endDate;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/x-www-form-urlencoded", @"multipart/form-data"]];

    // Authentication setting
    NSArray *authSettings = @[@"X-Boomtown-Date", @"X-Boomtown-Signature", @"X-Boomtown-Token"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGReportingKPIIssuesByAgeResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGReportingKPIIssuesByAgeResponse*)data, error);
                                }
                            }];
}

///
/// Key Performance Indicator Issues By Category
/// Count of issues by category
///  @param startDate The report start date (optional)
///
///  @param endDate The report end date (optional)
///
///  @returns SWGReportingKPIIssuesByCategoryResponse*
///
-(NSURLSessionTask*) getReportIssuesByCategoryWithStartDate: (NSString*) startDate
    endDate: (NSString*) endDate
    completionHandler: (void (^)(SWGReportingKPIIssuesByCategoryResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/reports/kpi_issues_by_category"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (startDate != nil) {
        queryParams[@"start_date"] = startDate;
    }
    if (endDate != nil) {
        queryParams[@"end_date"] = endDate;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/x-www-form-urlencoded", @"multipart/form-data"]];

    // Authentication setting
    NSArray *authSettings = @[@"X-Boomtown-Date", @"X-Boomtown-Signature", @"X-Boomtown-Token"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGReportingKPIIssuesByCategoryResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGReportingKPIIssuesByCategoryResponse*)data, error);
                                }
                            }];
}

///
/// Key Performance Indicator Issues By Geography
/// Returns a count of issues separated by geographic boundaries
///  @param startDate The report start date (optional)
///
///  @param endDate The report end date (optional)
///
///  @param division Geographic boundary type (null = state|country|zipcode) (optional)
///
///  @param issueType Issue type (optional)
///
///  @returns SWGReportingKPIIssuesByGeographyResponse*
///
-(NSURLSessionTask*) getReportIssuesByGeographyWithStartDate: (NSString*) startDate
    endDate: (NSString*) endDate
    division: (NSString*) division
    issueType: (NSNumber*) issueType
    completionHandler: (void (^)(SWGReportingKPIIssuesByGeographyResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/reports/kpi_issues_by_geography"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (startDate != nil) {
        queryParams[@"start_date"] = startDate;
    }
    if (endDate != nil) {
        queryParams[@"end_date"] = endDate;
    }
    if (division != nil) {
        queryParams[@"division"] = division;
    }
    if (issueType != nil) {
        queryParams[@"issue_type"] = issueType;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/x-www-form-urlencoded", @"multipart/form-data"]];

    // Authentication setting
    NSArray *authSettings = @[@"X-Boomtown-Date", @"X-Boomtown-Signature", @"X-Boomtown-Token"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGReportingKPIIssuesByGeographyResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGReportingKPIIssuesByGeographyResponse*)data, error);
                                }
                            }];
}

///
/// Key Performance Indicator Issues By Location
/// Counts of issues by location
///  @param startDate The report start date (optional)
///
///  @param endDate The report end date (optional)
///
///  @returns SWGReportingKPIIssuesByLocationResponse*
///
-(NSURLSessionTask*) getReportIssuesByLocationWithStartDate: (NSString*) startDate
    endDate: (NSString*) endDate
    completionHandler: (void (^)(SWGReportingKPIIssuesByLocationResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/reports/kpi_issues_by_location"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (startDate != nil) {
        queryParams[@"start_date"] = startDate;
    }
    if (endDate != nil) {
        queryParams[@"end_date"] = endDate;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/x-www-form-urlencoded", @"multipart/form-data"]];

    // Authentication setting
    NSArray *authSettings = @[@"X-Boomtown-Date", @"X-Boomtown-Signature", @"X-Boomtown-Token"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGReportingKPIIssuesByLocationResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGReportingKPIIssuesByLocationResponse*)data, error);
                                }
                            }];
}

///
/// Key Performance Issues Over Time
/// Count of issues over an interval period
///  @param startDate The report start date (optional)
///
///  @param endDate The report end date (optional)
///
///  @param interval Interval for aggregate (null = week|month|day) (optional)
///
///  @returns SWGReportingKPIIssuesOverTimeResponse*
///
-(NSURLSessionTask*) getReportIssuesOverTimeWithStartDate: (NSString*) startDate
    endDate: (NSString*) endDate
    interval: (NSString*) interval
    completionHandler: (void (^)(SWGReportingKPIIssuesOverTimeResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/reports/kpi_issues_over_time"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (startDate != nil) {
        queryParams[@"start_date"] = startDate;
    }
    if (endDate != nil) {
        queryParams[@"end_date"] = endDate;
    }
    if (interval != nil) {
        queryParams[@"interval"] = interval;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/x-www-form-urlencoded", @"multipart/form-data"]];

    // Authentication setting
    NSArray *authSettings = @[@"X-Boomtown-Date", @"X-Boomtown-Signature", @"X-Boomtown-Token"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGReportingKPIIssuesOverTimeResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGReportingKPIIssuesOverTimeResponse*)data, error);
                                }
                            }];
}

///
/// Key Performance Indicator Issues Remote vs Onsite
/// Counts & Percentages of remote and onsite issues
///  @param startDate The report start date (optional)
///
///  @param endDate The report end date (optional)
///
///  @returns SWGReportingKPIIssuesRemoteVsOnsiteResponse*
///
-(NSURLSessionTask*) getReportIssuesRemoteVsOnsiteWithStartDate: (NSString*) startDate
    endDate: (NSString*) endDate
    completionHandler: (void (^)(SWGReportingKPIIssuesRemoteVsOnsiteResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/reports/kpi_issues_remote_vs_onsite"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (startDate != nil) {
        queryParams[@"start_date"] = startDate;
    }
    if (endDate != nil) {
        queryParams[@"end_date"] = endDate;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/x-www-form-urlencoded", @"multipart/form-data"]];

    // Authentication setting
    NSArray *authSettings = @[@"X-Boomtown-Date", @"X-Boomtown-Signature", @"X-Boomtown-Token"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGReportingKPIIssuesRemoteVsOnsiteResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGReportingKPIIssuesRemoteVsOnsiteResponse*)data, error);
                                }
                            }];
}

///
/// Key Performance Indicator Issue Time To Completion
/// Average time difference between issue resolution and creation
///  @param startDate The report start date (optional)
///
///  @param endDate The report end date (optional)
///
///  @param issueType Issue Type (optional)
///
///  @returns SWGReportingKPIIssuesTimeToCompletionResponse*
///
-(NSURLSessionTask*) getReportIssuesTimeToCompletionWithStartDate: (NSString*) startDate
    endDate: (NSString*) endDate
    issueType: (NSString*) issueType
    completionHandler: (void (^)(SWGReportingKPIIssuesTimeToCompletionResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/reports/kpi_issues_time_to_completion"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (startDate != nil) {
        queryParams[@"start_date"] = startDate;
    }
    if (endDate != nil) {
        queryParams[@"end_date"] = endDate;
    }
    if (issueType != nil) {
        queryParams[@"issue_type"] = issueType;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/x-www-form-urlencoded", @"multipart/form-data"]];

    // Authentication setting
    NSArray *authSettings = @[@"X-Boomtown-Date", @"X-Boomtown-Signature", @"X-Boomtown-Token"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGReportingKPIIssuesTimeToCompletionResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGReportingKPIIssuesTimeToCompletionResponse*)data, error);
                                }
                            }];
}

///
/// Key Performance Indicator Open Issues
/// List of open issues
///  @param startDate The report start date (optional)
///
///  @param endDate The report end date (optional)
///
///  @returns SWGReportingKPIOpenIssuesResponse*
///
-(NSURLSessionTask*) getReportOpenIssuesWithStartDate: (NSString*) startDate
    endDate: (NSString*) endDate
    completionHandler: (void (^)(SWGReportingKPIOpenIssuesResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/reports/kpi_open_issues"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (startDate != nil) {
        queryParams[@"start_date"] = startDate;
    }
    if (endDate != nil) {
        queryParams[@"end_date"] = endDate;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/x-www-form-urlencoded", @"multipart/form-data"]];

    // Authentication setting
    NSArray *authSettings = @[@"X-Boomtown-Date", @"X-Boomtown-Signature", @"X-Boomtown-Token"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGReportingKPIOpenIssuesResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGReportingKPIOpenIssuesResponse*)data, error);
                                }
                            }];
}

///
/// Key Performance Indicator Org Owned Issues
/// Counts of work order and support type issues
///  @param startDate The report start date (optional)
///
///  @param endDate The report end date (optional)
///
///  @returns SWGReportingKPIOrgOwnedIssuesResponse*
///
-(NSURLSessionTask*) getReportOrgOwnedIssuesWithStartDate: (NSString*) startDate
    endDate: (NSString*) endDate
    completionHandler: (void (^)(SWGReportingKPIOrgOwnedIssuesResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/reports/kpi_parner_owned_issues"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (startDate != nil) {
        queryParams[@"start_date"] = startDate;
    }
    if (endDate != nil) {
        queryParams[@"end_date"] = endDate;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/x-www-form-urlencoded", @"multipart/form-data"]];

    // Authentication setting
    NSArray *authSettings = @[@"X-Boomtown-Date", @"X-Boomtown-Signature", @"X-Boomtown-Token"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGReportingKPIOrgOwnedIssuesResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGReportingKPIOrgOwnedIssuesResponse*)data, error);
                                }
                            }];
}

///
/// Get an Org Report
/// Returns a collection of *OrgReportItem* reporting objects with header information.
///  @param startDate The report start date 
///
///  @param endDate The report end date 
///
///  @returns SWGReportingOrgsResponse*
///
-(NSURLSessionTask*) getReportOrgsWithStartDate: (NSString*) startDate
    endDate: (NSString*) endDate
    completionHandler: (void (^)(SWGReportingOrgsResponse* output, NSError* error)) handler {
    // verify the required parameter 'startDate' is set
    if (startDate == nil) {
        NSParameterAssert(startDate);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"startDate"] };
            NSError* error = [NSError errorWithDomain:kSWGReportsApiErrorDomain code:kSWGReportsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'endDate' is set
    if (endDate == nil) {
        NSParameterAssert(endDate);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"endDate"] };
            NSError* error = [NSError errorWithDomain:kSWGReportsApiErrorDomain code:kSWGReportsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/reports/orgs"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (startDate != nil) {
        queryParams[@"start_date"] = startDate;
    }
    if (endDate != nil) {
        queryParams[@"end_date"] = endDate;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/x-www-form-urlencoded", @"multipart/form-data"]];

    // Authentication setting
    NSArray *authSettings = @[@"X-Boomtown-Date", @"X-Boomtown-Signature", @"X-Boomtown-Token"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGReportingOrgsResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGReportingOrgsResponse*)data, error);
                                }
                            }];
}

///
/// Get a Technician Report
/// Returns a collection of *TechnicianReportItem* reporting objects with header information.
///  @param startDate The report start date (optional)
///
///  @param endDate The report end date (optional)
///
///  @returns SWGReportingTechniciansResponse*
///
-(NSURLSessionTask*) getReportTechniciansWithStartDate: (NSString*) startDate
    endDate: (NSString*) endDate
    completionHandler: (void (^)(SWGReportingTechniciansResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/reports/technicians"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (startDate != nil) {
        queryParams[@"start_date"] = startDate;
    }
    if (endDate != nil) {
        queryParams[@"end_date"] = endDate;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/x-www-form-urlencoded", @"multipart/form-data"]];

    // Authentication setting
    NSArray *authSettings = @[@"X-Boomtown-Date", @"X-Boomtown-Signature", @"X-Boomtown-Token"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGReportingTechniciansResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGReportingTechniciansResponse*)data, error);
                                }
                            }];
}

///
/// Key Performance Indicator Time Onsite By Location
/// Counts of time onsite by location
///  @param startDate The report start date (optional)
///
///  @param endDate The report end date (optional)
///
///  @param interval null = hour|minute|second (optional)
///
///  @returns SWGReportingKPITimeOnsiteByLocationResponse*
///
-(NSURLSessionTask*) getReportTimeOnsiteByLocationWithStartDate: (NSString*) startDate
    endDate: (NSString*) endDate
    interval: (NSString*) interval
    completionHandler: (void (^)(SWGReportingKPITimeOnsiteByLocationResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/reports/kpi_time_onsite_by_location"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (startDate != nil) {
        queryParams[@"start_date"] = startDate;
    }
    if (endDate != nil) {
        queryParams[@"end_date"] = endDate;
    }
    if (interval != nil) {
        queryParams[@"interval"] = interval;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/x-www-form-urlencoded", @"multipart/form-data"]];

    // Authentication setting
    NSArray *authSettings = @[@"X-Boomtown-Date", @"X-Boomtown-Signature", @"X-Boomtown-Token"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGReportingKPITimeOnsiteByLocationResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGReportingKPITimeOnsiteByLocationResponse*)data, error);
                                }
                            }];
}



@end
