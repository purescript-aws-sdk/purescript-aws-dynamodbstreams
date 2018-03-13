## Module AWS.DynamoDBStreams

<fullname>Amazon DynamoDB</fullname> <p>Amazon DynamoDB Streams provides API actions for accessing streams and processing stream records. To learn more about application development with Streams, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Streams.html">Capturing Table Activity with DynamoDB Streams</a> in the Amazon DynamoDB Developer Guide.</p>

#### `describeStream`

``` purescript
describeStream :: forall eff. DescribeStreamInput -> Aff (exception :: EXCEPTION | eff) DescribeStreamOutput
```

<p>Returns information about a stream, including the current status of the stream, its Amazon Resource Name (ARN), the composition of its shards, and its corresponding DynamoDB table.</p> <note> <p>You can call <code>DescribeStream</code> at a maximum rate of 10 times per second.</p> </note> <p>Each shard in the stream has a <code>SequenceNumberRange</code> associated with it. If the <code>SequenceNumberRange</code> has a <code>StartingSequenceNumber</code> but no <code>EndingSequenceNumber</code>, then the shard is still open (able to receive more stream records). If both <code>StartingSequenceNumber</code> and <code>EndingSequenceNumber</code> are present, then that shard is closed and can no longer receive more data.</p>

#### `getRecords`

``` purescript
getRecords :: forall eff. GetRecordsInput -> Aff (exception :: EXCEPTION | eff) GetRecordsOutput
```

<p>Retrieves the stream records from a given shard.</p> <p>Specify a shard iterator using the <code>ShardIterator</code> parameter. The shard iterator specifies the position in the shard from which you want to start reading stream records sequentially. If there are no stream records available in the portion of the shard that the iterator points to, <code>GetRecords</code> returns an empty list. Note that it might take multiple calls to get to a portion of the shard that contains stream records.</p> <note> <p> <code>GetRecords</code> can retrieve a maximum of 1 MB of data or 1000 stream records, whichever comes first.</p> </note>

#### `getShardIterator`

``` purescript
getShardIterator :: forall eff. GetShardIteratorInput -> Aff (exception :: EXCEPTION | eff) GetShardIteratorOutput
```

<p>Returns a shard iterator. A shard iterator provides information about how to retrieve the stream records from within a shard. Use the shard iterator in a subsequent <code>GetRecords</code> request to read the stream records from the shard.</p> <note> <p>A shard iterator expires 15 minutes after it is returned to the requester.</p> </note>

#### `listStreams`

``` purescript
listStreams :: forall eff. ListStreamsInput -> Aff (exception :: EXCEPTION | eff) ListStreamsOutput
```

<p>Returns an array of stream ARNs associated with the current account and endpoint. If the <code>TableName</code> parameter is present, then <code>ListStreams</code> will return only the streams ARNs for that table.</p> <note> <p>You can call <code>ListStreams</code> at a maximum rate of 5 times per second.</p> </note>

#### `AttributeMap`

``` purescript
newtype AttributeMap
  = AttributeMap (StrMap AttributeValue)
```

##### Instances
``` purescript
Newtype AttributeMap _
Generic AttributeMap _
Show AttributeMap
Decode AttributeMap
Encode AttributeMap
```

#### `AttributeName`

``` purescript
newtype AttributeName
  = AttributeName String
```

##### Instances
``` purescript
Newtype AttributeName _
Generic AttributeName _
Show AttributeName
Decode AttributeName
Encode AttributeName
```

#### `AttributeValue`

``` purescript
newtype AttributeValue
  = AttributeValue { "S" :: NullOrUndefined (StringAttributeValue), "N" :: NullOrUndefined (NumberAttributeValue), "B" :: NullOrUndefined (BinaryAttributeValue), "SS" :: NullOrUndefined (StringSetAttributeValue), "NS" :: NullOrUndefined (NumberSetAttributeValue), "BS" :: NullOrUndefined (BinarySetAttributeValue), "NULL" :: NullOrUndefined (NullAttributeValue), "BOOL" :: NullOrUndefined (BooleanAttributeValue) }
```

<p>Represents the data for an attribute. You can set one, and only one, of the elements.</p> <p>Each attribute in an item is a name-value pair. An attribute can be single-valued or multi-valued set. For example, a book item can have title and authors attributes. Each book has one title but can have many authors. The multi-valued attribute is a set; duplicate values are not allowed.</p>

##### Instances
``` purescript
Newtype AttributeValue _
Generic AttributeValue _
Show AttributeValue
Decode AttributeValue
Encode AttributeValue
```

#### `newAttributeValue`

``` purescript
newAttributeValue :: AttributeValue
```

Constructs AttributeValue from required parameters

#### `newAttributeValue'`

