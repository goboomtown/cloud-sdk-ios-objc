#import "SWGIssueChatHistory.h"

@implementation SWGIssueChatHistory

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"objectId": @"object_id", @"objectScope": @"object_scope", @"chatType": @"chat_type", @"chatStatus": @"chat_status", @"billingStatus": @"billing_status", @"title": @"title", @"subtitle": @"subtitle", @"durationPlus": @"duration_plus", @"duration": @"duration", @"transcript": @"transcript", @"externalRpid": @"external_rpid", @"externalLpid": @"external_lpid", @"externalId": @"external_id", @"created": @"created", @"updated": @"updated" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"objectId", @"objectScope", @"chatType", @"chatStatus", @"billingStatus", @"title", @"subtitle", @"durationPlus", @"duration", @"externalRpid", @"externalLpid", @"externalId", @"created", @"updated"];
  return [optionalProperties containsObject:propertyName];
}

@end
