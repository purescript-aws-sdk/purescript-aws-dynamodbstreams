
module AWS.DynamoDBStreams.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


newtype AttributeMap = AttributeMap (StrMap.StrMap AttributeValue)
derive instance newtypeAttributeMap :: Newtype AttributeMap _
derive instance repGenericAttributeMap :: Generic AttributeMap _
instance showAttributeMap :: Show AttributeMap where show = genericShow
instance decodeAttributeMap :: Decode AttributeMap where decode = genericDecode options
instance encodeAttributeMap :: Encode AttributeMap where encode = genericEncode options



newtype AttributeName = AttributeName String
derive instance newtypeAttributeName :: Newtype AttributeName _
derive instance repGenericAttributeName :: Generic AttributeName _
instance showAttributeName :: Show AttributeName where show = genericShow
instance decodeAttributeName :: Decode AttributeName where decode = genericDecode options
instance encodeAttributeName :: Encode AttributeName where encode = genericEncode options



-- | <p>Represents the data for an attribute. You can set one, and only one, of the elements.</p> <p>Each attribute in an item is a name-value pair. An attribute can be single-valued or multi-valued set. For example, a book item can have title and authors attributes. Each book has one title but can have many authors. The multi-valued attribute is a set; duplicate values are not allowed.</p>
newtype AttributeValue = AttributeValue 
  { "S" :: Maybe (StringAttributeValue)
  , "N" :: Maybe (NumberAttributeValue)
  , "B" :: Maybe (BinaryAttributeValue)
  , "SS" :: Maybe (StringSetAttributeValue)
  , "NS" :: Maybe (NumberSetAttributeValue)
  , "BS" :: Maybe (BinarySetAttributeValue)
  , "NULL" :: Maybe (NullAttributeValue)
  , "BOOL" :: Maybe (BooleanAttributeValue)
  }
derive instance newtypeAttributeValue :: Newtype AttributeValue _
derive instance repGenericAttributeValue :: Generic AttributeValue _
instance showAttributeValue :: Show AttributeValue where show = genericShow
instance decodeAttributeValue :: Decode AttributeValue where decode = genericDecode options
instance encodeAttributeValue :: Encode AttributeValue where encode = genericEncode options

-- | Constructs AttributeValue from required parameters
newAttributeValue :: AttributeValue
newAttributeValue  = AttributeValue { "B": Nothing, "BOOL": Nothing, "BS": Nothing, "N": Nothing, "NS": Nothing, "NULL": Nothing, "S": Nothing, "SS": Nothing }

-- | Constructs AttributeValue's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAttributeValue' :: ( { "S" :: Maybe (StringAttributeValue) , "N" :: Maybe (NumberAttributeValue) , "B" :: Maybe (BinaryAttributeValue) , "SS" :: Maybe (StringSetAttributeValue) , "NS" :: Maybe (NumberSetAttributeValue) , "BS" :: Maybe (BinarySetAttributeValue) , "NULL" :: Maybe (NullAttributeValue) , "BOOL" :: Maybe (BooleanAttributeValue) } -> {"S" :: Maybe (StringAttributeValue) , "N" :: Maybe (NumberAttributeValue) , "B" :: Maybe (BinaryAttributeValue) , "SS" :: Maybe (StringSetAttributeValue) , "NS" :: Maybe (NumberSetAttributeValue) , "BS" :: Maybe (BinarySetAttributeValue) , "NULL" :: Maybe (NullAttributeValue) , "BOOL" :: Maybe (BooleanAttributeValue) } ) -> AttributeValue
newAttributeValue'  customize = (AttributeValue <<< customize) { "B": Nothing, "BOOL": Nothing, "BS": Nothing, "N": Nothing, "NS": Nothing, "NULL": Nothing, "S": Nothing, "SS": Nothing }



newtype BinaryAttributeValue = BinaryAttributeValue String
derive instance newtypeBinaryAttributeValue :: Newtype BinaryAttributeValue _
derive instance repGenericBinaryAttributeValue :: Generic BinaryAttributeValue _
instance showBinaryAttributeValue :: Show BinaryAttributeValue where show = genericShow
instance decodeBinaryAttributeValue :: Decode BinaryAttributeValue where decode = genericDecode options
instance encodeBinaryAttributeValue :: Encode BinaryAttributeValue where encode = genericEncode options



newtype BinarySetAttributeValue = BinarySetAttributeValue (Array BinaryAttributeValue)
derive instance newtypeBinarySetAttributeValue :: Newtype BinarySetAttributeValue _
derive instance repGenericBinarySetAttributeValue :: Generic BinarySetAttributeValue _
instance showBinarySetAttributeValue :: Show BinarySetAttributeValue where show = genericShow
instance decodeBinarySetAttributeValue :: Decode BinarySetAttributeValue where decode = genericDecode options
instance encodeBinarySetAttributeValue :: Encode BinarySetAttributeValue where encode = genericEncode options



newtype BooleanAttributeValue = BooleanAttributeValue Boolean
derive instance newtypeBooleanAttributeValue :: Newtype BooleanAttributeValue _
derive instance repGenericBooleanAttributeValue :: Generic BooleanAttributeValue _
instance showBooleanAttributeValue :: Show BooleanAttributeValue where show = genericShow
instance decodeBooleanAttributeValue :: Decode BooleanAttributeValue where decode = genericDecode options
instance encodeBooleanAttributeValue :: Encode BooleanAttributeValue where encode = genericEncode options



newtype Date = Date Types.Timestamp
derive instance newtypeDate :: Newtype Date _
derive instance repGenericDate :: Generic Date _
instance showDate :: Show Date where show = genericShow
instance decodeDate :: Decode Date where decode = genericDecode options
instance encodeDate :: Encode Date where encode = genericEncode options



-- | <p>Represents the input of a <code>DescribeStream</code> operation.</p>
newtype DescribeStreamInput = DescribeStreamInput 
  { "StreamArn" :: (StreamArn)
  , "Limit" :: Maybe (PositiveIntegerObject)
  , "ExclusiveStartShardId" :: Maybe (ShardId)
  }
