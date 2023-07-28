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
        # {::Google::Cloud::AIPlatform::V1::PredictionService::Client#predict PredictionService.Predict}.
        # @!attribute [rw] endpoint
        #   @return [::String]
        #     Required. The name of the Endpoint requested to serve the prediction.
        #     Format:
        #     `projects/{project}/locations/{location}/endpoints/{endpoint}`
        # @!attribute [rw] instances
        #   @return [::Array<::Google::Protobuf::Value>]
        #     Required. The instances that are the input to the prediction call.
        #     A DeployedModel may have an upper limit on the number of instances it
        #     supports per request, and when it is exceeded the prediction call errors
        #     in case of AutoML Models, or, in case of customer created Models, the
        #     behaviour is as documented by that Model.
        #     The schema of any single instance may be specified via Endpoint's
        #     DeployedModels' [Model's][google.cloud.aiplatform.v1.DeployedModel.model]
        #     [PredictSchemata's][google.cloud.aiplatform.v1.Model.predict_schemata]
        #     {::Google::Cloud::AIPlatform::V1::PredictSchemata#instance_schema_uri instance_schema_uri}.
        # @!attribute [rw] parameters
        #   @return [::Google::Protobuf::Value]
        #     The parameters that govern the prediction. The schema of the parameters may
        #     be specified via Endpoint's DeployedModels' [Model's
        #     ][google.cloud.aiplatform.v1.DeployedModel.model]
        #     [PredictSchemata's][google.cloud.aiplatform.v1.Model.predict_schemata]
        #     {::Google::Cloud::AIPlatform::V1::PredictSchemata#parameters_schema_uri parameters_schema_uri}.
        class PredictRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for
        # {::Google::Cloud::AIPlatform::V1::PredictionService::Client#predict PredictionService.Predict}.
        # @!attribute [rw] predictions
        #   @return [::Array<::Google::Protobuf::Value>]
        #     The predictions that are the output of the predictions call.
        #     The schema of any single prediction may be specified via Endpoint's
        #     DeployedModels' [Model's ][google.cloud.aiplatform.v1.DeployedModel.model]
        #     [PredictSchemata's][google.cloud.aiplatform.v1.Model.predict_schemata]
        #     {::Google::Cloud::AIPlatform::V1::PredictSchemata#prediction_schema_uri prediction_schema_uri}.
        # @!attribute [rw] deployed_model_id
        #   @return [::String]
        #     ID of the Endpoint's DeployedModel that served this prediction.
        # @!attribute [r] model
        #   @return [::String]
        #     Output only. The resource name of the Model which is deployed as the
        #     DeployedModel that this prediction hits.
        # @!attribute [r] model_version_id
        #   @return [::String]
        #     Output only. The version ID of the Model which is deployed as the
        #     DeployedModel that this prediction hits.
        # @!attribute [r] model_display_name
        #   @return [::String]
        #     Output only. The [display
        #     name][google.cloud.aiplatform.v1.Model.display_name] of the Model which is
        #     deployed as the DeployedModel that this prediction hits.
        # @!attribute [r] metadata
        #   @return [::Google::Protobuf::Value]
        #     Output only. Request-level metadata returned by the model. The metadata
        #     type will be dependent upon the model implementation.
        class PredictResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::PredictionService::Client#raw_predict PredictionService.RawPredict}.
        # @!attribute [rw] endpoint
        #   @return [::String]
        #     Required. The name of the Endpoint requested to serve the prediction.
        #     Format:
        #     `projects/{project}/locations/{location}/endpoints/{endpoint}`
        # @!attribute [rw] http_body
        #   @return [::Google::Api::HttpBody]
        #     The prediction input. Supports HTTP headers and arbitrary data payload.
        #
        #     A {::Google::Cloud::AIPlatform::V1::DeployedModel DeployedModel} may have an
        #     upper limit on the number of instances it supports per request. When this
        #     limit it is exceeded for an AutoML model, the
        #     {::Google::Cloud::AIPlatform::V1::PredictionService::Client#raw_predict RawPredict}
        #     method returns an error. When this limit is exceeded for a custom-trained
        #     model, the behavior varies depending on the model.
        #
        #     You can specify the schema for each instance in the
        #     {::Google::Cloud::AIPlatform::V1::PredictSchemata#instance_schema_uri predict_schemata.instance_schema_uri}
        #     field when you create a {::Google::Cloud::AIPlatform::V1::Model Model}. This
        #     schema applies when you deploy the `Model` as a `DeployedModel` to an
        #     {::Google::Cloud::AIPlatform::V1::Endpoint Endpoint} and use the `RawPredict`
        #     method.
        class RawPredictRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # [PredictionService.StreamingPredict][google.cloud.aiplatform.v1.PredictionService.StreamingPredict].
        #
        # The first message must contain
        # {::Google::Cloud::AIPlatform::V1::StreamingPredictRequest#endpoint endpoint} field
        # and optionally [input][]. The subsequent messages must contain [input][].
        # @!attribute [rw] endpoint
        #   @return [::String]
        #     Required. The name of the Endpoint requested to serve the prediction.
        #     Format:
        #     `projects/{project}/locations/{location}/endpoints/{endpoint}`
        # @!attribute [rw] inputs
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::Tensor>]
        #     The prediction input.
        # @!attribute [rw] parameters
        #   @return [::Google::Cloud::AIPlatform::V1::Tensor]
        #     The parameters that govern the prediction.
        class StreamingPredictRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for
        # [PredictionService.StreamingPredict][google.cloud.aiplatform.v1.PredictionService.StreamingPredict].
        # @!attribute [rw] outputs
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::Tensor>]
        #     The prediction output.
        # @!attribute [rw] parameters
        #   @return [::Google::Cloud::AIPlatform::V1::Tensor]
        #     The parameters that govern the prediction.
        class StreamingPredictResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::PredictionService::Client#explain PredictionService.Explain}.
        # @!attribute [rw] endpoint
        #   @return [::String]
        #     Required. The name of the Endpoint requested to serve the explanation.
        #     Format:
        #     `projects/{project}/locations/{location}/endpoints/{endpoint}`
        # @!attribute [rw] instances
        #   @return [::Array<::Google::Protobuf::Value>]
        #     Required. The instances that are the input to the explanation call.
        #     A DeployedModel may have an upper limit on the number of instances it
        #     supports per request, and when it is exceeded the explanation call errors
        #     in case of AutoML Models, or, in case of customer created Models, the
        #     behaviour is as documented by that Model.
        #     The schema of any single instance may be specified via Endpoint's
        #     DeployedModels' [Model's][google.cloud.aiplatform.v1.DeployedModel.model]
        #     [PredictSchemata's][google.cloud.aiplatform.v1.Model.predict_schemata]
        #     {::Google::Cloud::AIPlatform::V1::PredictSchemata#instance_schema_uri instance_schema_uri}.
        # @!attribute [rw] parameters
        #   @return [::Google::Protobuf::Value]
        #     The parameters that govern the prediction. The schema of the parameters may
        #     be specified via Endpoint's DeployedModels' [Model's
        #     ][google.cloud.aiplatform.v1.DeployedModel.model]
        #     [PredictSchemata's][google.cloud.aiplatform.v1.Model.predict_schemata]
        #     {::Google::Cloud::AIPlatform::V1::PredictSchemata#parameters_schema_uri parameters_schema_uri}.
        # @!attribute [rw] explanation_spec_override
        #   @return [::Google::Cloud::AIPlatform::V1::ExplanationSpecOverride]
        #     If specified, overrides the
        #     {::Google::Cloud::AIPlatform::V1::DeployedModel#explanation_spec explanation_spec}
        #     of the DeployedModel. Can be used for explaining prediction results with
        #     different configurations, such as:
        #      - Explaining top-5 predictions results as opposed to top-1;
        #      - Increasing path count or step count of the attribution methods to reduce
        #        approximate errors;
        #      - Using different baselines for explaining the prediction results.
        # @!attribute [rw] deployed_model_id
        #   @return [::String]
        #     If specified, this ExplainRequest will be served by the chosen
        #     DeployedModel, overriding
        #     {::Google::Cloud::AIPlatform::V1::Endpoint#traffic_split Endpoint.traffic_split}.
        class ExplainRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for
        # {::Google::Cloud::AIPlatform::V1::PredictionService::Client#explain PredictionService.Explain}.
        # @!attribute [rw] explanations
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::Explanation>]
        #     The explanations of the Model's
        #     {::Google::Cloud::AIPlatform::V1::PredictResponse#predictions PredictResponse.predictions}.
        #
        #     It has the same number of elements as
        #     {::Google::Cloud::AIPlatform::V1::ExplainRequest#instances instances} to be
        #     explained.
        # @!attribute [rw] deployed_model_id
        #   @return [::String]
        #     ID of the Endpoint's DeployedModel that served this explanation.
        # @!attribute [rw] predictions
        #   @return [::Array<::Google::Protobuf::Value>]
        #     The predictions that are the output of the predictions call.
        #     Same as
        #     {::Google::Cloud::AIPlatform::V1::PredictResponse#predictions PredictResponse.predictions}.
        class ExplainResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
