// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to DiaryData.h instead.

#import <CoreData/CoreData.h>


extern const struct DiaryDataAttributes {
	__unsafe_unretained NSString *day;
	__unsafe_unretained NSString *main;
	__unsafe_unretained NSString *photoimage;
	__unsafe_unretained NSString *title;
} DiaryDataAttributes;

extern const struct DiaryDataRelationships {
} DiaryDataRelationships;

extern const struct DiaryDataFetchedProperties {
} DiaryDataFetchedProperties;







@interface DiaryDataID : NSManagedObjectID {}
@end

@interface _DiaryData : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (DiaryDataID*)objectID;





@property (nonatomic, strong) NSNumber* day;



@property int64_t dayValue;
- (int64_t)dayValue;
- (void)setDayValue:(int64_t)value_;

//- (BOOL)validateDay:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* main;



//- (BOOL)validateMain:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* photoimage;



//- (BOOL)validatePhotoimage:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* title;



//- (BOOL)validateTitle:(id*)value_ error:(NSError**)error_;






@end

@interface _DiaryData (CoreDataGeneratedAccessors)

@end

@interface _DiaryData (CoreDataGeneratedPrimitiveAccessors)


- (NSNumber*)primitiveDay;
- (void)setPrimitiveDay:(NSNumber*)value;

- (int64_t)primitiveDayValue;
- (void)setPrimitiveDayValue:(int64_t)value_;




- (NSString*)primitiveMain;
- (void)setPrimitiveMain:(NSString*)value;




- (NSString*)primitivePhotoimage;
- (void)setPrimitivePhotoimage:(NSString*)value;




- (NSString*)primitiveTitle;
- (void)setPrimitiveTitle:(NSString*)value;




@end
