# frozen_string_literal: true

# Copyright 2022 Google LLC
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

# [START certificatemanager_v1_generated_CertificateManager_ListCertificates_sync]
require "google/cloud/certificate_manager/v1"

##
# Snippet for the list_certificates call in the CertificateManager service
#
# This snippet has been automatically generated and should be regarded as a code
# template only. It will require modifications to work:
# - It may require correct/in-range values for request initialization.
# - It may require specifying regional endpoints when creating the service
# client as shown in https://cloud.google.com/ruby/docs/reference.
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::CertificateManager::V1::CertificateManager::Client#list_certificates.
#
def list_certificates
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::CertificateManager::V1::CertificateManager::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::CertificateManager::V1::ListCertificatesRequest.new

  # Call the list_certificates method.
  result = client.list_certificates request

  # The returned object is of type Gapic::PagedEnumerable. You can iterate
  # over elements, and API calls will be issued to fetch pages as needed.
  result.each do |item|
    # Each element is of type ::Google::Cloud::CertificateManager::V1::Certificate.
    p item
  end
end
# [END certificatemanager_v1_generated_CertificateManager_ListCertificates_sync]
