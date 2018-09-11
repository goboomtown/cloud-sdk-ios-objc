#import "SWGOrgTeam.h"

@implementation SWGOrgTeam

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"name": @"name", @"nickname": @"nickname", @"_description": @"description", @"email": @"email", @"phone": @"phone", @"externalId": @"external_id", @"avatar": @"avatar", @"autoAssignRoute": @"auto_assign_route", @"autoAssignSponsor": @"auto_assign_sponsor", @"status": @"status", @"type": @"type", @"exclusive": @"exclusive", @"published": @"published", @"publishedName": @"published_name", @"privateLabel": @"private_label", @"linkColor": @"link_color", @"textColor": @"text_color", @"brandColor1": @"brand_color1", @"brandColor2": @"brand_color2", @"brandLogo1x": @"brand_logo_1x", @"brandLogo2x": @"brand_logo_2x", @"brandLogo3x": @"brand_logo_3x", @"supportEmail": @"support_email", @"supportPhone": @"support_phone", @"supportUrl": @"support_url", @"created": @"created", @"updated": @"updated" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"name", @"nickname", @"_description", @"email", @"phone", @"externalId", @"avatar", @"autoAssignRoute", @"autoAssignSponsor", @"status", @"type", @"exclusive", @"published", @"publishedName", @"privateLabel", @"linkColor", @"textColor", @"brandColor1", @"brandColor2", @"brandLogo1x", @"brandLogo2x", @"brandLogo3x", @"supportEmail", @"supportPhone", @"supportUrl", @"created", @"updated"];
  return [optionalProperties containsObject:propertyName];
}

@end