derive instance newtypeDescribeStreamInput :: Newtype DescribeStreamInput _
derive instance repGenericDescribeStreamInput :: Generic DescribeStreamInput _
instance showDescribeStreamInput :: Show DescribeStreamInput where show = genericShow
instance decodeDescribeStreamInput :: Decode DescribeStreamInput where decode = genericDecode options
instance encodeDescribeStreamInput :: Encode DescribeStreamInput where encode = genericEncode options

-- | Constructs DescribeStreamInput from required parameters
newDescribeStreamInput :: StreamArn -> DescribeStreamInput
newDescribeStreamInput _StreamArn = DescribeStreamInput { "StreamArn": _StreamArn, "ExclusiveStartShardId": Nothing, "Limit": Nothing }

-- | Constructs DescribeStreamInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeStreamInput' :: StreamArn -> ( { "StreamArn" :: (StreamArn) , "Limit" :: Maybe (PositiveIntegerObject) , "ExclusiveStartShardId" :: Maybe (ShardId) } -> {"StreamArn" :: (StreamArn) , "Limit" :: Maybe (PositiveIntegerObject) , "ExclusiveStartShardId" :: Maybe (ShardId) } ) -> DescribeStreamInput
newDescribeStreamInput' _StreamArn customize = (DescribeStreamInput <<< customize) { "StreamArn": _StreamArn, "ExclusiveStartShardId": Nothing, "Limit": Nothing }



-- | <p>Represents the output of a <code>DescribeStream</code> operation.</p>
newtype DescribeStreamOutput = DescribeStreamOutput 
  { "StreamDescription" :: Maybe (StreamDescription)
  }
derive instance newtypeDescribeStreamOutput :: Newtype DescribeStreamOutput _
derive instance repGenericDescribeStreamOutput :: Generic DescribeStreamOutput _
instance showDescribeStreamOutput :: Show DescribeStreamOutput where show = genericShow
instance decodeDescribeStreamOutput :: Decode DescribeStreamOutput where decode = genericDecode options
instance encodeDescribeStreamOutput :: Encode DescribeStreamOutput where encode = genericEncode options

-- | Constructs DescribeStreamOutput from required parameters
newDescribeStreamOutput :: DescribeStreamOutput
newDescribeStreamOutput  = DescribeStreamOutput { "StreamDescription": Nothing }

-- | Constructs DescribeStreamOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeStreamOutput' :: ( { "StreamDescription" :: Maybe (StreamDescription) } -> {"StreamDescription" :: Maybe (StreamDescription) } ) -> DescribeStreamOutput
newDescribeStreamOutput'  customize = (DescribeStreamOutput <<< customize) { "StreamDescription": Nothing }



newtype ErrorMessage = ErrorMessage String
derive instance newtypeErrorMessage :: Newtype ErrorMessage _
derive instance repGenericErrorMessage :: Generic ErrorMessage _
instance showErrorMessage :: Show ErrorMessage where show = genericShow
instance decodeErrorMessage :: Decode ErrorMessage where decode = genericDecode options
instance encodeErrorMessage :: Encode ErrorMessage where encode = genericEncode options



-- | <p>The shard iterator has expired and can no longer be used to retrieve stream records. A shard iterator expires 15 minutes after it is retrieved using the <code>GetShardIterator</code> action.</p>
newtype ExpiredIteratorException = ExpiredIteratorException 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeExpiredIteratorException :: Newtype ExpiredIteratorException _
derive instance repGenericExpiredIteratorException :: Generic ExpiredIteratorException _
instance showExpiredIteratorException :: Show ExpiredIteratorException where show = genericShow
instance decodeExpiredIteratorException :: Decode ExpiredIteratorException where decode = genericDecode options
instance encodeExpiredIteratorException :: Encode ExpiredIteratorException where encode = genericEncode options

-- | Constructs ExpiredIteratorException from required parameters
newExpiredIteratorException :: ExpiredIteratorException
newExpiredIteratorException  = ExpiredIteratorException { "message": Nothing }

-- | Constructs ExpiredIteratorException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newExpiredIteratorException' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> ExpiredIteratorException
newExpiredIteratorException'  customize = (ExpiredIteratorException <<< customize) { "message": Nothing }



-- | <p>Represents the input of a <code>GetRecords</code> operation.</p>
newtype GetRecordsInput = GetRecordsInput 
  { "ShardIterator" :: (ShardIterator)
  , "Limit" :: Maybe (PositiveIntegerObject)
  }
derive instance newtypeGetRecordsInput :: Newtype GetRecordsInput _
derive instance repGenericGetRecordsInput :: Generic GetRecordsInput _
instance showGetRecordsInput :: Show GetRecordsInput where show = genericShow
instance decodeGetRecordsInput :: Decode GetRecordsInput where decode = genericDecode options
instance encodeGetRecordsInput :: Encode GetRecordsInput where encode = genericEncode options

-- | Constructs GetRecordsInput from required parameters
newGetRecordsInput :: ShardIterator -> GetRecordsInput
newGetRecordsInput _ShardIterator = GetRecordsInput { "ShardIterator": _ShardIterator, "Limit": Nothing }

-- | Constructs GetRecordsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetRecordsInput' :: ShardIterator -> ( { "ShardIterator" :: (ShardIterator) , "Limit" :: Maybe (PositiveIntegerObject) } -> {"ShardIterator" :: (ShardIterator) , "Limit" :: Maybe (PositiveIntegerObject) } ) -> GetRecordsInput
newGetRecordsInput' _ShardIterator customize = (GetRecordsInput <<< customize) { "ShardIterator": _ShardIterator, "Limit": Nothing }



-- | <p>Represents the output of a <code>GetRecords</code> operation.</p>
newtype GetRecordsOutput = GetRecordsOutput 
  { "Records" :: Maybe (RecordList)
  , "NextShardIterator" :: Maybe (ShardIterator)
  }
derive instance newtypeGetRecordsOutput :: Newtype GetRecordsOutput _
derive instance repGenericGetRecordsOutput :: Generic GetRecordsOutput _
instance showGetRecordsOutput :: Show GetRecordsOutput where show = genericShow
instance decodeGetRecordsOutput :: Decode GetRecordsOutput where decode = genericDecode options
instance encodeGetRecordsOutput :: Encode GetRecordsOutput where encode = genericEncode options

