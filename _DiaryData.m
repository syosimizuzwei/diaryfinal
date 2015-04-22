// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to DiaryData.m instead.

#import "_DiaryData.h"

const struct DiaryDataAttributes DiaryDataAttributes = {
	.day = @"day",
	.main = @"main",
	.photoimage = @"photoimage",
	.title = @"title",
};

const struct DiaryDataRelationships DiaryDataRelationships = {
};

const struct DiaryDataFetchedProperties DiaryDataFetchedProperties = {
};

@implementation DiaryDataID
@end

@implementation _DiaryData

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"DiaryData" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"DiaryData";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"DiaryData" inManagedObjectContext:moc_];
}

- (DiaryDataID*)objectID {
	return (DiaryDataID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	
	if ([key isEqualToString:@"dayValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"day"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}




@dynamic day;



- (int64_t)dayValue {
	NSNumber *result = [self day];
	return [result longLongValue];
}

- (void)setDayValue:(int64_t)value_ {
	[self setDay:[NSNumber numberWithLongLong:value_]];
}

- (int64_t)primitiveDayValue {
	NSNumber *result = [self primitiveDay];
	return [result longLongValue];
}

- (void)setPrimitiveDayValue:(int64_t)value_ {
	[self setPrimitiveDay:[NSNumber numberWithLongLong:value_]];
}





@dynamic main;






@dynamic photoimage;






@dynamic title;











@end