``` purescript
newAttributeValue' :: ({ "S" :: NullOrUndefined (StringAttributeValue), "N" :: NullOrUndefined (NumberAttributeValue), "B" :: NullOrUndefined (BinaryAttributeValue), "SS" :: NullOrUndefined (StringSetAttributeValue), "NS" :: NullOrUndefined (NumberSetAttributeValue), "BS" :: NullOrUndefined (BinarySetAttributeValue), "NULL" :: NullOrUndefined (NullAttributeValue), "BOOL" :: NullOrUndefined (BooleanAttributeValue) } -> { "S" :: NullOrUndefined (StringAttributeValue), "N" :: NullOrUndefined (NumberAttributeValue), "B" :: NullOrUndefined (BinaryAttributeValue), "SS" :: NullOrUndefined (StringSetAttributeValue), "NS" :: NullOrUndefined (NumberSetAttributeValue), "BS" :: NullOrUndefined (BinarySetAttributeValue), "NULL" :: NullOrUndefined (NullAttributeValue), "BOOL" :: NullOrUndefined (BooleanAttributeValue) }) -> AttributeValue
```

Constructs AttributeValue's fields from required parameters

#### `BinaryAttributeValue`

``` purescript
newtype BinaryAttributeValue
  = BinaryAttributeValue String
```

##### Instances
``` purescript
Newtype BinaryAttributeValue _
Generic BinaryAttributeValue _
Show BinaryAttributeValue
Decode BinaryAttributeValue
Encode BinaryAttributeValue
```

#### `BinarySetAttributeValue`

``` purescript
newtype BinarySetAttributeValue
  = BinarySetAttributeValue (Array BinaryAttributeValue)
```

##### Instances
``` purescript
Newtype BinarySetAttributeValue _
Generic BinarySetAttributeValue _
Show BinarySetAttributeValue
Decode BinarySetAttributeValue
Encode BinarySetAttributeValue
```

#### `BooleanAttributeValue`

``` purescript
newtype BooleanAttributeValue
  = BooleanAttributeValue Boolean
```

##### Instances
``` purescript
Newtype BooleanAttributeValue _
Generic BooleanAttributeValue _
Show BooleanAttributeValue
Decode BooleanAttributeValue
Encode BooleanAttributeValue
```

#### `Date`

``` purescript
newtype Date
  = Date Timestamp
```

##### Instances
``` purescript
Newtype Date _
Generic Date _
Show Date
Decode Date
Encode Date
```

#### `DescribeStreamInput`

``` purescript
newtype DescribeStreamInput
  = DescribeStreamInput { "StreamArn" :: StreamArn, "Limit" :: NullOrUndefined (PositiveIntegerObject), "ExclusiveStartShardId" :: NullOrUndefined (ShardId) }
```

<p>Represents the input of a <code>DescribeStream</code> operation.</p>

##### Instances
``` purescript
Newtype DescribeStreamInput _
Generic DescribeStreamInput _
Show DescribeStreamInput
Decode DescribeStreamInput
Encode DescribeStreamInput
```

#### `newDescribeStreamInput`

``` purescript
newDescribeStreamInput :: StreamArn -> DescribeStreamInput
```

Constructs DescribeStreamInput from required parameters

#### `newDescribeStreamInput'`

``` purescript
newDescribeStreamInput' :: StreamArn -> ({ "StreamArn" :: StreamArn, "Limit" :: NullOrUndefined (PositiveIntegerObject), "ExclusiveStartShardId" :: NullOrUndefined (ShardId) } -> { "StreamArn" :: StreamArn, "Limit" :: NullOrUndefined (PositiveIntegerObject), "ExclusiveStartShardId" :: NullOrUndefined (ShardId) }) -> DescribeStreamInput
```

Constructs DescribeStreamInput's fields from required parameters

#### `DescribeStreamOutput`

``` purescript
newtype DescribeStreamOutput
  = DescribeStreamOutput { "StreamDescription" :: NullOrUndefined (StreamDescription) }
```

<p>Represents the output of a <code>DescribeStream</code> operation.</p>

##### Instances
``` purescript
Newtype DescribeStreamOutput _
Generic DescribeStreamOutput _
Show DescribeStreamOutput
Decode DescribeStreamOutput
Encode DescribeStreamOutput
```

#### `newDescribeStreamOutput`

``` purescript
newDescribeStreamOutput :: DescribeStreamOutput
```

Constructs DescribeStreamOutput from required parameters

#### `newDescribeStreamOutput'`

``` purescript
newDescribeStreamOutput' :: ({ "StreamDescription" :: NullOrUndefined (StreamDescription) } -> { "StreamDescription" :: NullOrUndefined (StreamDescription) }) -> DescribeStreamOutput
```

Constructs DescribeStreamOutput's fields from required parameters

#### `ErrorMessage`

``` purescript
newtype ErrorMessage
  = ErrorMessage String
```

##### Instances
``` purescript
Newtype ErrorMessage _
Generic ErrorMessage _
Show ErrorMessage
Decode ErrorMessage
Encode ErrorMessage
```

#### `ExpiredIteratorException`

``` purescript
newtype ExpiredIteratorException
  = ExpiredIteratorException { message :: NullOrUndefined (ErrorMessage) }
```

<p>The shard iterator has expired and can no longer be used to retrieve stream records. A shard iterator expires 15 minutes after it is retrieved using the <code>GetShardIterator</code> action.</p>

