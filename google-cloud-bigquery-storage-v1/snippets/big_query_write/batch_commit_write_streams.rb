# frozen_string_literal: true

# Copyright 2021 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!

# [START bigquerystorage_v1_generated_BigQueryWrite_BatchCommitWriteStreams_sync]
require "google/cloud/bigquery/storage/v1"

##
# Snippet for the batch_commit_write_streams call in the BigQueryWrite service
#
# This snippet has been automatically generated and should be regarded as a code
# template only. It will require modifications to work:
# - It may require correct/in-range values for request initialization.
# - It may require specifying regional endpoints when creating the service
# client as shown in https://cloud.google.com/ruby/docs/reference.
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::Bigquery::Storage::V1::BigQueryWrite::Client#batch_commit_write_streams.
#
def batch_commit_write_streams
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Bigquery::Storage::V1::BigQueryWrite::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::Bigquery::Storage::V1::BatchCommitWriteStreamsRequest.new

  # Call the batch_commit_write_streams method.
  result = client.batch_commit_write_streams request

  # The returned object is of type Google::Cloud::Bigquery::Storage::V1::BatchCommitWriteStreamsResponse.
  p result
end
# [END bigquerystorage_v1_generated_BigQueryWrite_BatchCommitWriteStreams_sync]