-- | Constructs GetRecordsOutput from required parameters
newGetRecordsOutput :: GetRecordsOutput
newGetRecordsOutput  = GetRecordsOutput { "NextShardIterator": Nothing, "Records": Nothing }

-- | Constructs GetRecordsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetRecordsOutput' :: ( { "Records" :: Maybe (RecordList) , "NextShardIterator" :: Maybe (ShardIterator) } -> {"Records" :: Maybe (RecordList) , "NextShardIterator" :: Maybe (ShardIterator) } ) -> GetRecordsOutput
newGetRecordsOutput'  customize = (GetRecordsOutput <<< customize) { "NextShardIterator": Nothing, "Records": Nothing }



-- | <p>Represents the input of a <code>GetShardIterator</code> operation.</p>
newtype GetShardIteratorInput = GetShardIteratorInput 
  { "StreamArn" :: (StreamArn)
  , "ShardId" :: (ShardId)
  , "ShardIteratorType" :: (ShardIteratorType)
  , "SequenceNumber" :: Maybe (SequenceNumber)
  }
derive instance newtypeGetShardIteratorInput :: Newtype GetShardIteratorInput _
derive instance repGenericGetShardIteratorInput :: Generic GetShardIteratorInput _
instance showGetShardIteratorInput :: Show GetShardIteratorInput where show = genericShow
instance decodeGetShardIteratorInput :: Decode GetShardIteratorInput where decode = genericDecode options
instance encodeGetShardIteratorInput :: Encode GetShardIteratorInput where encode = genericEncode options

-- | Constructs GetShardIteratorInput from required parameters
newGetShardIteratorInput :: ShardId -> ShardIteratorType -> StreamArn -> GetShardIteratorInput
newGetShardIteratorInput _ShardId _ShardIteratorType _StreamArn = GetShardIteratorInput { "ShardId": _ShardId, "ShardIteratorType": _ShardIteratorType, "StreamArn": _StreamArn, "SequenceNumber": Nothing }

-- | Constructs GetShardIteratorInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetShardIteratorInput' :: ShardId -> ShardIteratorType -> StreamArn -> ( { "StreamArn" :: (StreamArn) , "ShardId" :: (ShardId) , "ShardIteratorType" :: (ShardIteratorType) , "SequenceNumber" :: Maybe (SequenceNumber) } -> {"StreamArn" :: (StreamArn) , "ShardId" :: (ShardId) , "ShardIteratorType" :: (ShardIteratorType) , "SequenceNumber" :: Maybe (SequenceNumber) } ) -> GetShardIteratorInput
newGetShardIteratorInput' _ShardId _ShardIteratorType _StreamArn customize = (GetShardIteratorInput <<< customize) { "ShardId": _ShardId, "ShardIteratorType": _ShardIteratorType, "StreamArn": _StreamArn, "SequenceNumber": Nothing }



-- | <p>Represents the output of a <code>GetShardIterator</code> operation.</p>
newtype GetShardIteratorOutput = GetShardIteratorOutput 
  { "ShardIterator" :: Maybe (ShardIterator)
  }
derive instance newtypeGetShardIteratorOutput :: Newtype GetShardIteratorOutput _
derive instance repGenericGetShardIteratorOutput :: Generic GetShardIteratorOutput _
instance showGetShardIteratorOutput :: Show GetShardIteratorOutput where show = genericShow
instance decodeGetShardIteratorOutput :: Decode GetShardIteratorOutput where decode = genericDecode options
instance encodeGetShardIteratorOutput :: Encode GetShardIteratorOutput where encode = genericEncode options

-- | Constructs GetShardIteratorOutput from required parameters
newGetShardIteratorOutput :: GetShardIteratorOutput
newGetShardIteratorOutput  = GetShardIteratorOutput { "ShardIterator": Nothing }

-- | Constructs GetShardIteratorOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetShardIteratorOutput' :: ( { "ShardIterator" :: Maybe (ShardIterator) } -> {"ShardIterator" :: Maybe (ShardIterator) } ) -> GetShardIteratorOutput
newGetShardIteratorOutput'  customize = (GetShardIteratorOutput <<< customize) { "ShardIterator": Nothing }



-- | <p>Contains details about the type of identity that made the request.</p>
newtype Identity = Identity 
  { "PrincipalId" :: Maybe (String)
  , "Type" :: Maybe (String)
  }
derive instance newtypeIdentity :: Newtype Identity _
derive instance repGenericIdentity :: Generic Identity _
instance showIdentity :: Show Identity where show = genericShow
instance decodeIdentity :: Decode Identity where decode = genericDecode options
instance encodeIdentity :: Encode Identity where encode = genericEncode options

-- | Constructs Identity from required parameters
newIdentity :: Identity
newIdentity  = Identity { "PrincipalId": Nothing, "Type": Nothing }

-- | Constructs Identity's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newIdentity' :: ( { "PrincipalId" :: Maybe (String) , "Type" :: Maybe (String) } -> {"PrincipalId" :: Maybe (String) , "Type" :: Maybe (String) } ) -> Identity
newIdentity'  customize = (Identity <<< customize) { "PrincipalId": Nothing, "Type": Nothing }



-- | <p>An error occurred on the server side.</p>
newtype InternalServerError = InternalServerError 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeInternalServerError :: Newtype InternalServerError _
derive instance repGenericInternalServerError :: Generic InternalServerError _
instance showInternalServerError :: Show InternalServerError where show = genericShow
instance decodeInternalServerError :: Decode InternalServerError where decode = genericDecode options
instance encodeInternalServerError :: Encode InternalServerError where encode = genericEncode options

-- | Constructs InternalServerError from required parameters
newInternalServerError :: InternalServerError
newInternalServerError  = InternalServerError { "message": Nothing }

-- | Constructs InternalServerError's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInternalServerError' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> InternalServerError
newInternalServerError'  customize = (InternalServerError <<< customize) { "message": Nothing }



newtype KeySchema = KeySchema (Array KeySchemaElement)
derive instance newtypeKeySchema :: Newtype KeySchema _
derive instance repGenericKeySchema :: Generic KeySchema _
instance showKeySchema :: Show KeySchema where show = genericShow
instance decodeKeySchema :: Decode KeySchema where decode = genericDecode options
instance encodeKeySchema :: Encode KeySchema where encode = genericEncode options