##### Instances
``` purescript
Newtype ExpiredIteratorException _
Generic ExpiredIteratorException _
Show ExpiredIteratorException
Decode ExpiredIteratorException
Encode ExpiredIteratorException
```

#### `newExpiredIteratorException`

``` purescript
newExpiredIteratorException :: ExpiredIteratorException
```

Constructs ExpiredIteratorException from required parameters

#### `newExpiredIteratorException'`

``` purescript
newExpiredIteratorException' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> ExpiredIteratorException
```

Constructs ExpiredIteratorException's fields from required parameters

#### `GetRecordsInput`

``` purescript
newtype GetRecordsInput
  = GetRecordsInput { "ShardIterator" :: ShardIterator, "Limit" :: NullOrUndefined (PositiveIntegerObject) }
```

<p>Represents the input of a <code>GetRecords</code> operation.</p>

##### Instances
``` purescript
Newtype GetRecordsInput _
Generic GetRecordsInput _
Show GetRecordsInput
Decode GetRecordsInput
Encode GetRecordsInput
```

#### `newGetRecordsInput`

``` purescript
newGetRecordsInput :: ShardIterator -> GetRecordsInput
```

Constructs GetRecordsInput from required parameters

#### `newGetRecordsInput'`

``` purescript
newGetRecordsInput' :: ShardIterator -> ({ "ShardIterator" :: ShardIterator, "Limit" :: NullOrUndefined (PositiveIntegerObject) } -> { "ShardIterator" :: ShardIterator, "Limit" :: NullOrUndefined (PositiveIntegerObject) }) -> GetRecordsInput
```

Constructs GetRecordsInput's fields from required parameters

#### `GetRecordsOutput`

``` purescript
newtype GetRecordsOutput
  = GetRecordsOutput { "Records" :: NullOrUndefined (RecordList), "NextShardIterator" :: NullOrUndefined (ShardIterator) }
```

<p>Represents the output of a <code>GetRecords</code> operation.</p>

##### Instances
``` purescript
Newtype GetRecordsOutput _
Generic GetRecordsOutput _
Show GetRecordsOutput
Decode GetRecordsOutput
Encode GetRecordsOutput
```

#### `newGetRecordsOutput`

``` purescript
newGetRecordsOutput :: GetRecordsOutput
```

Constructs GetRecordsOutput from required parameters

#### `newGetRecordsOutput'`

``` purescript
newGetRecordsOutput' :: ({ "Records" :: NullOrUndefined (RecordList), "NextShardIterator" :: NullOrUndefined (ShardIterator) } -> { "Records" :: NullOrUndefined (RecordList), "NextShardIterator" :: NullOrUndefined (ShardIterator) }) -> GetRecordsOutput
```

Constructs GetRecordsOutput's fields from required parameters

#### `GetShardIteratorInput`

``` purescript
newtype GetShardIteratorInput
  = GetShardIteratorInput { "StreamArn" :: StreamArn, "ShardId" :: ShardId, "ShardIteratorType" :: ShardIteratorType, "SequenceNumber" :: NullOrUndefined (SequenceNumber) }
```

<p>Represents the input of a <code>GetShardIterator</code> operation.</p>

##### Instances
``` purescript
Newtype GetShardIteratorInput _
Generic GetShardIteratorInput _
Show GetShardIteratorInput
Decode GetShardIteratorInput
Encode GetShardIteratorInput
```

#### `newGetShardIteratorInput`

``` purescript
newGetShardIteratorInput :: ShardId -> ShardIteratorType -> StreamArn -> GetShardIteratorInput
```

Constructs GetShardIteratorInput from required parameters

#### `newGetShardIteratorInput'`

``` purescript
newGetShardIteratorInput' :: ShardId -> ShardIteratorType -> StreamArn -> ({ "StreamArn" :: StreamArn, "ShardId" :: ShardId, "ShardIteratorType" :: ShardIteratorType, "SequenceNumber" :: NullOrUndefined (SequenceNumber) } -> { "StreamArn" :: StreamArn, "ShardId" :: ShardId, "ShardIteratorType" :: ShardIteratorType, "SequenceNumber" :: NullOrUndefined (SequenceNumber) }) -> GetShardIteratorInput
```

Constructs GetShardIteratorInput's fields from required parameters

#### `GetShardIteratorOutput`

``` purescript
newtype GetShardIteratorOutput
  = GetShardIteratorOutput { "ShardIterator" :: NullOrUndefined (ShardIterator) }
```

<p>Represents the output of a <code>GetShardIterator</code> operation.</p>

##### Instances
``` purescript
Newtype GetShardIteratorOutput _
Generic GetShardIteratorOutput _
Show GetShardIteratorOutput
Decode GetShardIteratorOutput
Encode GetShardIteratorOutput
```

#### `newGetShardIteratorOutput`

``` purescript
newGetShardIteratorOutput :: GetShardIteratorOutput
```

Constructs GetShardIteratorOutput from required parameters

#### `newGetShardIteratorOutput'`

