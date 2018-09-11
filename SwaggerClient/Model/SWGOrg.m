#import "SWGOrg.h"

@implementation SWGOrg

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"name": @"name", @"nameLegal": @"name_legal", @"nickname": @"nickname", @"chatId": @"chat_id", @"_description": @"description", @"street1": @"street_1", @"street2": @"street_2", @"city": @"city", @"state": @"state", @"zipcode": @"zipcode", @"latitude": @"latitude", @"longitude": @"longitude", @"externalId": @"external_id", @"defaultOrgTeamId": @"default_org_team_id", @"email": @"email", @"phone": @"phone", @"website": @"website", @"avatar": @"avatar", @"created": @"created", @"updated": @"updated" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"name", @"nameLegal", @"nickname", @"chatId", @"_description", @"street1", @"street2", @"city", @"state", @"zipcode", @"latitude", @"longitude", @"externalId", @"defaultOrgTeamId", @"email", @"phone", @"website", @"avatar", @"created", @"updated"];
  return [optionalProperties containsObject:propertyName];
}

@end
