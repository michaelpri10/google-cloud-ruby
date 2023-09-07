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


module Google
  module Cloud
    module AIPlatform
      module V1
        # Request message for
        # {::Google::Cloud::AIPlatform::V1::EndpointService::Client#create_endpoint EndpointService.CreateEndpoint}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the Location to create the Endpoint in.
        #     Format: `projects/{project}/locations/{location}`
        # @!attribute [rw] endpoint
        #   @return [::Google::Cloud::AIPlatform::V1::Endpoint]
        #     Required. The Endpoint to create.
        # @!attribute [rw] endpoint_id
        #   @return [::String]
        #     Immutable. The ID to use for endpoint, which will become the final
        #     component of the endpoint resource name.
        #     If not provided, Vertex AI will generate a value for this ID.
        #
        #     If the first character is a letter, this value may be up to 63 characters,
        #     and valid characters are `[a-z0-9-]`. The last character must be a letter
        #     or number.
        #
        #     If the first character is a number, this value may be up to 9 characters,
        #     and valid characters are `[0-9]` with no leading zeros.
        #
        #     When using HTTP/JSON, this field is populated
        #     based on a query string argument, such as `?endpoint_id=12345`. This is the
        #     fallback for fields that are not included in either the URI or the body.
        class CreateEndpointRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Runtime operation information for
        # {::Google::Cloud::AIPlatform::V1::EndpointService::Client#create_endpoint EndpointService.CreateEndpoint}.
        # @!attribute [rw] generic_metadata
        #   @return [::Google::Cloud::AIPlatform::V1::GenericOperationMetadata]
        #     The operation generic information.
        class CreateEndpointOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::EndpointService::Client#get_endpoint EndpointService.GetEndpoint}
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the Endpoint resource.
        #     Format:
        #     `projects/{project}/locations/{location}/endpoints/{endpoint}`
        class GetEndpointRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::EndpointService::Client#list_endpoints EndpointService.ListEndpoints}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the Location from which to list the
        #     Endpoints. Format: `projects/{project}/locations/{location}`
        # @!attribute [rw] filter
        #   @return [::String]
        #     Optional. An expression for filtering the results of the request. For field
        #     names both snake_case and camelCase are supported.
        #
        #       * `endpoint` supports = and !=. `endpoint` represents the Endpoint ID,
        #         i.e. the last segment of the Endpoint's [resource
        #         name][google.cloud.aiplatform.v1.Endpoint.name].
        #       * `display_name` supports = and, !=
        #       * `labels` supports general map functions that is:
        #         * `labels.key=value` - key:value equality
        #         * `labels.key:* or labels:key - key existence
        #         * A key including a space must be quoted. `labels."a key"`.
        #
        #     Some examples:
        #
        #       * `endpoint=1`
        #       * `displayName="myDisplayName"`
        #       * `labels.myKey="myValue"`
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. The standard list page size.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. The standard list page token.
        #     Typically obtained via
        #     {::Google::Cloud::AIPlatform::V1::ListEndpointsResponse#next_page_token ListEndpointsResponse.next_page_token}
        #     of the previous
        #     {::Google::Cloud::AIPlatform::V1::EndpointService::Client#list_endpoints EndpointService.ListEndpoints}
        #     call.
        # @!attribute [rw] read_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Optional. Mask specifying which fields to read.
        # @!attribute [rw] order_by
        #   @return [::String]
        #     A comma-separated list of fields to order by, sorted in ascending order.
        #     Use "desc" after a field name for descending.
        #     Supported fields:
        #
        #       * `display_name`
        #       * `create_time`
        #       * `update_time`
        #
        #     Example: `display_name, create_time desc`.
        class ListEndpointsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for
        # {::Google::Cloud::AIPlatform::V1::EndpointService::Client#list_endpoints EndpointService.ListEndpoints}.
        # @!attribute [rw] endpoints
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::Endpoint>]
        #     List of Endpoints in the requested page.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token to retrieve the next page of results.
        #     Pass to
        #     {::Google::Cloud::AIPlatform::V1::ListEndpointsRequest#page_token ListEndpointsRequest.page_token}
        #     to obtain that page.
        class ListEndpointsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::EndpointService::Client#update_endpoint EndpointService.UpdateEndpoint}.
        # @!attribute [rw] endpoint
        #   @return [::Google::Cloud::AIPlatform::V1::Endpoint]
        #     Required. The Endpoint which replaces the resource on the server.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Required. The update mask applies to the resource. See
        #     {::Google::Protobuf::FieldMask google.protobuf.FieldMask}.
        class UpdateEndpointRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::EndpointService::Client#delete_endpoint EndpointService.DeleteEndpoint}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the Endpoint resource to be deleted.
        #     Format:
        #     `projects/{project}/locations/{location}/endpoints/{endpoint}`
        class DeleteEndpointRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::EndpointService::Client#deploy_model EndpointService.DeployModel}.
        # @!attribute [rw] endpoint
        #   @return [::String]
        #     Required. The name of the Endpoint resource into which to deploy a Model.
        #     Format:
        #     `projects/{project}/locations/{location}/endpoints/{endpoint}`
        # @!attribute [rw] deployed_model
        #   @return [::Google::Cloud::AIPlatform::V1::DeployedModel]
        #     Required. The DeployedModel to be created within the Endpoint. Note that
        #     {::Google::Cloud::AIPlatform::V1::Endpoint#traffic_split Endpoint.traffic_split}
        #     must be updated for the DeployedModel to start receiving traffic, either as
        #     part of this call, or via
        #     {::Google::Cloud::AIPlatform::V1::EndpointService::Client#update_endpoint EndpointService.UpdateEndpoint}.
        # @!attribute [rw] traffic_split
        #   @return [::Google::Protobuf::Map{::String => ::Integer}]
        #     A map from a DeployedModel's ID to the percentage of this Endpoint's
        #     traffic that should be forwarded to that DeployedModel.
        #
        #     If this field is non-empty, then the Endpoint's
        #     {::Google::Cloud::AIPlatform::V1::Endpoint#traffic_split traffic_split} will be
        #     overwritten with it. To refer to the ID of the just being deployed Model, a
        #     "0" should be used, and the actual ID of the new DeployedModel will be
        #     filled in its place by this method. The traffic percentage values must add
        #     up to 100.
        #
        #     If this field is empty, then the Endpoint's
        #     {::Google::Cloud::AIPlatform::V1::Endpoint#traffic_split traffic_split} is not
        #     updated.
        class DeployModelRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::Integer]
          class TrafficSplitEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Response message for
        # {::Google::Cloud::AIPlatform::V1::EndpointService::Client#deploy_model EndpointService.DeployModel}.
        # @!attribute [rw] deployed_model
        #   @return [::Google::Cloud::AIPlatform::V1::DeployedModel]
        #     The DeployedModel that had been deployed in the Endpoint.
        class DeployModelResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Runtime operation information for
        # {::Google::Cloud::AIPlatform::V1::EndpointService::Client#deploy_model EndpointService.DeployModel}.
        # @!attribute [rw] generic_metadata
        #   @return [::Google::Cloud::AIPlatform::V1::GenericOperationMetadata]
        #     The operation generic information.
        class DeployModelOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::EndpointService::Client#undeploy_model EndpointService.UndeployModel}.
        # @!attribute [rw] endpoint
        #   @return [::String]
        #     Required. The name of the Endpoint resource from which to undeploy a Model.
        #     Format:
        #     `projects/{project}/locations/{location}/endpoints/{endpoint}`
        # @!attribute [rw] deployed_model_id
        #   @return [::String]
        #     Required. The ID of the DeployedModel to be undeployed from the Endpoint.
        # @!attribute [rw] traffic_split
        #   @return [::Google::Protobuf::Map{::String => ::Integer}]
        #     If this field is provided, then the Endpoint's
        #     {::Google::Cloud::AIPlatform::V1::Endpoint#traffic_split traffic_split} will be
        #     overwritten with it. If last DeployedModel is being undeployed from the
        #     Endpoint, the [Endpoint.traffic_split] will always end up empty when this
        #     call returns. A DeployedModel will be successfully undeployed only if it
        #     doesn't have any traffic assigned to it when this method executes, or if
        #     this field unassigns any traffic to it.
        class UndeployModelRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::Integer]
          class TrafficSplitEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Response message for
        # {::Google::Cloud::AIPlatform::V1::EndpointService::Client#undeploy_model EndpointService.UndeployModel}.
        class UndeployModelResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Runtime operation information for
        # {::Google::Cloud::AIPlatform::V1::EndpointService::Client#undeploy_model EndpointService.UndeployModel}.
        # @!attribute [rw] generic_metadata
        #   @return [::Google::Cloud::AIPlatform::V1::GenericOperationMetadata]
        #     The operation generic information.
        class UndeployModelOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::EndpointService::Client#mutate_deployed_model EndpointService.MutateDeployedModel}.
        # @!attribute [rw] endpoint
        #   @return [::String]
        #     Required. The name of the Endpoint resource into which to mutate a
        #     DeployedModel. Format:
        #     `projects/{project}/locations/{location}/endpoints/{endpoint}`
        # @!attribute [rw] deployed_model
        #   @return [::Google::Cloud::AIPlatform::V1::DeployedModel]
        #     Required. The DeployedModel to be mutated within the Endpoint. Only the
        #     following fields can be mutated:
        #
        #     * `min_replica_count` in either
        #     {::Google::Cloud::AIPlatform::V1::DedicatedResources DedicatedResources} or
        #     {::Google::Cloud::AIPlatform::V1::AutomaticResources AutomaticResources}
        #     * `max_replica_count` in either
        #     {::Google::Cloud::AIPlatform::V1::DedicatedResources DedicatedResources} or
        #     {::Google::Cloud::AIPlatform::V1::AutomaticResources AutomaticResources}
        #     * {::Google::Cloud::AIPlatform::V1::DedicatedResources#autoscaling_metric_specs autoscaling_metric_specs}
        #     * `disable_container_logging` (v1 only)
        #     * `enable_container_logging` (v1beta1 only)
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Required. The update mask applies to the resource. See
        #     {::Google::Protobuf::FieldMask google.protobuf.FieldMask}.
        class MutateDeployedModelRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for
        # {::Google::Cloud::AIPlatform::V1::EndpointService::Client#mutate_deployed_model EndpointService.MutateDeployedModel}.
        # @!attribute [rw] deployed_model
        #   @return [::Google::Cloud::AIPlatform::V1::DeployedModel]
        #     The DeployedModel that's being mutated.
        class MutateDeployedModelResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Runtime operation information for
        # {::Google::Cloud::AIPlatform::V1::EndpointService::Client#mutate_deployed_model EndpointService.MutateDeployedModel}.
        # @!attribute [rw] generic_metadata
        #   @return [::Google::Cloud::AIPlatform::V1::GenericOperationMetadata]
        #     The operation generic information.
        class MutateDeployedModelOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