``` purescript
newGetShardIteratorOutput' :: ({ "ShardIterator" :: NullOrUndefined (ShardIterator) } -> { "ShardIterator" :: NullOrUndefined (ShardIterator) }) -> GetShardIteratorOutput
```

Constructs GetShardIteratorOutput's fields from required parameters

#### `Identity`

``` purescript
newtype Identity
  = Identity { "PrincipalId" :: NullOrUndefined (String), "Type" :: NullOrUndefined (String) }
```

<p>Contains details about the type of identity that made the request.</p>

##### Instances
``` purescript
Newtype Identity _
Generic Identity _
Show Identity
Decode Identity
Encode Identity
```

#### `newIdentity`

``` purescript
newIdentity :: Identity
```

Constructs Identity from required parameters

#### `newIdentity'`

``` purescript
newIdentity' :: ({ "PrincipalId" :: NullOrUndefined (String), "Type" :: NullOrUndefined (String) } -> { "PrincipalId" :: NullOrUndefined (String), "Type" :: NullOrUndefined (String) }) -> Identity
```

Constructs Identity's fields from required parameters

#### `InternalServerError`

``` purescript
newtype InternalServerError
  = InternalServerError { message :: NullOrUndefined (ErrorMessage) }
```

<p>An error occurred on the server side.</p>

##### Instances
``` purescript
Newtype InternalServerError _
Generic InternalServerError _
Show InternalServerError
Decode InternalServerError
Encode InternalServerError
```

#### `newInternalServerError`

``` purescript
newInternalServerError :: InternalServerError
```

Constructs InternalServerError from required parameters

#### `newInternalServerError'`

``` purescript
newInternalServerError' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> InternalServerError
```

Constructs InternalServerError's fields from required parameters

#### `KeySchema`

``` purescript
newtype KeySchema
  = KeySchema (Array KeySchemaElement)
```

##### Instances
``` purescript
Newtype KeySchema _
Generic KeySchema _
Show KeySchema
Decode KeySchema
Encode KeySchema
```

#### `KeySchemaAttributeName`

``` purescript
newtype KeySchemaAttributeName
  = KeySchemaAttributeName String
```

##### Instances
``` purescript
Newtype KeySchemaAttributeName _
Generic KeySchemaAttributeName _
Show KeySchemaAttributeName
Decode KeySchemaAttributeName
Encode KeySchemaAttributeName
```

#### `KeySchemaElement`

``` purescript
newtype KeySchemaElement
  = KeySchemaElement { "AttributeName" :: KeySchemaAttributeName, "KeyType" :: KeyType }
```

<p>Represents <i>a single element</i> of a key schema. A key schema specifies the attributes that make up the primary key of a table, or the key attributes of an index.</p> <p>A <code>KeySchemaElement</code> represents exactly one attribute of the primary key. For example, a simple primary key (partition key) would be represented by one <code>KeySchemaElement</code>. A composite primary key (partition key and sort key) would require one <code>KeySchemaElement</code> for the partition key, and another <code>KeySchemaElement</code> for the sort key.</p> <note> <p>The partition key of an item is also known as its <i>hash attribute</i>. The term "hash attribute" derives from DynamoDB's usage of an internal hash function to evenly distribute data items across partitions, based on their partition key values.</p> <p>The sort key of an item is also known as its <i>range attribute</i>. The term "range attribute" derives from the way DynamoDB stores items with the same partition key physically close together, in sorted order by the sort key value.</p> </note>

##### Instances
``` purescript
Newtype KeySchemaElement _
Generic KeySchemaElement _
Show KeySchemaElement
Decode KeySchemaElement
Encode KeySchemaElement
```

#### `newKeySchemaElement`

``` purescript
newKeySchemaElement :: KeySchemaAttributeName -> KeyType -> KeySchemaElement
```

Constructs KeySchemaElement from required parameters

#### `newKeySchemaElement'`

``` purescript
newKeySchemaElement' :: KeySchemaAttributeName -> KeyType -> ({ "AttributeName" :: KeySchemaAttributeName, "KeyType" :: KeyType } -> { "AttributeName" :: KeySchemaAttributeName, "KeyType" :: KeyType }) -> KeySchemaElement
```

Constructs KeySchemaElement's fields from required parameters

#### `KeyType`

``` purescript
newtype KeyType
  = KeyType String
```

##### Instances
``` purescript
Newtype KeyType _
Generic KeyType _
Show KeyType
Decode KeyType
Encode KeyType
```

#### `LimitExceededException`

``` purescript
newtype LimitExceededException
  = LimitExceededException { message :: NullOrUndefined (ErrorMessage) }
```

<p>Your request rate is too high. The AWS SDKs for DynamoDB automatically retry requests that receive this exception. Your request is eventually successful, unless your retry queue is too large to finish. Reduce the frequency of requests and use exponential backoff. For more information, go to <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ErrorHandling.html#APIRetries">Error Retries and Exponential Backoff</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>

##### Instances
``` purescript
Newtype LimitExceededException _
Generic LimitExceededException _
Show LimitExceededException
Decode LimitExceededException
Encode LimitExceededException
```

