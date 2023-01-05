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
    module GkeMultiCloud
      module V1
        # Request message for `AttachedClusters.GenerateAttachedClusterInstallManifest`
        # method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent location where this
        #     {::Google::Cloud::GkeMultiCloud::V1::AttachedCluster AttachedCluster} resource
        #     will be created.
        #
        #     Location names are formatted as `projects/<project-id>/locations/<region>`.
        #
        #     See [Resource Names](https://cloud.google.com/apis/design/resource_names)
        #     for more details on Google Cloud resource names.
        # @!attribute [rw] attached_cluster_id
        #   @return [::String]
        #     Required. A client provided ID the resource. Must be unique within the
        #     parent resource.
        #
        #     The provided ID will be part of the
        #     {::Google::Cloud::GkeMultiCloud::V1::AttachedCluster AttachedCluster} resource
        #     name formatted as
        #     `projects/<project-id>/locations/<region>/attachedClusters/<cluster-id>`.
        #
        #     Valid characters are `/[a-z][0-9]-/`. Cannot be longer than 63 characters.
        #
        #     When generating an install manifest for importing an existing Membership
        #     resource, the attached_cluster_id field must be the Membership id.
        #
        #     Membership names are formatted as `resource name formatted as
        #     `projects/<project-id>/locations/<region>/memberships/<membership-id>`.
        # @!attribute [rw] platform_version
        #   @return [::String]
        #     Required. The platform version for the cluster (e.g. `1.19.0-gke.1000`).
        #
        #     You can list all supported versions on a given Google Cloud region by
        #     calling
        #     {::Google::Cloud::GkeMultiCloud::V1::AttachedClusters::Client#get_attached_server_config GetAttachedServerConfig}.
        class GenerateAttachedClusterInstallManifestRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for
        # `AttachedClusters.GenerateAttachedClusterInstallManifest` method.
        # @!attribute [rw] manifest
        #   @return [::String]
        #     A set of Kubernetes resources (in YAML format) to be applied
        #     to the cluster to be attached.
        class GenerateAttachedClusterInstallManifestResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for `AttachedClusters.CreateAttachedCluster` method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent location where this
        #     {::Google::Cloud::GkeMultiCloud::V1::AttachedCluster AttachedCluster} resource
        #     will be created.
        #
        #     Location names are formatted as `projects/<project-id>/locations/<region>`.
        #
        #     See [Resource Names](https://cloud.google.com/apis/design/resource_names)
        #     for more details on Google Cloud resource names.
        # @!attribute [rw] attached_cluster
        #   @return [::Google::Cloud::GkeMultiCloud::V1::AttachedCluster]
        #     Required. The specification of the
        #     {::Google::Cloud::GkeMultiCloud::V1::AttachedCluster AttachedCluster} to create.
        # @!attribute [rw] attached_cluster_id
        #   @return [::String]
        #     Required. A client provided ID the resource. Must be unique within the
        #     parent resource.
        #
        #     The provided ID will be part of the
        #     {::Google::Cloud::GkeMultiCloud::V1::AttachedCluster AttachedCluster} resource
        #     name formatted as
        #     `projects/<project-id>/locations/<region>/attachedClusters/<cluster-id>`.
        #
        #     Valid characters are `/[a-z][0-9]-/`. Cannot be longer than 63 characters.
        # @!attribute [rw] validate_only
        #   @return [::Boolean]
        #     If set, only validate the request, but do not actually create the cluster.
        class CreateAttachedClusterRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for `AttachedClusters.ImportAttachedCluster` method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent location where this
        #     {::Google::Cloud::GkeMultiCloud::V1::AttachedCluster AttachedCluster} resource
        #     will be created.
        #
        #     Location names are formatted as `projects/<project-id>/locations/<region>`.
        #
        #     See [Resource Names](https://cloud.google.com/apis/design/resource_names)
        #     for more details on Google Cloud resource names.
        # @!attribute [rw] validate_only
        #   @return [::Boolean]
        #     If set, only validate the request, but do not actually import the cluster.
        # @!attribute [rw] fleet_membership
        #   @return [::String]
        #     Required. The name of the fleet membership resource to import.
        # @!attribute [rw] platform_version
        #   @return [::String]
        #     Required. The platform version for the cluster (e.g. `1.19.0-gke.1000`).
        #
        #     You can list all supported versions on a given Google Cloud region by
        #     calling
        #     {::Google::Cloud::GkeMultiCloud::V1::AttachedClusters::Client#get_attached_server_config GetAttachedServerConfig}.
        # @!attribute [rw] distribution
        #   @return [::String]
        #     Required. The Kubernetes distribution of the underlying attached cluster.
        #
        #     Supported values: ["eks", "aks"].
        class ImportAttachedClusterRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for `AttachedClusters.UpdateAttachedCluster` method.
        # @!attribute [rw] attached_cluster
        #   @return [::Google::Cloud::GkeMultiCloud::V1::AttachedCluster]
        #     Required. The
        #     {::Google::Cloud::GkeMultiCloud::V1::AttachedCluster AttachedCluster} resource
        #     to update.
        # @!attribute [rw] validate_only
        #   @return [::Boolean]
        #     If set, only validate the request, but do not actually update the cluster.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Required. Mask of fields to update. At least one path must be supplied in
        #     this field. The elements of the repeated paths field can only include these
        #     fields from
        #     {::Google::Cloud::GkeMultiCloud::V1::AttachedCluster AttachedCluster}:
        #
        #      *   `description`.
        #      *   `annotations`.
        #      *   `platform_version`.
        #      *   `authorization.admin_users`.
        #      *   `logging_config.component_config.enable_components`.
        #      *   `monitoring_config.managed_prometheus_config.enabled`.
        class UpdateAttachedClusterRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for `AttachedClusters.GetAttachedCluster` method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the
        #     {::Google::Cloud::GkeMultiCloud::V1::AttachedCluster AttachedCluster} resource
        #     to describe.
        #
        #     `AttachedCluster` names are formatted as
        #     `projects/<project-id>/locations/<region>/attachedClusters/<cluster-id>`.
        #
        #     See [Resource Names](https://cloud.google.com/apis/design/resource_names)
        #     for more details on GCP resource names.
        class GetAttachedClusterRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for `AttachedClusters.ListAttachedClusters` method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent location which owns this collection of
        #     {::Google::Cloud::GkeMultiCloud::V1::AttachedCluster AttachedCluster} resources.
        #
        #     Location names are formatted as `projects/<project-id>/locations/<region>`.
        #
        #     See [Resource Names](https://cloud.google.com/apis/design/resource_names)
        #     for more details on GCP resource names.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     The maximum number of items to return.
        #
        #     If not specified, a default value of 50 will be used by the service.
        #     Regardless of the pageSize value, the response can include a partial list
        #     and a caller should only rely on response's
        #     {::Google::Cloud::GkeMultiCloud::V1::ListAttachedClustersResponse#next_page_token nextPageToken}
        #     to determine if there are more instances left to be queried.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     The `nextPageToken` value returned from a previous
        #     {::Google::Cloud::GkeMultiCloud::V1::AttachedClusters::Client#list_attached_clusters attachedClusters.list}
        #     request, if any.
        class ListAttachedClustersRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for `AttachedClusters.ListAttachedClusters` method.
        # @!attribute [rw] attached_clusters
        #   @return [::Array<::Google::Cloud::GkeMultiCloud::V1::AttachedCluster>]
        #     A list of {::Google::Cloud::GkeMultiCloud::V1::AttachedCluster AttachedCluster}
        #     resources in the specified GCP project and region region.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     Token to retrieve the next page of results, or empty if there are no more
        #     results in the list.
        class ListAttachedClustersResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for `AttachedClusters.DeleteAttachedCluster` method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name the
        #     {::Google::Cloud::GkeMultiCloud::V1::AttachedCluster AttachedCluster} to delete.
        #
        #     `AttachedCluster` names are formatted as
        #     `projects/<project-id>/locations/<region>/attachedClusters/<cluster-id>`.
        #
        #     See [Resource Names](https://cloud.google.com/apis/design/resource_names)
        #     for more details on GCP resource names.
        # @!attribute [rw] validate_only
        #   @return [::Boolean]
        #     If set, only validate the request, but do not actually delete the resource.
        # @!attribute [rw] allow_missing
        #   @return [::Boolean]
        #     If set to true, and the
        #     {::Google::Cloud::GkeMultiCloud::V1::AttachedCluster AttachedCluster} resource
        #     is not found, the request will succeed but no action will be taken on the
        #     server and a completed {::Google::Longrunning::Operation Operation} will be
        #     returned.
        #
        #     Useful for idempotent deletion.
        # @!attribute [rw] ignore_errors
        #   @return [::Boolean]
        #     If set to true, the deletion of
        #     {::Google::Cloud::GkeMultiCloud::V1::AttachedCluster AttachedCluster} resource
        #     will succeed even if errors occur during deleting in cluster resources.
        #     Using this parameter may result in orphaned resources in the cluster.
        # @!attribute [rw] etag
        #   @return [::String]
        #     The current etag of the
        #     {::Google::Cloud::GkeMultiCloud::V1::AttachedCluster AttachedCluster}.
        #
        #     Allows clients to perform deletions through optimistic concurrency control.
        #
        #     If the provided etag does not match the current etag of the cluster,
        #     the request will fail and an ABORTED error will be returned.
        class DeleteAttachedClusterRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # GetAttachedServerConfigRequest gets the server config for attached
        # clusters.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the
        #     {::Google::Cloud::GkeMultiCloud::V1::AttachedServerConfig AttachedServerConfig}
        #     resource to describe.
        #
        #     `AttachedServerConfig` names are formatted as
        #     `projects/<project-id>/locations/<region>/attachedServerConfig`.
        #
        #     See [Resource Names](https://cloud.google.com/apis/design/resource_names)
        #     for more details on Google Cloud resource names.
        class GetAttachedServerConfigRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
