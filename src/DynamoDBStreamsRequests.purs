
module AWS.DynamoDBStreams.Requests where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Request (MethodName(..), request) as AWS
import AWS.Request.Types as Types

import AWS.DynamoDBStreams as DynamoDBStreams
import AWS.DynamoDBStreams.Types as DynamoDBStreamsTypes


-- | <p>Returns information about a stream, including the current status of the stream, its Amazon Resource Name (ARN), the composition of its shards, and its corresponding DynamoDB table.</p> <note> <p>You can call <code>DescribeStream</code> at a maximum rate of 10 times per second.</p> </note> <p>Each shard in the stream has a <code>SequenceNumberRange</code> associated with it. If the <code>SequenceNumberRange</code> has a <code>StartingSequenceNumber</code> but no <code>EndingSequenceNumber</code>, then the shard is still open (able to receive more stream records). If both <code>StartingSequenceNumber</code> and <code>EndingSequenceNumber</code> are present, then that shard is closed and can no longer receive more data.</p>
describeStream :: forall eff. DynamoDBStreams.Service -> DynamoDBStreamsTypes.DescribeStreamInput -> Aff (exception :: EXCEPTION | eff) DynamoDBStreamsTypes.DescribeStreamOutput
describeStream (DynamoDBStreams.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeStream"


-- | <p>Retrieves the stream records from a given shard.</p> <p>Specify a shard iterator using the <code>ShardIterator</code> parameter. The shard iterator specifies the position in the shard from which you want to start reading stream records sequentially. If there are no stream records available in the portion of the shard that the iterator points to, <code>GetRecords</code> returns an empty list. Note that it might take multiple calls to get to a portion of the shard that contains stream records.</p> <note> <p> <code>GetRecords</code> can retrieve a maximum of 1 MB of data or 1000 stream records, whichever comes first.</p> </note>
getRecords :: forall eff. DynamoDBStreams.Service -> DynamoDBStreamsTypes.GetRecordsInput -> Aff (exception :: EXCEPTION | eff) DynamoDBStreamsTypes.GetRecordsOutput
getRecords (DynamoDBStreams.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getRecords"


-- | <p>Returns a shard iterator. A shard iterator provides information about how to retrieve the stream records from within a shard. Use the shard iterator in a subsequent <code>GetRecords</code> request to read the stream records from the shard.</p> <note> <p>A shard iterator expires 15 minutes after it is returned to the requester.</p> </note>
getShardIterator :: forall eff. DynamoDBStreams.Service -> DynamoDBStreamsTypes.GetShardIteratorInput -> Aff (exception :: EXCEPTION | eff) DynamoDBStreamsTypes.GetShardIteratorOutput
getShardIterator (DynamoDBStreams.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getShardIterator"


-- | <p>Returns an array of stream ARNs associated with the current account and endpoint. If the <code>TableName</code> parameter is present, then <code>ListStreams</code> will return only the streams ARNs for that table.</p> <note> <p>You can call <code>ListStreams</code> at a maximum rate of 5 times per second.</p> </note>
listStreams :: forall eff. DynamoDBStreams.Service -> DynamoDBStreamsTypes.ListStreamsInput -> Aff (exception :: EXCEPTION | eff) DynamoDBStreamsTypes.ListStreamsOutput
listStreams (DynamoDBStreams.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listStreams"
