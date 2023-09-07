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

require "helper"

require "gapic/grpc/service_stub"

require "google/cloud/aiplatform/v1/vizier_service_pb"
require "google/cloud/aiplatform/v1/vizier_service_services_pb"
require "google/cloud/ai_platform/v1/vizier_service"

class ::Google::Cloud::AIPlatform::V1::VizierService::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_rpc_count, :requests

    def initialize response, operation, &block
      @response = response
      @operation = operation
      @block = block
      @call_rpc_count = 0
      @requests = []
    end

    def call_rpc *args, **kwargs
      @call_rpc_count += 1

      @requests << @block&.call(*args, **kwargs)

      yield @response, @operation if block_given?

      @response
    end
  end

  def test_create_study
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::AIPlatform::V1::Study.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    study = {}

    create_study_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_study, name
      assert_kind_of ::Google::Cloud::AIPlatform::V1::CreateStudyRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::AIPlatform::V1::Study), request["study"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_study_client_stub do
      # Create client
      client = ::Google::Cloud::AIPlatform::V1::VizierService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_study({ parent: parent, study: study }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_study parent: parent, study: study do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_study ::Google::Cloud::AIPlatform::V1::CreateStudyRequest.new(parent: parent, study: study) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_study({ parent: parent, study: study }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_study(::Google::Cloud::AIPlatform::V1::CreateStudyRequest.new(parent: parent, study: study), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_study_client_stub.call_rpc_count
    end
  end

  def test_get_study
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::AIPlatform::V1::Study.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_study_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_study, name
      assert_kind_of ::Google::Cloud::AIPlatform::V1::GetStudyRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_study_client_stub do
      # Create client
      client = ::Google::Cloud::AIPlatform::V1::VizierService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_study({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_study name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_study ::Google::Cloud::AIPlatform::V1::GetStudyRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_study({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_study(::Google::Cloud::AIPlatform::V1::GetStudyRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_study_client_stub.call_rpc_count
    end
  end

  def test_list_studies
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::AIPlatform::V1::ListStudiesResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_token = "hello world"
    page_size = 42

    list_studies_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_studies, name
      assert_kind_of ::Google::Cloud::AIPlatform::V1::ListStudiesRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal "hello world", request["page_token"]
      assert_equal 42, request["page_size"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_studies_client_stub do
      # Create client
      client = ::Google::Cloud::AIPlatform::V1::VizierService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_studies({ parent: parent, page_token: page_token, page_size: page_size }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_studies parent: parent, page_token: page_token, page_size: page_size do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_studies ::Google::Cloud::AIPlatform::V1::ListStudiesRequest.new(parent: parent, page_token: page_token, page_size: page_size) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_studies({ parent: parent, page_token: page_token, page_size: page_size }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_studies(::Google::Cloud::AIPlatform::V1::ListStudiesRequest.new(parent: parent, page_token: page_token, page_size: page_size), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_studies_client_stub.call_rpc_count
    end
  end

  def test_delete_study
    # Create GRPC objects.
    grpc_response = ::Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_study_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_study, name
      assert_kind_of ::Google::Cloud::AIPlatform::V1::DeleteStudyRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_study_client_stub do
      # Create client
      client = ::Google::Cloud::AIPlatform::V1::VizierService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_study({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_study name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_study ::Google::Cloud::AIPlatform::V1::DeleteStudyRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_study({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_study(::Google::Cloud::AIPlatform::V1::DeleteStudyRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_study_client_stub.call_rpc_count
    end
  end

  def test_lookup_study
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::AIPlatform::V1::Study.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    display_name = "hello world"

    lookup_study_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :lookup_study, name
      assert_kind_of ::Google::Cloud::AIPlatform::V1::LookupStudyRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal "hello world", request["display_name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, lookup_study_client_stub do
      # Create client
      client = ::Google::Cloud::AIPlatform::V1::VizierService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.lookup_study({ parent: parent, display_name: display_name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.lookup_study parent: parent, display_name: display_name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.lookup_study ::Google::Cloud::AIPlatform::V1::LookupStudyRequest.new(parent: parent, display_name: display_name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.lookup_study({ parent: parent, display_name: display_name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.lookup_study(::Google::Cloud::AIPlatform::V1::LookupStudyRequest.new(parent: parent, display_name: display_name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, lookup_study_client_stub.call_rpc_count
    end
  end

  def test_suggest_trials
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    suggestion_count = 42
    client_id = "hello world"
    contexts = [{}]

    suggest_trials_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :suggest_trials, name
      assert_kind_of ::Google::Cloud::AIPlatform::V1::SuggestTrialsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["suggestion_count"]
      assert_equal "hello world", request["client_id"]
      assert_kind_of ::Google::Cloud::AIPlatform::V1::TrialContext, request["contexts"].first
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, suggest_trials_client_stub do
      # Create client
      client = ::Google::Cloud::AIPlatform::V1::VizierService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.suggest_trials({ parent: parent, suggestion_count: suggestion_count, client_id: client_id, contexts: contexts }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.suggest_trials parent: parent, suggestion_count: suggestion_count, client_id: client_id, contexts: contexts do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.suggest_trials ::Google::Cloud::AIPlatform::V1::SuggestTrialsRequest.new(parent: parent, suggestion_count: suggestion_count, client_id: client_id, contexts: contexts) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.suggest_trials({ parent: parent, suggestion_count: suggestion_count, client_id: client_id, contexts: contexts }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.suggest_trials(::Google::Cloud::AIPlatform::V1::SuggestTrialsRequest.new(parent: parent, suggestion_count: suggestion_count, client_id: client_id, contexts: contexts), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, suggest_trials_client_stub.call_rpc_count
    end
  end

  def test_create_trial
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::AIPlatform::V1::Trial.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    trial = {}

    create_trial_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_trial, name
      assert_kind_of ::Google::Cloud::AIPlatform::V1::CreateTrialRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::AIPlatform::V1::Trial), request["trial"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_trial_client_stub do
      # Create client
      client = ::Google::Cloud::AIPlatform::V1::VizierService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_trial({ parent: parent, trial: trial }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_trial parent: parent, trial: trial do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_trial ::Google::Cloud::AIPlatform::V1::CreateTrialRequest.new(parent: parent, trial: trial) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_trial({ parent: parent, trial: trial }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_trial(::Google::Cloud::AIPlatform::V1::CreateTrialRequest.new(parent: parent, trial: trial), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_trial_client_stub.call_rpc_count
    end
  end

  def test_get_trial
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::AIPlatform::V1::Trial.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_trial_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_trial, name
      assert_kind_of ::Google::Cloud::AIPlatform::V1::GetTrialRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_trial_client_stub do
      # Create client
      client = ::Google::Cloud::AIPlatform::V1::VizierService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_trial({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_trial name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_trial ::Google::Cloud::AIPlatform::V1::GetTrialRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_trial({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_trial(::Google::Cloud::AIPlatform::V1::GetTrialRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_trial_client_stub.call_rpc_count
    end
  end

  def test_list_trials
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::AIPlatform::V1::ListTrialsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_token = "hello world"
    page_size = 42

    list_trials_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_trials, name
      assert_kind_of ::Google::Cloud::AIPlatform::V1::ListTrialsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal "hello world", request["page_token"]
      assert_equal 42, request["page_size"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_trials_client_stub do
      # Create client
      client = ::Google::Cloud::AIPlatform::V1::VizierService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_trials({ parent: parent, page_token: page_token, page_size: page_size }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_trials parent: parent, page_token: page_token, page_size: page_size do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_trials ::Google::Cloud::AIPlatform::V1::ListTrialsRequest.new(parent: parent, page_token: page_token, page_size: page_size) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_trials({ parent: parent, page_token: page_token, page_size: page_size }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_trials(::Google::Cloud::AIPlatform::V1::ListTrialsRequest.new(parent: parent, page_token: page_token, page_size: page_size), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_trials_client_stub.call_rpc_count
    end
  end

  def test_add_trial_measurement
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::AIPlatform::V1::Trial.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    trial_name = "hello world"
    measurement = {}

    add_trial_measurement_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :add_trial_measurement, name
      assert_kind_of ::Google::Cloud::AIPlatform::V1::AddTrialMeasurementRequest, request
      assert_equal "hello world", request["trial_name"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::AIPlatform::V1::Measurement), request["measurement"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, add_trial_measurement_client_stub do
      # Create client
      client = ::Google::Cloud::AIPlatform::V1::VizierService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.add_trial_measurement({ trial_name: trial_name, measurement: measurement }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.add_trial_measurement trial_name: trial_name, measurement: measurement do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.add_trial_measurement ::Google::Cloud::AIPlatform::V1::AddTrialMeasurementRequest.new(trial_name: trial_name, measurement: measurement) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.add_trial_measurement({ trial_name: trial_name, measurement: measurement }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.add_trial_measurement(::Google::Cloud::AIPlatform::V1::AddTrialMeasurementRequest.new(trial_name: trial_name, measurement: measurement), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, add_trial_measurement_client_stub.call_rpc_count
    end
  end

  def test_complete_trial
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::AIPlatform::V1::Trial.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    final_measurement = {}
    trial_infeasible = true
    infeasible_reason = "hello world"

    complete_trial_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :complete_trial, name
      assert_kind_of ::Google::Cloud::AIPlatform::V1::CompleteTrialRequest, request
      assert_equal "hello world", request["name"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::AIPlatform::V1::Measurement), request["final_measurement"]
      assert_equal true, request["trial_infeasible"]
      assert_equal "hello world", request["infeasible_reason"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, complete_trial_client_stub do
      # Create client
      client = ::Google::Cloud::AIPlatform::V1::VizierService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.complete_trial({ name: name, final_measurement: final_measurement, trial_infeasible: trial_infeasible, infeasible_reason: infeasible_reason }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.complete_trial name: name, final_measurement: final_measurement, trial_infeasible: trial_infeasible, infeasible_reason: infeasible_reason do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.complete_trial ::Google::Cloud::AIPlatform::V1::CompleteTrialRequest.new(name: name, final_measurement: final_measurement, trial_infeasible: trial_infeasible, infeasible_reason: infeasible_reason) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.complete_trial({ name: name, final_measurement: final_measurement, trial_infeasible: trial_infeasible, infeasible_reason: infeasible_reason }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.complete_trial(::Google::Cloud::AIPlatform::V1::CompleteTrialRequest.new(name: name, final_measurement: final_measurement, trial_infeasible: trial_infeasible, infeasible_reason: infeasible_reason), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, complete_trial_client_stub.call_rpc_count
    end
  end

  def test_delete_trial
    # Create GRPC objects.
    grpc_response = ::Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_trial_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_trial, name
      assert_kind_of ::Google::Cloud::AIPlatform::V1::DeleteTrialRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_trial_client_stub do
      # Create client
      client = ::Google::Cloud::AIPlatform::V1::VizierService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_trial({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_trial name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_trial ::Google::Cloud::AIPlatform::V1::DeleteTrialRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_trial({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_trial(::Google::Cloud::AIPlatform::V1::DeleteTrialRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_trial_client_stub.call_rpc_count
    end
  end

  def test_check_trial_early_stopping_state
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    trial_name = "hello world"

    check_trial_early_stopping_state_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :check_trial_early_stopping_state, name
      assert_kind_of ::Google::Cloud::AIPlatform::V1::CheckTrialEarlyStoppingStateRequest, request
      assert_equal "hello world", request["trial_name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, check_trial_early_stopping_state_client_stub do
      # Create client
      client = ::Google::Cloud::AIPlatform::V1::VizierService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.check_trial_early_stopping_state({ trial_name: trial_name }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.check_trial_early_stopping_state trial_name: trial_name do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.check_trial_early_stopping_state ::Google::Cloud::AIPlatform::V1::CheckTrialEarlyStoppingStateRequest.new(trial_name: trial_name) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.check_trial_early_stopping_state({ trial_name: trial_name }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.check_trial_early_stopping_state(::Google::Cloud::AIPlatform::V1::CheckTrialEarlyStoppingStateRequest.new(trial_name: trial_name), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, check_trial_early_stopping_state_client_stub.call_rpc_count
    end
  end

  def test_stop_trial
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::AIPlatform::V1::Trial.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    stop_trial_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :stop_trial, name
      assert_kind_of ::Google::Cloud::AIPlatform::V1::StopTrialRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, stop_trial_client_stub do
      # Create client
      client = ::Google::Cloud::AIPlatform::V1::VizierService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.stop_trial({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.stop_trial name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.stop_trial ::Google::Cloud::AIPlatform::V1::StopTrialRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.stop_trial({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.stop_trial(::Google::Cloud::AIPlatform::V1::StopTrialRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, stop_trial_client_stub.call_rpc_count
    end
  end

  def test_list_optimal_trials
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::AIPlatform::V1::ListOptimalTrialsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"

    list_optimal_trials_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_optimal_trials, name
      assert_kind_of ::Google::Cloud::AIPlatform::V1::ListOptimalTrialsRequest, request
      assert_equal "hello world", request["parent"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_optimal_trials_client_stub do
      # Create client
      client = ::Google::Cloud::AIPlatform::V1::VizierService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_optimal_trials({ parent: parent }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_optimal_trials parent: parent do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_optimal_trials ::Google::Cloud::AIPlatform::V1::ListOptimalTrialsRequest.new(parent: parent) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_optimal_trials({ parent: parent }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_optimal_trials(::Google::Cloud::AIPlatform::V1::ListOptimalTrialsRequest.new(parent: parent), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_optimal_trials_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::AIPlatform::V1::VizierService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::AIPlatform::V1::VizierService::Client::Configuration, config
  end

  def test_operations_client
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::AIPlatform::V1::VizierService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    assert_kind_of ::Google::Cloud::AIPlatform::V1::VizierService::Operations, client.operations_client
  end
end