newtype KeySchemaAttributeName = KeySchemaAttributeName String
derive instance newtypeKeySchemaAttributeName :: Newtype KeySchemaAttributeName _
derive instance repGenericKeySchemaAttributeName :: Generic KeySchemaAttributeName _
instance showKeySchemaAttributeName :: Show KeySchemaAttributeName where show = genericShow
instance decodeKeySchemaAttributeName :: Decode KeySchemaAttributeName where decode = genericDecode options
instance encodeKeySchemaAttributeName :: Encode KeySchemaAttributeName where encode = genericEncode options



-- | <p>Represents <i>a single element</i> of a key schema. A key schema specifies the attributes that make up the primary key of a table, or the key attributes of an index.</p> <p>A <code>KeySchemaElement</code> represents exactly one attribute of the primary key. For example, a simple primary key (partition key) would be represented by one <code>KeySchemaElement</code>. A composite primary key (partition key and sort key) would require one <code>KeySchemaElement</code> for the partition key, and another <code>KeySchemaElement</code> for the sort key.</p> <note> <p>The partition key of an item is also known as its <i>hash attribute</i>. The term "hash attribute" derives from DynamoDB's usage of an internal hash function to evenly distribute data items across partitions, based on their partition key values.</p> <p>The sort key of an item is also known as its <i>range attribute</i>. The term "range attribute" derives from the way DynamoDB stores items with the same partition key physically close together, in sorted order by the sort key value.</p> </note>
newtype KeySchemaElement = KeySchemaElement 
  { "AttributeName" :: (KeySchemaAttributeName)
  , "KeyType" :: (KeyType)
  }
derive instance newtypeKeySchemaElement :: Newtype KeySchemaElement _
derive instance repGenericKeySchemaElement :: Generic KeySchemaElement _
instance showKeySchemaElement :: Show KeySchemaElement where show = genericShow
instance decodeKeySchemaElement :: Decode KeySchemaElement where decode = genericDecode options
instance encodeKeySchemaElement :: Encode KeySchemaElement where encode = genericEncode options

-- | Constructs KeySchemaElement from required parameters
newKeySchemaElement :: KeySchemaAttributeName -> KeyType -> KeySchemaElement
newKeySchemaElement _AttributeName _KeyType = KeySchemaElement { "AttributeName": _AttributeName, "KeyType": _KeyType }

-- | Constructs KeySchemaElement's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newKeySchemaElement' :: KeySchemaAttributeName -> KeyType -> ( { "AttributeName" :: (KeySchemaAttributeName) , "KeyType" :: (KeyType) } -> {"AttributeName" :: (KeySchemaAttributeName) , "KeyType" :: (KeyType) } ) -> KeySchemaElement
newKeySchemaElement' _AttributeName _KeyType customize = (KeySchemaElement <<< customize) { "AttributeName": _AttributeName, "KeyType": _KeyType }



newtype KeyType = KeyType String
derive instance newtypeKeyType :: Newtype KeyType _
derive instance repGenericKeyType :: Generic KeyType _
instance showKeyType :: Show KeyType where show = genericShow
instance decodeKeyType :: Decode KeyType where decode = genericDecode options
instance encodeKeyType :: Encode KeyType where encode = genericEncode options



-- | <p>Your request rate is too high. The AWS SDKs for DynamoDB automatically retry requests that receive this exception. Your request is eventually successful, unless your retry queue is too large to finish. Reduce the frequency of requests and use exponential backoff. For more information, go to <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ErrorHandling.html#APIRetries">Error Retries and Exponential Backoff</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
newtype LimitExceededException = LimitExceededException 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeLimitExceededException :: Newtype LimitExceededException _
derive instance repGenericLimitExceededException :: Generic LimitExceededException _
instance showLimitExceededException :: Show LimitExceededException where show = genericShow
instance decodeLimitExceededException :: Decode LimitExceededException where decode = genericDecode options
instance encodeLimitExceededException :: Encode LimitExceededException where encode = genericEncode options

-- | Constructs LimitExceededException from required parameters
newLimitExceededException :: LimitExceededException
newLimitExceededException  = LimitExceededException { "message": Nothing }

-- | Constructs LimitExceededException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLimitExceededException' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> LimitExceededException
newLimitExceededException'  customize = (LimitExceededException <<< customize) { "message": Nothing }



newtype ListAttributeValue = ListAttributeValue (Array AttributeValue)
derive instance newtypeListAttributeValue :: Newtype ListAttributeValue _
derive instance repGenericListAttributeValue :: Generic ListAttributeValue _
instance showListAttributeValue :: Show ListAttributeValue where show = genericShow
instance decodeListAttributeValue :: Decode ListAttributeValue where decode = genericDecode options
instance encodeListAttributeValue :: Encode ListAttributeValue where encode = genericEncode options



-- | <p>Represents the input of a <code>ListStreams</code> operation.</p>
newtype ListStreamsInput = ListStreamsInput 
  { "TableName" :: Maybe (TableName)
  , "Limit" :: Maybe (PositiveIntegerObject)
  , "ExclusiveStartStreamArn" :: Maybe (StreamArn)
  }
derive instance newtypeListStreamsInput :: Newtype ListStreamsInput _
derive instance repGenericListStreamsInput :: Generic ListStreamsInput _
instance showListStreamsInput :: Show ListStreamsInput where show = genericShow
instance decodeListStreamsInput :: Decode ListStreamsInput where decode = genericDecode options
instance encodeListStreamsInput :: Encode ListStreamsInput where encode = genericEncode options

-- | Constructs ListStreamsInput from required parameters
newListStreamsInput :: ListStreamsInput
newListStreamsInput  = ListStreamsInput { "ExclusiveStartStreamArn": Nothing, "Limit": Nothing, "TableName": Nothing }