#### `newLimitExceededException`

``` purescript
newLimitExceededException :: LimitExceededException
```

Constructs LimitExceededException from required parameters

#### `newLimitExceededException'`

``` purescript
newLimitExceededException' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> LimitExceededException
```

Constructs LimitExceededException's fields from required parameters

#### `ListAttributeValue`

``` purescript
newtype ListAttributeValue
  = ListAttributeValue (Array AttributeValue)
```

##### Instances
``` purescript
Newtype ListAttributeValue _
Generic ListAttributeValue _
Show ListAttributeValue
Decode ListAttributeValue
Encode ListAttributeValue
```

#### `ListStreamsInput`

``` purescript
newtype ListStreamsInput
  = ListStreamsInput { "TableName" :: NullOrUndefined (TableName), "Limit" :: NullOrUndefined (PositiveIntegerObject), "ExclusiveStartStreamArn" :: NullOrUndefined (StreamArn) }
```

<p>Represents the input of a <code>ListStreams</code> operation.</p>

##### Instances
``` purescript
Newtype ListStreamsInput _
Generic ListStreamsInput _
Show ListStreamsInput
Decode ListStreamsInput
Encode ListStreamsInput
```

#### `newListStreamsInput`

``` purescript
newListStreamsInput :: ListStreamsInput
```

Constructs ListStreamsInput from required parameters

#### `newListStreamsInput'`

``` purescript
newListStreamsInput' :: ({ "TableName" :: NullOrUndefined (TableName), "Limit" :: NullOrUndefined (PositiveIntegerObject), "ExclusiveStartStreamArn" :: NullOrUndefined (StreamArn) } -> { "TableName" :: NullOrUndefined (TableName), "Limit" :: NullOrUndefined (PositiveIntegerObject), "ExclusiveStartStreamArn" :: NullOrUndefined (StreamArn) }) -> ListStreamsInput
```

Constructs ListStreamsInput's fields from required parameters

#### `ListStreamsOutput`

``` purescript
newtype ListStreamsOutput
  = ListStreamsOutput { "Streams" :: NullOrUndefined (StreamList), "LastEvaluatedStreamArn" :: NullOrUndefined (StreamArn) }
```

<p>Represents the output of a <code>ListStreams</code> operation.</p>

##### Instances
``` purescript
Newtype ListStreamsOutput _
Generic ListStreamsOutput _
Show ListStreamsOutput
Decode ListStreamsOutput
Encode ListStreamsOutput
```

#### `newListStreamsOutput`

``` purescript
newListStreamsOutput :: ListStreamsOutput
```

Constructs ListStreamsOutput from required parameters

#### `newListStreamsOutput'`

``` purescript
newListStreamsOutput' :: ({ "Streams" :: NullOrUndefined (StreamList), "LastEvaluatedStreamArn" :: NullOrUndefined (StreamArn) } -> { "Streams" :: NullOrUndefined (StreamList), "LastEvaluatedStreamArn" :: NullOrUndefined (StreamArn) }) -> ListStreamsOutput
```

Constructs ListStreamsOutput's fields from required parameters

#### `MapAttributeValue`

``` purescript
newtype MapAttributeValue
  = MapAttributeValue (StrMap AttributeValue)
```

##### Instances
``` purescript
Newtype MapAttributeValue _
Generic MapAttributeValue _
Show MapAttributeValue
Decode MapAttributeValue
Encode MapAttributeValue
```

#### `NullAttributeValue`

``` purescript
newtype NullAttributeValue
  = NullAttributeValue Boolean
```

##### Instances
``` purescript
Newtype NullAttributeValue _
Generic NullAttributeValue _
Show NullAttributeValue
Decode NullAttributeValue
Encode NullAttributeValue
```

#### `NumberAttributeValue`

``` purescript
newtype NumberAttributeValue
  = NumberAttributeValue String
```

##### Instances
``` purescript
Newtype NumberAttributeValue _
Generic NumberAttributeValue _
Show NumberAttributeValue
Decode NumberAttributeValue
Encode NumberAttributeValue
```

#### `NumberSetAttributeValue`

``` purescript
newtype NumberSetAttributeValue
  = NumberSetAttributeValue (Array NumberAttributeValue)
```

##### Instances
``` purescript
Newtype NumberSetAttributeValue _
Generic NumberSetAttributeValue _
Show NumberSetAttributeValue
Decode NumberSetAttributeValue
Encode NumberSetAttributeValue
```

#### `OperationType`

``` purescript
newtype OperationType
  = OperationType String
```

##### Instances
``` purescript
Newtype OperationType _
Generic OperationType _
Show OperationType
Decode OperationType
Encode OperationType
```

#### `PositiveIntegerObject`

``` purescript
newtype PositiveIntegerObject
  = PositiveIntegerObject Int
```

##### Instances
``` purescript
Newtype PositiveIntegerObject _
Generic PositiveIntegerObject _
Show PositiveIntegerObject
Decode PositiveIntegerObject
Encode PositiveIntegerObject
```

