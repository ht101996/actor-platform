//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/droidkit/bser/BserObject.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserParser.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/droidkit/bser/DataInput.h"
#include "im/actor/model/droidkit/bser/DataOutput.h"
#include "im/actor/model/droidkit/bser/util/SparseArray.h"
#include "java/io/IOException.h"
#include "java/lang/RuntimeException.h"

#pragma clang diagnostic ignored "-Wprotocol"
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@interface BSBserObject () {
 @public
  ImActorModelDroidkitBserUtilSparseArray *unmappedObjects_;
}

@end

J2OBJC_FIELD_SETTER(BSBserObject, unmappedObjects_, ImActorModelDroidkitBserUtilSparseArray *)

@implementation BSBserObject

- (instancetype)init {
  BSBserObject_init(self);
  return self;
}

- (void)load__WithByteArray:(IOSByteArray *)data {
  BSBserValues *values = new_BSBserValues_initWithImActorModelDroidkitBserUtilSparseArray_(BSBserParser_deserializeWithBSDataInput_(new_BSDataInput_initWithByteArray_withInt_withInt_(data, 0, ((IOSByteArray *) nil_chk(data))->size_)));
  [self parseWithBSBserValues:values];
}

- (ImActorModelDroidkitBserUtilSparseArray *)getUnmappedObjects {
  return unmappedObjects_;
}

- (void)setUnmappedObjectsWithImActorModelDroidkitBserUtilSparseArray:(ImActorModelDroidkitBserUtilSparseArray *)unmappedObjects {
  self->unmappedObjects_ = unmappedObjects;
}

- (IOSByteArray *)toByteArray {
  BSDataOutput *outputStream = new_BSDataOutput_init();
  BSBserWriter *writer = new_BSBserWriter_initWithBSDataOutput_(outputStream);
  @try {
    [self serializeWithBSBserWriter:writer];
  }
  @catch (JavaIoIOException *e) {
    @throw new_JavaLangRuntimeException_initWithNSString_(@"Unexpected IO exception");
  }
  return [outputStream toByteArray];
}

@end

void BSBserObject_init(BSBserObject *self) {
  (void) NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(BSBserObject)