-- | Constructs ListStreamsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListStreamsInput' :: ( { "TableName" :: Maybe (TableName) , "Limit" :: Maybe (PositiveIntegerObject) , "ExclusiveStartStreamArn" :: Maybe (StreamArn) } -> {"TableName" :: Maybe (TableName) , "Limit" :: Maybe (PositiveIntegerObject) , "ExclusiveStartStreamArn" :: Maybe (StreamArn) } ) -> ListStreamsInput
newListStreamsInput'  customize = (ListStreamsInput <<< customize) { "ExclusiveStartStreamArn": Nothing, "Limit": Nothing, "TableName": Nothing }



-- | <p>Represents the output of a <code>ListStreams</code> operation.</p>
newtype ListStreamsOutput = ListStreamsOutput 
  { "Streams" :: Maybe (StreamList)
  , "LastEvaluatedStreamArn" :: Maybe (StreamArn)
  }
derive instance newtypeListStreamsOutput :: Newtype ListStreamsOutput _
derive instance repGenericListStreamsOutput :: Generic ListStreamsOutput _
instance showListStreamsOutput :: Show ListStreamsOutput where show = genericShow
instance decodeListStreamsOutput :: Decode ListStreamsOutput where decode = genericDecode options
instance encodeListStreamsOutput :: Encode ListStreamsOutput where encode = genericEncode options

-- | Constructs ListStreamsOutput from required parameters
newListStreamsOutput :: ListStreamsOutput
newListStreamsOutput  = ListStreamsOutput { "LastEvaluatedStreamArn": Nothing, "Streams": Nothing }

-- | Constructs ListStreamsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListStreamsOutput' :: ( { "Streams" :: Maybe (StreamList) , "LastEvaluatedStreamArn" :: Maybe (StreamArn) } -> {"Streams" :: Maybe (StreamList) , "LastEvaluatedStreamArn" :: Maybe (StreamArn) } ) -> ListStreamsOutput
newListStreamsOutput'  customize = (ListStreamsOutput <<< customize) { "LastEvaluatedStreamArn": Nothing, "Streams": Nothing }



newtype MapAttributeValue = MapAttributeValue (StrMap.StrMap AttributeValue)
derive instance newtypeMapAttributeValue :: Newtype MapAttributeValue _
derive instance repGenericMapAttributeValue :: Generic MapAttributeValue _
instance showMapAttributeValue :: Show MapAttributeValue where show = genericShow
instance decodeMapAttributeValue :: Decode MapAttributeValue where decode = genericDecode options
instance encodeMapAttributeValue :: Encode MapAttributeValue where encode = genericEncode options



newtype NullAttributeValue = NullAttributeValue Boolean
derive instance newtypeNullAttributeValue :: Newtype NullAttributeValue _
derive instance repGenericNullAttributeValue :: Generic NullAttributeValue _
instance showNullAttributeValue :: Show NullAttributeValue where show = genericShow
instance decodeNullAttributeValue :: Decode NullAttributeValue where decode = genericDecode options
instance encodeNullAttributeValue :: Encode NullAttributeValue where encode = genericEncode options



newtype NumberAttributeValue = NumberAttributeValue String
derive instance newtypeNumberAttributeValue :: Newtype NumberAttributeValue _
derive instance repGenericNumberAttributeValue :: Generic NumberAttributeValue _
instance showNumberAttributeValue :: Show NumberAttributeValue where show = genericShow
instance decodeNumberAttributeValue :: Decode NumberAttributeValue where decode = genericDecode options
instance encodeNumberAttributeValue :: Encode NumberAttributeValue where encode = genericEncode options



newtype NumberSetAttributeValue = NumberSetAttributeValue (Array NumberAttributeValue)
derive instance newtypeNumberSetAttributeValue :: Newtype NumberSetAttributeValue _
derive instance repGenericNumberSetAttributeValue :: Generic NumberSetAttributeValue _
instance showNumberSetAttributeValue :: Show NumberSetAttributeValue where show = genericShow
instance decodeNumberSetAttributeValue :: Decode NumberSetAttributeValue where decode = genericDecode options
instance encodeNumberSetAttributeValue :: Encode NumberSetAttributeValue where encode = genericEncode options



newtype OperationType = OperationType String
derive instance newtypeOperationType :: Newtype OperationType _
derive instance repGenericOperationType :: Generic OperationType _
instance showOperationType :: Show OperationType where show = genericShow
instance decodeOperationType :: Decode OperationType where decode = genericDecode options
instance encodeOperationType :: Encode OperationType where encode = genericEncode options



newtype PositiveIntegerObject = PositiveIntegerObject Int
derive instance newtypePositiveIntegerObject :: Newtype PositiveIntegerObject _
derive instance repGenericPositiveIntegerObject :: Generic PositiveIntegerObject _
instance showPositiveIntegerObject :: Show PositiveIntegerObject where show = genericShow
instance decodePositiveIntegerObject :: Decode PositiveIntegerObject where decode = genericDecode options
instance encodePositiveIntegerObject :: Encode PositiveIntegerObject where encode = genericEncode options



newtype PositiveLongObject = PositiveLongObject Number
derive instance newtypePositiveLongObject :: Newtype PositiveLongObject _
derive instance repGenericPositiveLongObject :: Generic PositiveLongObject _
instance showPositiveLongObject :: Show PositiveLongObject where show = genericShow
instance decodePositiveLongObject :: Decode PositiveLongObject where decode = genericDecode options
instance encodePositiveLongObject :: Encode PositiveLongObject where encode = genericEncode options



-- | <p>A description of a unique event within a stream.</p>
newtype Record'' = Record'' 
  { "eventID" :: Maybe (String)
  , "eventName" :: Maybe (OperationType)
  , "eventVersion" :: Maybe (String)
  , "eventSource" :: Maybe (String)
  , "awsRegion" :: Maybe (String)
  , "dynamodb" :: Maybe (StreamRecord)
  , "userIdentity" :: Maybe (Identity)
  }
derive instance newtypeRecord'' :: Newtype Record'' _
derive instance repGenericRecord'' :: Generic Record'' _
instance showRecord'' :: Show Record'' where show = genericShow
instance decodeRecord'' :: Decode Record'' where decode = genericDecode options
instance encodeRecord'' :: Encode Record'' where encode = genericEncode options

-- | Constructs Record'' from required parameters
newRecord'' :: Record''
newRecord''  = Record'' { "awsRegion": Nothing, "dynamodb": Nothing, "eventID": Nothing, "eventName": Nothing, "eventSource": Nothing, "eventVersion": Nothing, "userIdentity": Nothing }