#### `PositiveLongObject`

``` purescript
newtype PositiveLongObject
  = PositiveLongObject Number
```

##### Instances
``` purescript
Newtype PositiveLongObject _
Generic PositiveLongObject _
Show PositiveLongObject
Decode PositiveLongObject
Encode PositiveLongObject
```

#### `Record''`

``` purescript
newtype Record''
  = Record'' { eventID :: NullOrUndefined (String), eventName :: NullOrUndefined (OperationType), eventVersion :: NullOrUndefined (String), eventSource :: NullOrUndefined (String), awsRegion :: NullOrUndefined (String), dynamodb :: NullOrUndefined (StreamRecord), userIdentity :: NullOrUndefined (Identity) }
```

<p>A description of a unique event within a stream.</p>

##### Instances
``` purescript
Newtype Record'' _
Generic Record'' _
Show Record''
Decode Record''
Encode Record''
```

#### `newRecord''`

``` purescript
newRecord'' :: Record''
```

Constructs Record'' from required parameters

#### `newRecord'''`

``` purescript
newRecord''' :: ({ eventID :: NullOrUndefined (String), eventName :: NullOrUndefined (OperationType), eventVersion :: NullOrUndefined (String), eventSource :: NullOrUndefined (String), awsRegion :: NullOrUndefined (String), dynamodb :: NullOrUndefined (StreamRecord), userIdentity :: NullOrUndefined (Identity) } -> { eventID :: NullOrUndefined (String), eventName :: NullOrUndefined (OperationType), eventVersion :: NullOrUndefined (String), eventSource :: NullOrUndefined (String), awsRegion :: NullOrUndefined (String), dynamodb :: NullOrUndefined (StreamRecord), userIdentity :: NullOrUndefined (Identity) }) -> Record''
```

