# SWGIssue

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | **NSString*** | Primary key | [optional] 
**referenceNum** | **NSString*** | Reference number | [optional] 
**remoteId** | **NSString*** | Org Cases/Tickets | [optional] 
**customerId** | **NSString*** | Related *Customer* primary key | 
**customerName** | **NSString*** | Related *Customer* name | [optional] 
**customerEmail** | **NSString*** | Related *Customer* email | [optional] 
**customerLocationId** | **NSString*** | Related *CustomerLocation* primary key | 
**customerLocationName** | **NSString*** | Related *CustomerLocation* name | [optional] 
**customerUserId** | **NSString*** | Related *CustomerUser* primary key | 
**customerUserName** | **NSString*** | Related *CustomerUser* name | [optional] 
**customerUserEmail** | **NSString*** | Related *CustomerUser* email | [optional] 
**userId** | **NSString*** | Related *Admin User* primary key | [optional] 
**externalId** | **NSString*** | Unique ID / Primary Key of this object within a third-party system, used to correlate with the callee&#39;s data | [optional] 
**type** | **NSString*** | Type | [optional] 
**category** | **NSString*** | Category | [optional] 
**details** | **NSString*** | Details | [optional] 
**status** | **NSString*** | Status | [optional] 
**job** | **NSString*** | Job type | [optional] 
**resolution** | **NSString*** | Resolution | [optional] 
**created** | **NSDate*** | Created | [optional] 
**updated** | **NSDate*** | Updated | [optional] 
**scheduledTime** | **NSDate*** | Technician job scheduled | [optional] 
**enrouteTime** | **NSDate*** | Technician en-route for job | [optional] 
**arrivalTime** | **NSDate*** | Technician arrived at job | [optional] 
**departureTime** | **NSDate*** | Technician departed job | [optional] 
**idrIsq** | **NSString*** | IDR ISQ | [optional] 
**idrProcess** | **NSString*** | IDR Process | [optional] 
**idrResolution** | **NSString*** | IDR Resolution | [optional] 
**techSupportMinutes** | **NSNumber*** | Tech Support Minutes | [optional] 
**specialNotes** | **NSString*** | Issue special notes (empty if no access) | [optional] 
**unmanaged** | **NSNumber*** | Unmanaged by Boomtown SLA | [optional] 
**metadataValues** | [**SWGIssueMetadata***](SWGIssueMetadata.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