-- | Constructs Record'''s fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRecord''' :: ( { "eventID" :: Maybe (String) , "eventName" :: Maybe (OperationType) , "eventVersion" :: Maybe (String) , "eventSource" :: Maybe (String) , "awsRegion" :: Maybe (String) , "dynamodb" :: Maybe (StreamRecord) , "userIdentity" :: Maybe (Identity) } -> {"eventID" :: Maybe (String) , "eventName" :: Maybe (OperationType) , "eventVersion" :: Maybe (String) , "eventSource" :: Maybe (String) , "awsRegion" :: Maybe (String) , "dynamodb" :: Maybe (StreamRecord) , "userIdentity" :: Maybe (Identity) } ) -> Record''
newRecord'''  customize = (Record'' <<< customize) { "awsRegion": Nothing, "dynamodb": Nothing, "eventID": Nothing, "eventName": Nothing, "eventSource": Nothing, "eventVersion": Nothing, "userIdentity": Nothing }



newtype RecordList = RecordList (Array Record'')
derive instance newtypeRecordList :: Newtype RecordList _
derive instance repGenericRecordList :: Generic RecordList _
instance showRecordList :: Show RecordList where show = genericShow
instance decodeRecordList :: Decode RecordList where decode = genericDecode options
instance encodeRecordList :: Encode RecordList where encode = genericEncode options



-- | <p>The operation tried to access a nonexistent stream.</p>
newtype ResourceNotFoundException = ResourceNotFoundException 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeResourceNotFoundException :: Newtype ResourceNotFoundException _
derive instance repGenericResourceNotFoundException :: Generic ResourceNotFoundException _
instance showResourceNotFoundException :: Show ResourceNotFoundException where show = genericShow
instance decodeResourceNotFoundException :: Decode ResourceNotFoundException where decode = genericDecode options
instance encodeResourceNotFoundException :: Encode ResourceNotFoundException where encode = genericEncode options

-- | Constructs ResourceNotFoundException from required parameters
newResourceNotFoundException :: ResourceNotFoundException
newResourceNotFoundException  = ResourceNotFoundException { "message": Nothing }

-- | Constructs ResourceNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResourceNotFoundException' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> ResourceNotFoundException
newResourceNotFoundException'  customize = (ResourceNotFoundException <<< customize) { "message": Nothing }



newtype SequenceNumber = SequenceNumber String
derive instance newtypeSequenceNumber :: Newtype SequenceNumber _
derive instance repGenericSequenceNumber :: Generic SequenceNumber _
instance showSequenceNumber :: Show SequenceNumber where show = genericShow
instance decodeSequenceNumber :: Decode SequenceNumber where decode = genericDecode options
instance encodeSequenceNumber :: Encode SequenceNumber where encode = genericEncode options



-- | <p>The beginning and ending sequence numbers for the stream records contained within a shard.</p>
newtype SequenceNumberRange = SequenceNumberRange 
  { "StartingSequenceNumber" :: Maybe (SequenceNumber)
  , "EndingSequenceNumber" :: Maybe (SequenceNumber)
  }
derive instance newtypeSequenceNumberRange :: Newtype SequenceNumberRange _
derive instance repGenericSequenceNumberRange :: Generic SequenceNumberRange _
instance showSequenceNumberRange :: Show SequenceNumberRange where show = genericShow
instance decodeSequenceNumberRange :: Decode SequenceNumberRange where decode = genericDecode options
instance encodeSequenceNumberRange :: Encode SequenceNumberRange where encode = genericEncode options

-- | Constructs SequenceNumberRange from required parameters
newSequenceNumberRange :: SequenceNumberRange
newSequenceNumberRange  = SequenceNumberRange { "EndingSequenceNumber": Nothing, "StartingSequenceNumber": Nothing }

-- | Constructs SequenceNumberRange's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSequenceNumberRange' :: ( { "StartingSequenceNumber" :: Maybe (SequenceNumber) , "EndingSequenceNumber" :: Maybe (SequenceNumber) } -> {"StartingSequenceNumber" :: Maybe (SequenceNumber) , "EndingSequenceNumber" :: Maybe (SequenceNumber) } ) -> SequenceNumberRange
newSequenceNumberRange'  customize = (SequenceNumberRange <<< customize) { "EndingSequenceNumber": Nothing, "StartingSequenceNumber": Nothing }



-- | <p>A uniquely identified group of stream records within a stream.</p>
newtype Shard = Shard 
  { "ShardId" :: Maybe (ShardId)
  , "SequenceNumberRange" :: Maybe (SequenceNumberRange)
  , "ParentShardId" :: Maybe (ShardId)
  }
derive instance newtypeShard :: Newtype Shard _
derive instance repGenericShard :: Generic Shard _
instance showShard :: Show Shard where show = genericShow
instance decodeShard :: Decode Shard where decode = genericDecode options
instance encodeShard :: Encode Shard where encode = genericEncode options

-- | Constructs Shard from required parameters
newShard :: Shard
newShard  = Shard { "ParentShardId": Nothing, "SequenceNumberRange": Nothing, "ShardId": Nothing }

-- | Constructs Shard's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newShard' :: ( { "ShardId" :: Maybe (ShardId) , "SequenceNumberRange" :: Maybe (SequenceNumberRange) , "ParentShardId" :: Maybe (ShardId) } -> {"ShardId" :: Maybe (ShardId) , "SequenceNumberRange" :: Maybe (SequenceNumberRange) , "ParentShardId" :: Maybe (ShardId) } ) -> Shard
newShard'  customize = (Shard <<< customize) { "ParentShardId": Nothing, "SequenceNumberRange": Nothing, "ShardId": Nothing }



newtype ShardDescriptionList = ShardDescriptionList (Array Shard)
derive instance newtypeShardDescriptionList :: Newtype ShardDescriptionList _
derive instance repGenericShardDescriptionList :: Generic ShardDescriptionList _
instance showShardDescriptionList :: Show ShardDescriptionList where show = genericShow
instance decodeShardDescriptionList :: Decode ShardDescriptionList where decode = genericDecode options
instance encodeShardDescriptionList :: Encode ShardDescriptionList where encode = genericEncode options



newtype ShardId = ShardId String
derive instance newtypeShardId :: Newtype ShardId _
derive instance repGenericShardId :: Generic ShardId _
instance showShardId :: Show ShardId where show = genericShow
instance decodeShardId :: Decode ShardId where decode = genericDecode options
instance encodeShardId :: Encode ShardId where encode = genericEncode options



newtype ShardIterator = ShardIterator String
derive instance newtypeShardIterator :: Newtype ShardIterator _
derive instance repGenericShardIterator :: Generic ShardIterator _
instance showShardIterator :: Show ShardIterator where show = genericShow
instance decodeShardIterator :: Decode ShardIterator where decode = genericDecode options
instance encodeShardIterator :: Encode ShardIterator where encode = genericEncode options



newtype ShardIteratorType = ShardIteratorType String
derive instance newtypeShardIteratorType :: Newtype ShardIteratorType _
derive instance repGenericShardIteratorType :: Generic ShardIteratorType _
instance showShardIteratorType :: Show ShardIteratorType where show = genericShow
instance decodeShardIteratorType :: Decode ShardIteratorType where decode = genericDecode options
instance encodeShardIteratorType :: Encode ShardIteratorType where encode = genericEncode options



-- | <p>Represents all of the data describing a particular stream.</p>
newtype Stream = Stream 
  { "StreamArn" :: Maybe (StreamArn)
  , "TableName" :: Maybe (TableName)
  , "StreamLabel" :: Maybe (String)
  }
derive instance newtypeStream :: Newtype Stream _
derive instance repGenericStream :: Generic Stream _
instance showStream :: Show Stream where show = genericShow
instance decodeStream :: Decode Stream where decode = genericDecode options
instance encodeStream :: Encode Stream where encode = genericEncode options

-- | Constructs Stream from required parameters
newStream :: Stream
newStream  = Stream { "StreamArn": Nothing, "StreamLabel": Nothing, "TableName": Nothing }

-- | Constructs Stream's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStream' :: ( { "StreamArn" :: Maybe (StreamArn) , "TableName" :: Maybe (TableName) , "StreamLabel" :: Maybe (String) } -> {"StreamArn" :: Maybe (StreamArn) , "TableName" :: Maybe (TableName) , "StreamLabel" :: Maybe (String) } ) -> Stream
newStream'  customize = (Stream <<< customize) { "StreamArn": Nothing, "StreamLabel": Nothing, "TableName": Nothing }



newtype StreamArn = StreamArn String
derive instance newtypeStreamArn :: Newtype StreamArn _
derive instance repGenericStreamArn :: Generic StreamArn _
instance showStreamArn :: Show StreamArn where show = genericShow
instance decodeStreamArn :: Decode StreamArn where decode = genericDecode options
instance encodeStreamArn :: Encode StreamArn where encode = genericEncode options



-- | <p>Represents all of the data describing a particular stream.</p>
newtype StreamDescription = StreamDescription 
  { "StreamArn" :: Maybe (StreamArn)
  , "StreamLabel" :: Maybe (String)
  , "StreamStatus" :: Maybe (StreamStatus)
  , "StreamViewType" :: Maybe (StreamViewType)
  , "CreationRequestDateTime" :: Maybe (Date)
  , "TableName" :: Maybe (TableName)
  , "KeySchema" :: Maybe (KeySchema)
  , "Shards" :: Maybe (ShardDescriptionList)
  , "LastEvaluatedShardId" :: Maybe (ShardId)
  }
derive instance newtypeStreamDescription :: Newtype StreamDescription _
derive instance repGenericStreamDescription :: Generic StreamDescription _
instance showStreamDescription :: Show StreamDescription where show = genericShow
instance decodeStreamDescription :: Decode StreamDescription where decode = genericDecode options
instance encodeStreamDescription :: Encode StreamDescription where encode = genericEncode options

-- | Constructs StreamDescription from required parameters
newStreamDescription :: StreamDescription
newStreamDescription  = StreamDescription { "CreationRequestDateTime": Nothing, "KeySchema": Nothing, "LastEvaluatedShardId": Nothing, "Shards": Nothing, "StreamArn": Nothing, "StreamLabel": Nothing, "StreamStatus": Nothing, "StreamViewType": Nothing, "TableName": Nothing }

-- | Constructs StreamDescription's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStreamDescription' :: ( { "StreamArn" :: Maybe (StreamArn) , "StreamLabel" :: Maybe (String) , "StreamStatus" :: Maybe (StreamStatus) , "StreamViewType" :: Maybe (StreamViewType) , "CreationRequestDateTime" :: Maybe (Date) , "TableName" :: Maybe (TableName) , "KeySchema" :: Maybe (KeySchema) , "Shards" :: Maybe (ShardDescriptionList) , "LastEvaluatedShardId" :: Maybe (ShardId) } -> {"StreamArn" :: Maybe (StreamArn) , "StreamLabel" :: Maybe (String) , "StreamStatus" :: Maybe (StreamStatus) , "StreamViewType" :: Maybe (StreamViewType) , "CreationRequestDateTime" :: Maybe (Date) , "TableName" :: Maybe (TableName) , "KeySchema" :: Maybe (KeySchema) , "Shards" :: Maybe (ShardDescriptionList) , "LastEvaluatedShardId" :: Maybe (ShardId) } ) -> StreamDescription
newStreamDescription'  customize = (StreamDescription <<< customize) { "CreationRequestDateTime": Nothing, "KeySchema": Nothing, "LastEvaluatedShardId": Nothing, "Shards": Nothing, "StreamArn": Nothing, "StreamLabel": Nothing, "StreamStatus": Nothing, "StreamViewType": Nothing, "TableName": Nothing }



newtype StreamList = StreamList (Array Stream)
derive instance newtypeStreamList :: Newtype StreamList _
derive instance repGenericStreamList :: Generic StreamList _
instance showStreamList :: Show StreamList where show = genericShow
instance decodeStreamList :: Decode StreamList where decode = genericDecode options
instance encodeStreamList :: Encode StreamList where encode = genericEncode options



-- | <p>A description of a single data modification that was performed on an item in a DynamoDB table.</p>
newtype StreamRecord = StreamRecord 
  { "ApproximateCreationDateTime" :: Maybe (Date)
  , "Keys" :: Maybe (AttributeMap)
  , "NewImage" :: Maybe (AttributeMap)
  , "OldImage" :: Maybe (AttributeMap)
  , "SequenceNumber" :: Maybe (SequenceNumber)
  , "SizeBytes" :: Maybe (PositiveLongObject)
  , "StreamViewType" :: Maybe (StreamViewType)
  }
derive instance newtypeStreamRecord :: Newtype StreamRecord _
derive instance repGenericStreamRecord :: Generic StreamRecord _
instance showStreamRecord :: Show StreamRecord where show = genericShow
instance decodeStreamRecord :: Decode StreamRecord where decode = genericDecode options
instance encodeStreamRecord :: Encode StreamRecord where encode = genericEncode options

-- | Constructs StreamRecord from required parameters
newStreamRecord :: StreamRecord
newStreamRecord  = StreamRecord { "ApproximateCreationDateTime": Nothing, "Keys": Nothing, "NewImage": Nothing, "OldImage": Nothing, "SequenceNumber": Nothing, "SizeBytes": Nothing, "StreamViewType": Nothing }

-- | Constructs StreamRecord's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStreamRecord' :: ( { "ApproximateCreationDateTime" :: Maybe (Date) , "Keys" :: Maybe (AttributeMap) , "NewImage" :: Maybe (AttributeMap) , "OldImage" :: Maybe (AttributeMap) , "SequenceNumber" :: Maybe (SequenceNumber) , "SizeBytes" :: Maybe (PositiveLongObject) , "StreamViewType" :: Maybe (StreamViewType) } -> {"ApproximateCreationDateTime" :: Maybe (Date) , "Keys" :: Maybe (AttributeMap) , "NewImage" :: Maybe (AttributeMap) , "OldImage" :: Maybe (AttributeMap) , "SequenceNumber" :: Maybe (SequenceNumber) , "SizeBytes" :: Maybe (PositiveLongObject) , "StreamViewType" :: Maybe (StreamViewType) } ) -> StreamRecord
newStreamRecord'  customize = (StreamRecord <<< customize) { "ApproximateCreationDateTime": Nothing, "Keys": Nothing, "NewImage": Nothing, "OldImage": Nothing, "SequenceNumber": Nothing, "SizeBytes": Nothing, "StreamViewType": Nothing }



newtype StreamStatus = StreamStatus String
derive instance newtypeStreamStatus :: Newtype StreamStatus _
derive instance repGenericStreamStatus :: Generic StreamStatus _
instance showStreamStatus :: Show StreamStatus where show = genericShow
instance decodeStreamStatus :: Decode StreamStatus where decode = genericDecode options
instance encodeStreamStatus :: Encode StreamStatus where encode = genericEncode options



newtype StreamViewType = StreamViewType String
derive instance newtypeStreamViewType :: Newtype StreamViewType _
derive instance repGenericStreamViewType :: Generic StreamViewType _
instance showStreamViewType :: Show StreamViewType where show = genericShow
instance decodeStreamViewType :: Decode StreamViewType where decode = genericDecode options
instance encodeStreamViewType :: Encode StreamViewType where encode = genericEncode options



newtype StringAttributeValue = StringAttributeValue String
derive instance newtypeStringAttributeValue :: Newtype StringAttributeValue _
derive instance repGenericStringAttributeValue :: Generic StringAttributeValue _
instance showStringAttributeValue :: Show StringAttributeValue where show = genericShow
instance decodeStringAttributeValue :: Decode StringAttributeValue where decode = genericDecode options
instance encodeStringAttributeValue :: Encode StringAttributeValue where encode = genericEncode options



newtype StringSetAttributeValue = StringSetAttributeValue (Array StringAttributeValue)
derive instance newtypeStringSetAttributeValue :: Newtype StringSetAttributeValue _
derive instance repGenericStringSetAttributeValue :: Generic StringSetAttributeValue _
instance showStringSetAttributeValue :: Show StringSetAttributeValue where show = genericShow
instance decodeStringSetAttributeValue :: Decode StringSetAttributeValue where decode = genericDecode options
instance encodeStringSetAttributeValue :: Encode StringSetAttributeValue where encode = genericEncode options



newtype TableName = TableName String
derive instance newtypeTableName :: Newtype TableName _
derive instance repGenericTableName :: Generic TableName _
instance showTableName :: Show TableName where show = genericShow
instance decodeTableName :: Decode TableName where decode = genericDecode options
instance encodeTableName :: Encode TableName where encode = genericEncode options



-- | <p>The operation attempted to read past the oldest stream record in a shard.</p> <p>In DynamoDB Streams, there is a 24 hour limit on data retention. Stream records whose age exceeds this limit are subject to removal (trimming) from the stream. You might receive a TrimmedDataAccessException if:</p> <ul> <li><p>You request a shard iterator with a sequence number older than the trim point (24 hours).</p> </li> <li><p>You obtain a shard iterator, but before you use the iterator in a <code>GetRecords</code> request, a stream record in the shard exceeds the 24 hour period and is trimmed. This causes the iterator to access a record that no longer exists.</p> </li> </ul>
newtype TrimmedDataAccessException = TrimmedDataAccessException 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeTrimmedDataAccessException :: Newtype TrimmedDataAccessException _
derive instance repGenericTrimmedDataAccessException :: Generic TrimmedDataAccessException _
instance showTrimmedDataAccessException :: Show TrimmedDataAccessException where show = genericShow
instance decodeTrimmedDataAccessException :: Decode TrimmedDataAccessException where decode = genericDecode options
instance encodeTrimmedDataAccessException :: Encode TrimmedDataAccessException where encode = genericEncode options

-- | Constructs TrimmedDataAccessException from required parameters
newTrimmedDataAccessException :: TrimmedDataAccessException
newTrimmedDataAccessException  = TrimmedDataAccessException { "message": Nothing }

-- | Constructs TrimmedDataAccessException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTrimmedDataAccessException' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> TrimmedDataAccessException
newTrimmedDataAccessException'  customize = (TrimmedDataAccessException <<< customize) { "message": Nothing }