Constructs Record'''s fields from required parameters

#### `RecordList`

``` purescript
newtype RecordList
  = RecordList (Array Record'')
```

##### Instances
``` purescript
Newtype RecordList _
Generic RecordList _
Show RecordList
Decode RecordList
Encode RecordList
```

#### `ResourceNotFoundException`

``` purescript
newtype ResourceNotFoundException
  = ResourceNotFoundException { message :: NullOrUndefined (ErrorMessage) }
```

<p>The operation tried to access a nonexistent stream.</p>

##### Instances
``` purescript
Newtype ResourceNotFoundException _
Generic ResourceNotFoundException _
Show ResourceNotFoundException
Decode ResourceNotFoundException
Encode ResourceNotFoundException
```

#### `newResourceNotFoundException`

``` purescript
newResourceNotFoundException :: ResourceNotFoundException
```

Constructs ResourceNotFoundException from required parameters

#### `newResourceNotFoundException'`

``` purescript
newResourceNotFoundException' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> ResourceNotFoundException
```

Constructs ResourceNotFoundException's fields from required parameters

#### `SequenceNumber`

``` purescript
newtype SequenceNumber
  = SequenceNumber String
```

##### Instances
``` purescript
Newtype SequenceNumber _
Generic SequenceNumber _
Show SequenceNumber
Decode SequenceNumber
Encode SequenceNumber
```

#### `SequenceNumberRange`

``` purescript
newtype SequenceNumberRange
  = SequenceNumberRange { "StartingSequenceNumber" :: NullOrUndefined (SequenceNumber), "EndingSequenceNumber" :: NullOrUndefined (SequenceNumber) }
```

<p>The beginning and ending sequence numbers for the stream records contained within a shard.</p>

##### Instances
``` purescript
Newtype SequenceNumberRange _
Generic SequenceNumberRange _
Show SequenceNumberRange
Decode SequenceNumberRange
Encode SequenceNumberRange
```

#### `newSequenceNumberRange`

``` purescript
newSequenceNumberRange :: SequenceNumberRange
```

Constructs SequenceNumberRange from required parameters

#### `newSequenceNumberRange'`

``` purescript
newSequenceNumberRange' :: ({ "StartingSequenceNumber" :: NullOrUndefined (SequenceNumber), "EndingSequenceNumber" :: NullOrUndefined (SequenceNumber) } -> { "StartingSequenceNumber" :: NullOrUndefined (SequenceNumber), "EndingSequenceNumber" :: NullOrUndefined (SequenceNumber) }) -> SequenceNumberRange
```

Constructs SequenceNumberRange's fields from required parameters

#### `Shard`

``` purescript
newtype Shard
  = Shard { "ShardId" :: NullOrUndefined (ShardId), "SequenceNumberRange" :: NullOrUndefined (SequenceNumberRange), "ParentShardId" :: NullOrUndefined (ShardId) }
```

<p>A uniquely identified group of stream records within a stream.</p>

##### Instances
``` purescript
Newtype Shard _
Generic Shard _
Show Shard
Decode Shard
Encode Shard
```

#### `newShard`

``` purescript
newShard :: Shard
```

Constructs Shard from required parameters

#### `newShard'`

``` purescript
newShard' :: ({ "ShardId" :: NullOrUndefined (ShardId), "SequenceNumberRange" :: NullOrUndefined (SequenceNumberRange), "ParentShardId" :: NullOrUndefined (ShardId) } -> { "ShardId" :: NullOrUndefined (ShardId), "SequenceNumberRange" :: NullOrUndefined (SequenceNumberRange), "ParentShardId" :: NullOrUndefined (ShardId) }) -> Shard
```

Constructs Shard's fields from required parameters

#### `ShardDescriptionList`

``` purescript
newtype ShardDescriptionList
  = ShardDescriptionList (Array Shard)
```

##### Instances
``` purescript
Newtype ShardDescriptionList _
Generic ShardDescriptionList _
Show ShardDescriptionList
Decode ShardDescriptionList
Encode ShardDescriptionList
```

#### `ShardId`

``` purescript
newtype ShardId
  = ShardId String
```

##### Instances
``` purescript
Newtype ShardId _
Generic ShardId _
Show ShardId
Decode ShardId
Encode ShardId
```

#### `ShardIterator`

``` purescript
newtype ShardIterator
  = ShardIterator String
```

##### Instances
``` purescript
Newtype ShardIterator _
Generic ShardIterator _
Show ShardIterator
Decode ShardIterator
Encode ShardIterator
```

#### `ShardIteratorType`

``` purescript
newtype ShardIteratorType
  = ShardIteratorType String
```

##### Instances
``` purescript
Newtype ShardIteratorType _
Generic ShardIteratorType _
Show ShardIteratorType
Decode ShardIteratorType
Encode ShardIteratorType
```

#### `Stream`

``` purescript
newtype Stream
  = Stream { "StreamArn" :: NullOrUndefined (StreamArn), "TableName" :: NullOrUndefined (TableName), "StreamLabel" :: NullOrUndefined (String) }
```

<p>Represents all of the data describing a particular stream.</p>

##### Instances
``` purescript
Newtype Stream _
Generic Stream _
Show Stream
Decode Stream
Encode Stream
```

#### `newStream`

``` purescript
newStream :: Stream
```

Constructs Stream from required parameters

#### `newStream'`

``` purescript
newStream' :: ({ "StreamArn" :: NullOrUndefined (StreamArn), "TableName" :: NullOrUndefined (TableName), "StreamLabel" :: NullOrUndefined (String) } -> { "StreamArn" :: NullOrUndefined (StreamArn), "TableName" :: NullOrUndefined (TableName), "StreamLabel" :: NullOrUndefined (String) }) -> Stream
```

Constructs Stream's fields from required parameters

#### `StreamArn`

``` purescript
newtype StreamArn
  = StreamArn String
```

##### Instances
``` purescript
Newtype StreamArn _
Generic StreamArn _
Show StreamArn
Decode StreamArn
Encode StreamArn
```

#### `StreamDescription`

``` purescript
newtype StreamDescription
  = StreamDescription { "StreamArn" :: NullOrUndefined (StreamArn), "StreamLabel" :: NullOrUndefined (String), "StreamStatus" :: NullOrUndefined (StreamStatus), "StreamViewType" :: NullOrUndefined (StreamViewType), "CreationRequestDateTime" :: NullOrUndefined (Date), "TableName" :: NullOrUndefined (TableName), "KeySchema" :: NullOrUndefined (KeySchema), "Shards" :: NullOrUndefined (ShardDescriptionList), "LastEvaluatedShardId" :: NullOrUndefined (ShardId) }
```

<p>Represents all of the data describing a particular stream.</p>

##### Instances
``` purescript
Newtype StreamDescription _
Generic StreamDescription _
Show StreamDescription
Decode StreamDescription
Encode StreamDescription
```

#### `newStreamDescription`

``` purescript
newStreamDescription :: StreamDescription
```

Constructs StreamDescription from required parameters

#### `newStreamDescription'`

``` purescript
newStreamDescription' :: ({ "StreamArn" :: NullOrUndefined (StreamArn), "StreamLabel" :: NullOrUndefined (String), "StreamStatus" :: NullOrUndefined (StreamStatus), "StreamViewType" :: NullOrUndefined (StreamViewType), "CreationRequestDateTime" :: NullOrUndefined (Date), "TableName" :: NullOrUndefined (TableName), "KeySchema" :: NullOrUndefined (KeySchema), "Shards" :: NullOrUndefined (ShardDescriptionList), "LastEvaluatedShardId" :: NullOrUndefined (ShardId) } -> { "StreamArn" :: NullOrUndefined (StreamArn), "StreamLabel" :: NullOrUndefined (String), "StreamStatus" :: NullOrUndefined (StreamStatus), "StreamViewType" :: NullOrUndefined (StreamViewType), "CreationRequestDateTime" :: NullOrUndefined (Date), "TableName" :: NullOrUndefined (TableName), "KeySchema" :: NullOrUndefined (KeySchema), "Shards" :: NullOrUndefined (ShardDescriptionList), "LastEvaluatedShardId" :: NullOrUndefined (ShardId) }) -> StreamDescription
```

Constructs StreamDescription's fields from required parameters

#### `StreamList`

``` purescript
newtype StreamList
  = StreamList (Array Stream)
```

##### Instances
``` purescript
Newtype StreamList _
Generic StreamList _
Show StreamList
Decode StreamList
Encode StreamList
```

#### `StreamRecord`

``` purescript
newtype StreamRecord
  = StreamRecord { "ApproximateCreationDateTime" :: NullOrUndefined (Date), "Keys" :: NullOrUndefined (AttributeMap), "NewImage" :: NullOrUndefined (AttributeMap), "OldImage" :: NullOrUndefined (AttributeMap), "SequenceNumber" :: NullOrUndefined (SequenceNumber), "SizeBytes" :: NullOrUndefined (PositiveLongObject), "StreamViewType" :: NullOrUndefined (StreamViewType) }
```

<p>A description of a single data modification that was performed on an item in a DynamoDB table.</p>

##### Instances
``` purescript
Newtype StreamRecord _
Generic StreamRecord _
Show StreamRecord
Decode StreamRecord
Encode StreamRecord
```

#### `newStreamRecord`

``` purescript
newStreamRecord :: StreamRecord
```

Constructs StreamRecord from required parameters

#### `newStreamRecord'`

``` purescript
newStreamRecord' :: ({ "ApproximateCreationDateTime" :: NullOrUndefined (Date), "Keys" :: NullOrUndefined (AttributeMap), "NewImage" :: NullOrUndefined (AttributeMap), "OldImage" :: NullOrUndefined (AttributeMap), "SequenceNumber" :: NullOrUndefined (SequenceNumber), "SizeBytes" :: NullOrUndefined (PositiveLongObject), "StreamViewType" :: NullOrUndefined (StreamViewType) } -> { "ApproximateCreationDateTime" :: NullOrUndefined (Date), "Keys" :: NullOrUndefined (AttributeMap), "NewImage" :: NullOrUndefined (AttributeMap), "OldImage" :: NullOrUndefined (AttributeMap), "SequenceNumber" :: NullOrUndefined (SequenceNumber), "SizeBytes" :: NullOrUndefined (PositiveLongObject), "StreamViewType" :: NullOrUndefined (StreamViewType) }) -> StreamRecord
```

Constructs StreamRecord's fields from required parameters

#### `StreamStatus`

``` purescript
newtype StreamStatus
  = StreamStatus String
```

##### Instances
``` purescript
Newtype StreamStatus _
Generic StreamStatus _
Show StreamStatus
Decode StreamStatus
Encode StreamStatus
```

#### `StreamViewType`

``` purescript
newtype StreamViewType
  = StreamViewType String
```

##### Instances
``` purescript
Newtype StreamViewType _
Generic StreamViewType _
Show StreamViewType
Decode StreamViewType
Encode StreamViewType
```

#### `StringAttributeValue`

``` purescript
newtype StringAttributeValue
  = StringAttributeValue String
```

##### Instances
``` purescript
Newtype StringAttributeValue _
Generic StringAttributeValue _
Show StringAttributeValue
Decode StringAttributeValue
Encode StringAttributeValue
```

#### `StringSetAttributeValue`

``` purescript
newtype StringSetAttributeValue
  = StringSetAttributeValue (Array StringAttributeValue)
```

##### Instances
``` purescript
Newtype StringSetAttributeValue _
Generic StringSetAttributeValue _
Show StringSetAttributeValue
Decode StringSetAttributeValue
Encode StringSetAttributeValue
```

#### `TableName`

``` purescript
newtype TableName
  = TableName String
```

##### Instances
``` purescript
Newtype TableName _
Generic TableName _
Show TableName
Decode TableName
Encode TableName
```

#### `TrimmedDataAccessException`

``` purescript
newtype TrimmedDataAccessException
  = TrimmedDataAccessException { message :: NullOrUndefined (ErrorMessage) }
```

<p>The operation attempted to read past the oldest stream record in a shard.</p> <p>In DynamoDB Streams, there is a 24 hour limit on data retention. Stream records whose age exceeds this limit are subject to removal (trimming) from the stream. You might receive a TrimmedDataAccessException if:</p> <ul> <li><p>You request a shard iterator with a sequence number older than the trim point (24 hours).</p> </li> <li><p>You obtain a shard iterator, but before you use the iterator in a <code>GetRecords</code> request, a stream record in the shard exceeds the 24 hour period and is trimmed. This causes the iterator to access a record that no longer exists.</p> </li> </ul>

##### Instances
``` purescript
Newtype TrimmedDataAccessException _
Generic TrimmedDataAccessException _
Show TrimmedDataAccessException
Decode TrimmedDataAccessException
Encode TrimmedDataAccessException
```

#### `newTrimmedDataAccessException`

``` purescript
newTrimmedDataAccessException :: TrimmedDataAccessException
```

Constructs TrimmedDataAccessException from required parameters

#### `newTrimmedDataAccessException'`

``` purescript
newTrimmedDataAccessException' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> TrimmedDataAccessException
```

Constructs TrimmedDataAccessException's fields from required parameters


