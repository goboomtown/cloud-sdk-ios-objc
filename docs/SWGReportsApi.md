# SWGReportsApi

All URIs are relative to *https://api.goboomtown.com/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getReportActiveSupportMinutes**](SWGReportsApi.md#getreportactivesupportminutes) | **GET** /reports/kpi_active_support_minutes | Key Performance Indicator Support Minutes By Category
[**getReportAverageTimeToScheduled**](SWGReportsApi.md#getreportaveragetimetoscheduled) | **GET** /reports/kpi_average_time_to_scheduled | Key Performance Indicator Average Time To Scheduled
[**getReportIssuesByAge**](SWGReportsApi.md#getreportissuesbyage) | **GET** /reports/kpi_issues_by_age | Key Performance Indicator Issues By Age
[**getReportIssuesByCategory**](SWGReportsApi.md#getreportissuesbycategory) | **GET** /reports/kpi_issues_by_category | Key Performance Indicator Issues By Category
[**getReportIssuesByGeography**](SWGReportsApi.md#getreportissuesbygeography) | **GET** /reports/kpi_issues_by_geography | Key Performance Indicator Issues By Geography
[**getReportIssuesByLocation**](SWGReportsApi.md#getreportissuesbylocation) | **GET** /reports/kpi_issues_by_location | Key Performance Indicator Issues By Location
[**getReportIssuesOverTime**](SWGReportsApi.md#getreportissuesovertime) | **GET** /reports/kpi_issues_over_time | Key Performance Issues Over Time
[**getReportIssuesRemoteVsOnsite**](SWGReportsApi.md#getreportissuesremotevsonsite) | **GET** /reports/kpi_issues_remote_vs_onsite | Key Performance Indicator Issues Remote vs Onsite
[**getReportIssuesTimeToCompletion**](SWGReportsApi.md#getreportissuestimetocompletion) | **GET** /reports/kpi_issues_time_to_completion | Key Performance Indicator Issue Time To Completion
[**getReportOpenIssues**](SWGReportsApi.md#getreportopenissues) | **GET** /reports/kpi_open_issues | Key Performance Indicator Open Issues
[**getReportOrgOwnedIssues**](SWGReportsApi.md#getreportorgownedissues) | **GET** /reports/kpi_parner_owned_issues | Key Performance Indicator Org Owned Issues
[**getReportOrgs**](SWGReportsApi.md#getreportorgs) | **GET** /reports/orgs | Get an Org Report
[**getReportTechnicians**](SWGReportsApi.md#getreporttechnicians) | **GET** /reports/technicians | Get a Technician Report
[**getReportTimeOnsiteByLocation**](SWGReportsApi.md#getreporttimeonsitebylocation) | **GET** /reports/kpi_time_onsite_by_location | Key Performance Indicator Time Onsite By Location


# **getReportActiveSupportMinutes**
```objc
-(NSURLSessionTask*) getReportActiveSupportMinutesWithStartDate: (NSString*) startDate
    endDate: (NSString*) endDate
        completionHandler: (void (^)(SWGReportingKPIActiveSupportMinutesResponse* output, NSError* error)) handler;
```

Key Performance Indicator Support Minutes By Category

App and phone support minutes by category

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: X-Boomtown-Date)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Date"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Date"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Signature)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Signature"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Signature"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Token"];


NSString* startDate = @"startDate_example"; // The report start date (optional)
NSString* endDate = @"endDate_example"; // The report end date (optional)

SWGReportsApi*apiInstance = [[SWGReportsApi alloc] init];

// Key Performance Indicator Support Minutes By Category
[apiInstance getReportActiveSupportMinutesWithStartDate:startDate
              endDate:endDate
          completionHandler: ^(SWGReportingKPIActiveSupportMinutesResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGReportsApi->getReportActiveSupportMinutes: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **NSString***| The report start date | [optional] 
 **endDate** | **NSString***| The report end date | [optional] 

### Return type

[**SWGReportingKPIActiveSupportMinutesResponse***](SWGReportingKPIActiveSupportMinutesResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getReportAverageTimeToScheduled**
```objc
-(NSURLSessionTask*) getReportAverageTimeToScheduledWithStartDate: (NSString*) startDate
    endDate: (NSString*) endDate
        completionHandler: (void (^)(SWGReportingKPIAverageTimeToScheduledResponse* output, NSError* error)) handler;
```

Key Performance Indicator Average Time To Scheduled

Returns the average of the difference (in days) of the onsite support scheduled date from the issue creation date

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: X-Boomtown-Date)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Date"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Date"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Signature)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Signature"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Signature"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Token"];


NSString* startDate = @"startDate_example"; // The report start date (optional)
NSString* endDate = @"endDate_example"; // The report end date (optional)

SWGReportsApi*apiInstance = [[SWGReportsApi alloc] init];

// Key Performance Indicator Average Time To Scheduled
[apiInstance getReportAverageTimeToScheduledWithStartDate:startDate
              endDate:endDate
          completionHandler: ^(SWGReportingKPIAverageTimeToScheduledResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGReportsApi->getReportAverageTimeToScheduled: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **NSString***| The report start date | [optional] 
 **endDate** | **NSString***| The report end date | [optional] 

### Return type

[**SWGReportingKPIAverageTimeToScheduledResponse***](SWGReportingKPIAverageTimeToScheduledResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getReportIssuesByAge**
```objc
-(NSURLSessionTask*) getReportIssuesByAgeWithStartDate: (NSString*) startDate
    endDate: (NSString*) endDate
        completionHandler: (void (^)(SWGReportingKPIIssuesByAgeResponse* output, NSError* error)) handler;
```

Key Performance Indicator Issues By Age

Count of issues by static date ranges

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: X-Boomtown-Date)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Date"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Date"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Signature)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Signature"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Signature"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Token"];


NSString* startDate = @"startDate_example"; // The report start date (optional)
NSString* endDate = @"endDate_example"; // The report end date (optional)

SWGReportsApi*apiInstance = [[SWGReportsApi alloc] init];

// Key Performance Indicator Issues By Age
[apiInstance getReportIssuesByAgeWithStartDate:startDate
              endDate:endDate
          completionHandler: ^(SWGReportingKPIIssuesByAgeResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGReportsApi->getReportIssuesByAge: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **NSString***| The report start date | [optional] 
 **endDate** | **NSString***| The report end date | [optional] 

### Return type

[**SWGReportingKPIIssuesByAgeResponse***](SWGReportingKPIIssuesByAgeResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getReportIssuesByCategory**
```objc
-(NSURLSessionTask*) getReportIssuesByCategoryWithStartDate: (NSString*) startDate
    endDate: (NSString*) endDate
        completionHandler: (void (^)(SWGReportingKPIIssuesByCategoryResponse* output, NSError* error)) handler;
```

Key Performance Indicator Issues By Category

Count of issues by category

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: X-Boomtown-Date)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Date"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Date"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Signature)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Signature"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Signature"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Token"];


NSString* startDate = @"startDate_example"; // The report start date (optional)
NSString* endDate = @"endDate_example"; // The report end date (optional)

SWGReportsApi*apiInstance = [[SWGReportsApi alloc] init];

// Key Performance Indicator Issues By Category
[apiInstance getReportIssuesByCategoryWithStartDate:startDate
              endDate:endDate
          completionHandler: ^(SWGReportingKPIIssuesByCategoryResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGReportsApi->getReportIssuesByCategory: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **NSString***| The report start date | [optional] 
 **endDate** | **NSString***| The report end date | [optional] 

### Return type

[**SWGReportingKPIIssuesByCategoryResponse***](SWGReportingKPIIssuesByCategoryResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getReportIssuesByGeography**
```objc
-(NSURLSessionTask*) getReportIssuesByGeographyWithStartDate: (NSString*) startDate
    endDate: (NSString*) endDate
    division: (NSString*) division
    issueType: (NSNumber*) issueType
        completionHandler: (void (^)(SWGReportingKPIIssuesByGeographyResponse* output, NSError* error)) handler;
```

Key Performance Indicator Issues By Geography

Returns a count of issues separated by geographic boundaries

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: X-Boomtown-Date)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Date"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Date"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Signature)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Signature"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Signature"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Token"];


NSString* startDate = @"startDate_example"; // The report start date (optional)
NSString* endDate = @"endDate_example"; // The report end date (optional)
NSString* division = @"division_example"; // Geographic boundary type (null = state|country|zipcode) (optional)
NSNumber* issueType = @56; // Issue type (optional)

SWGReportsApi*apiInstance = [[SWGReportsApi alloc] init];

// Key Performance Indicator Issues By Geography
[apiInstance getReportIssuesByGeographyWithStartDate:startDate
              endDate:endDate
              division:division
              issueType:issueType
          completionHandler: ^(SWGReportingKPIIssuesByGeographyResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGReportsApi->getReportIssuesByGeography: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **NSString***| The report start date | [optional] 
 **endDate** | **NSString***| The report end date | [optional] 
 **division** | **NSString***| Geographic boundary type (null &#x3D; state|country|zipcode) | [optional] 
 **issueType** | **NSNumber***| Issue type | [optional] 

### Return type

[**SWGReportingKPIIssuesByGeographyResponse***](SWGReportingKPIIssuesByGeographyResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getReportIssuesByLocation**
```objc
-(NSURLSessionTask*) getReportIssuesByLocationWithStartDate: (NSString*) startDate
    endDate: (NSString*) endDate
        completionHandler: (void (^)(SWGReportingKPIIssuesByLocationResponse* output, NSError* error)) handler;
```

Key Performance Indicator Issues By Location

Counts of issues by location

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: X-Boomtown-Date)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Date"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Date"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Signature)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Signature"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Signature"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Token"];


NSString* startDate = @"startDate_example"; // The report start date (optional)
NSString* endDate = @"endDate_example"; // The report end date (optional)

SWGReportsApi*apiInstance = [[SWGReportsApi alloc] init];

// Key Performance Indicator Issues By Location
[apiInstance getReportIssuesByLocationWithStartDate:startDate
              endDate:endDate
          completionHandler: ^(SWGReportingKPIIssuesByLocationResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGReportsApi->getReportIssuesByLocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **NSString***| The report start date | [optional] 
 **endDate** | **NSString***| The report end date | [optional] 

### Return type

[**SWGReportingKPIIssuesByLocationResponse***](SWGReportingKPIIssuesByLocationResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getReportIssuesOverTime**
```objc
-(NSURLSessionTask*) getReportIssuesOverTimeWithStartDate: (NSString*) startDate
    endDate: (NSString*) endDate
    interval: (NSString*) interval
        completionHandler: (void (^)(SWGReportingKPIIssuesOverTimeResponse* output, NSError* error)) handler;
```

Key Performance Issues Over Time

Count of issues over an interval period

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: X-Boomtown-Date)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Date"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Date"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Signature)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Signature"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Signature"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Token"];


NSString* startDate = @"startDate_example"; // The report start date (optional)
NSString* endDate = @"endDate_example"; // The report end date (optional)
NSString* interval = @"interval_example"; // Interval for aggregate (null = week|month|day) (optional)

SWGReportsApi*apiInstance = [[SWGReportsApi alloc] init];

// Key Performance Issues Over Time
[apiInstance getReportIssuesOverTimeWithStartDate:startDate
              endDate:endDate
              interval:interval
          completionHandler: ^(SWGReportingKPIIssuesOverTimeResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGReportsApi->getReportIssuesOverTime: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **NSString***| The report start date | [optional] 
 **endDate** | **NSString***| The report end date | [optional] 
 **interval** | **NSString***| Interval for aggregate (null &#x3D; week|month|day) | [optional] 

### Return type

[**SWGReportingKPIIssuesOverTimeResponse***](SWGReportingKPIIssuesOverTimeResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getReportIssuesRemoteVsOnsite**
```objc
-(NSURLSessionTask*) getReportIssuesRemoteVsOnsiteWithStartDate: (NSString*) startDate
    endDate: (NSString*) endDate
        completionHandler: (void (^)(SWGReportingKPIIssuesRemoteVsOnsiteResponse* output, NSError* error)) handler;
```

Key Performance Indicator Issues Remote vs Onsite

Counts & Percentages of remote and onsite issues

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: X-Boomtown-Date)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Date"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Date"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Signature)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Signature"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Signature"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Token"];


NSString* startDate = @"startDate_example"; // The report start date (optional)
NSString* endDate = @"endDate_example"; // The report end date (optional)

SWGReportsApi*apiInstance = [[SWGReportsApi alloc] init];

// Key Performance Indicator Issues Remote vs Onsite
[apiInstance getReportIssuesRemoteVsOnsiteWithStartDate:startDate
              endDate:endDate
          completionHandler: ^(SWGReportingKPIIssuesRemoteVsOnsiteResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGReportsApi->getReportIssuesRemoteVsOnsite: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **NSString***| The report start date | [optional] 
 **endDate** | **NSString***| The report end date | [optional] 

### Return type

[**SWGReportingKPIIssuesRemoteVsOnsiteResponse***](SWGReportingKPIIssuesRemoteVsOnsiteResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getReportIssuesTimeToCompletion**
```objc
-(NSURLSessionTask*) getReportIssuesTimeToCompletionWithStartDate: (NSString*) startDate
    endDate: (NSString*) endDate
    issueType: (NSString*) issueType
        completionHandler: (void (^)(SWGReportingKPIIssuesTimeToCompletionResponse* output, NSError* error)) handler;
```

Key Performance Indicator Issue Time To Completion

Average time difference between issue resolution and creation

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: X-Boomtown-Date)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Date"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Date"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Signature)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Signature"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Signature"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Token"];


NSString* startDate = @"startDate_example"; // The report start date (optional)
NSString* endDate = @"endDate_example"; // The report end date (optional)
NSString* issueType = @"issueType_example"; // Issue Type (optional)

SWGReportsApi*apiInstance = [[SWGReportsApi alloc] init];

// Key Performance Indicator Issue Time To Completion
[apiInstance getReportIssuesTimeToCompletionWithStartDate:startDate
              endDate:endDate
              issueType:issueType
          completionHandler: ^(SWGReportingKPIIssuesTimeToCompletionResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGReportsApi->getReportIssuesTimeToCompletion: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **NSString***| The report start date | [optional] 
 **endDate** | **NSString***| The report end date | [optional] 
 **issueType** | **NSString***| Issue Type | [optional] 

### Return type

[**SWGReportingKPIIssuesTimeToCompletionResponse***](SWGReportingKPIIssuesTimeToCompletionResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getReportOpenIssues**
```objc
-(NSURLSessionTask*) getReportOpenIssuesWithStartDate: (NSString*) startDate
    endDate: (NSString*) endDate
        completionHandler: (void (^)(SWGReportingKPIOpenIssuesResponse* output, NSError* error)) handler;
```

Key Performance Indicator Open Issues

List of open issues

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: X-Boomtown-Date)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Date"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Date"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Signature)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Signature"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Signature"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Token"];


NSString* startDate = @"startDate_example"; // The report start date (optional)
NSString* endDate = @"endDate_example"; // The report end date (optional)

SWGReportsApi*apiInstance = [[SWGReportsApi alloc] init];

// Key Performance Indicator Open Issues
[apiInstance getReportOpenIssuesWithStartDate:startDate
              endDate:endDate
          completionHandler: ^(SWGReportingKPIOpenIssuesResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGReportsApi->getReportOpenIssues: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **NSString***| The report start date | [optional] 
 **endDate** | **NSString***| The report end date | [optional] 

### Return type

[**SWGReportingKPIOpenIssuesResponse***](SWGReportingKPIOpenIssuesResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getReportOrgOwnedIssues**
```objc
-(NSURLSessionTask*) getReportOrgOwnedIssuesWithStartDate: (NSString*) startDate
    endDate: (NSString*) endDate
        completionHandler: (void (^)(SWGReportingKPIOrgOwnedIssuesResponse* output, NSError* error)) handler;
```

Key Performance Indicator Org Owned Issues

Counts of work order and support type issues

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: X-Boomtown-Date)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Date"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Date"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Signature)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Signature"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Signature"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Token"];


NSString* startDate = @"startDate_example"; // The report start date (optional)
NSString* endDate = @"endDate_example"; // The report end date (optional)

SWGReportsApi*apiInstance = [[SWGReportsApi alloc] init];

// Key Performance Indicator Org Owned Issues
[apiInstance getReportOrgOwnedIssuesWithStartDate:startDate
              endDate:endDate
          completionHandler: ^(SWGReportingKPIOrgOwnedIssuesResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGReportsApi->getReportOrgOwnedIssues: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **NSString***| The report start date | [optional] 
 **endDate** | **NSString***| The report end date | [optional] 

### Return type

[**SWGReportingKPIOrgOwnedIssuesResponse***](SWGReportingKPIOrgOwnedIssuesResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getReportOrgs**
```objc
-(NSURLSessionTask*) getReportOrgsWithStartDate: (NSString*) startDate
    endDate: (NSString*) endDate
        completionHandler: (void (^)(SWGReportingOrgsResponse* output, NSError* error)) handler;
```

Get an Org Report

Returns a collection of *OrgReportItem* reporting objects with header information.

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: X-Boomtown-Date)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Date"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Date"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Signature)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Signature"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Signature"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Token"];


NSString* startDate = @"startDate_example"; // The report start date
NSString* endDate = @"endDate_example"; // The report end date

SWGReportsApi*apiInstance = [[SWGReportsApi alloc] init];

// Get an Org Report
[apiInstance getReportOrgsWithStartDate:startDate
              endDate:endDate
          completionHandler: ^(SWGReportingOrgsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGReportsApi->getReportOrgs: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **NSString***| The report start date | 
 **endDate** | **NSString***| The report end date | 

### Return type

[**SWGReportingOrgsResponse***](SWGReportingOrgsResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getReportTechnicians**
```objc
-(NSURLSessionTask*) getReportTechniciansWithStartDate: (NSString*) startDate
    endDate: (NSString*) endDate
        completionHandler: (void (^)(SWGReportingTechniciansResponse* output, NSError* error)) handler;
```

Get a Technician Report

Returns a collection of *TechnicianReportItem* reporting objects with header information.

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: X-Boomtown-Date)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Date"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Date"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Signature)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Signature"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Signature"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Token"];


NSString* startDate = @"startDate_example"; // The report start date (optional)
NSString* endDate = @"endDate_example"; // The report end date (optional)

SWGReportsApi*apiInstance = [[SWGReportsApi alloc] init];

// Get a Technician Report
[apiInstance getReportTechniciansWithStartDate:startDate
              endDate:endDate
          completionHandler: ^(SWGReportingTechniciansResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGReportsApi->getReportTechnicians: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **NSString***| The report start date | [optional] 
 **endDate** | **NSString***| The report end date | [optional] 

### Return type

[**SWGReportingTechniciansResponse***](SWGReportingTechniciansResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getReportTimeOnsiteByLocation**
```objc
-(NSURLSessionTask*) getReportTimeOnsiteByLocationWithStartDate: (NSString*) startDate
    endDate: (NSString*) endDate
    interval: (NSString*) interval
        completionHandler: (void (^)(SWGReportingKPITimeOnsiteByLocationResponse* output, NSError* error)) handler;
```

Key Performance Indicator Time Onsite By Location

Counts of time onsite by location

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: X-Boomtown-Date)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Date"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Date"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Signature)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Signature"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Signature"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Token"];


NSString* startDate = @"startDate_example"; // The report start date (optional)
NSString* endDate = @"endDate_example"; // The report end date (optional)
NSString* interval = @"interval_example"; // null = hour|minute|second (optional)

SWGReportsApi*apiInstance = [[SWGReportsApi alloc] init];

// Key Performance Indicator Time Onsite By Location
[apiInstance getReportTimeOnsiteByLocationWithStartDate:startDate
              endDate:endDate
              interval:interval
          completionHandler: ^(SWGReportingKPITimeOnsiteByLocationResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGReportsApi->getReportTimeOnsiteByLocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **NSString***| The report start date | [optional] 
 **endDate** | **NSString***| The report end date | [optional] 
 **interval** | **NSString***| null &#x3D; hour|minute|second | [optional] 

### Return type

[**SWGReportingKPITimeOnsiteByLocationResponse***](SWGReportingKPITimeOnsiteByLocationResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

