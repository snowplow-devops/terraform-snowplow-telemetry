[![Release][release-image]][release] [![CI][ci-image]][ci] [![License][license-image]][license] [![Registry][registry-image]][registry]

# terraform-snowplow-telemetry

A Terraform module which tracks telemetry information back to Snowplow Analytics Ltd so that we can better understand how our community is leveraging the OSS Terraform modules we make available.  It is also responsible for generating the tracking tags and user-data scripts which are added to upstream application specific modules.

## Usage

This module uses a combination of the [Snowplow Terraform provider](https://registry.terraform.io/providers/snowplow-devops/snowplow/latest/docs) and [Snowplow Tracking CLI](https://github.com/snowplow/snowplow-tracking-cli) to achieve these telemetry goals.  Within the module itself we will track the state of the module itself and what state it is in.

For use outside of this module we produce a user-data script which tracks the state of the VM an application is running on with a startup, shutdown and heartbeat event (60 minute interval).

```hcl
module "telemetry" {
  source = "snowplow-devops/telemetry/snowplow"

  count = var.telemetry_enabled ? 1 : 0

  user_provided_id = var.user_provided_id
  cloud            = "AWS"
  region           = data.aws_region.current.name
  app_name         = var.app_name
  app_version      = var.app_version
  module_name      = var.module_name
  module_version   = var.module_version
}
```

_Note_: See the templates for the exact user-data that is executed.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | >= 3 |
| <a name="requirement_snowplow"></a> [snowplow](#requirement\_snowplow) | >= 0.4 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_random"></a> [random](#provider\_random) | >= 3 |
| <a name="provider_snowplow"></a> [snowplow](#provider\_snowplow) | >= 0.4 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [random_id.auto_generated_id](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/id) | resource |
| [snowplow_track_self_describing_event.telemetry](https://registry.terraform.io/providers/snowplow-devops/snowplow/latest/docs/resources/track_self_describing_event) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app_name"></a> [app\_name](#input\_app\_name) | The name of the application. | `string` | n/a | yes |
| <a name="input_app_version"></a> [app\_version](#input\_app\_version) | The version of the application (e.g. 1.0.0). | `string` | n/a | yes |
| <a name="input_cloud"></a> [cloud](#input\_cloud) | The cloud the services are running in. | `string` | n/a | yes |
| <a name="input_module_name"></a> [module\_name](#input\_module\_name) | The name of the terraform module. | `string` | n/a | yes |
| <a name="input_module_version"></a> [module\_version](#input\_module\_version) | The version of the terraform module (e.g. 1.0.0). | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | The region the services are running in. | `string` | n/a | yes |
| <a name="input_user_provided_id"></a> [user\_provided\_id](#input\_user\_provided\_id) | Optional ID provided by user as an input to each terraform module. Intended to tie events together across modules, infrastructure and apps when used consistently. | `string` | n/a | yes |
| <a name="input_app_name_override_1"></a> [app\_name\_override\_1](#input\_app\_name\_override\_1) | An application name override for modules that deploy N micro-services. | `string` | `""` | no |
| <a name="input_app_name_override_2"></a> [app\_name\_override\_2](#input\_app\_name\_override\_2) | An application name override for modules that deploy N micro-services. | `string` | `""` | no |
| <a name="input_app_name_override_3"></a> [app\_name\_override\_3](#input\_app\_name\_override\_3) | An application name override for modules that deploy N micro-services. | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_amazon_linux_2023_user_data"></a> [amazon\_linux\_2023\_user\_data](#output\_amazon\_linux\_2023\_user\_data) | User-data shell chunk for adding telemetry to an Amazon Linux 2023 server |
| <a name="output_amazon_linux_2023_user_data_1"></a> [amazon\_linux\_2023\_user\_data\_1](#output\_amazon\_linux\_2023\_user\_data\_1) | User-data shell chunk for adding telemetry to an Amazon Linux 2023 server |
| <a name="output_amazon_linux_2023_user_data_2"></a> [amazon\_linux\_2023\_user\_data\_2](#output\_amazon\_linux\_2023\_user\_data\_2) | User-data shell chunk for adding telemetry to an Amazon Linux 2023 server |
| <a name="output_amazon_linux_2023_user_data_3"></a> [amazon\_linux\_2023\_user\_data\_3](#output\_amazon\_linux\_2023\_user\_data\_3) | User-data shell chunk for adding telemetry to an Amazon Linux 2023 server |
| <a name="output_auto_generated_id"></a> [auto\_generated\_id](#output\_auto\_generated\_id) | The Snowplow OSS auto-generated ID for stitching together entities of the module being tracked |
| <a name="output_azurerm_ubuntu_22_04_user_data"></a> [azurerm\_ubuntu\_22\_04\_user\_data](#output\_azurerm\_ubuntu\_22\_04\_user\_data) | User-data shell chunk for adding telemetry to an Ubuntu 22.04 server |
| <a name="output_azurerm_ubuntu_22_04_user_data_1"></a> [azurerm\_ubuntu\_22\_04\_user\_data\_1](#output\_azurerm\_ubuntu\_22\_04\_user\_data\_1) | User-data shell chunk for adding telemetry to an Ubuntu 22.04 server |
| <a name="output_azurerm_ubuntu_22_04_user_data_2"></a> [azurerm\_ubuntu\_22\_04\_user\_data\_2](#output\_azurerm\_ubuntu\_22\_04\_user\_data\_2) | User-data shell chunk for adding telemetry to an Ubuntu 22.04 server |
| <a name="output_azurerm_ubuntu_22_04_user_data_3"></a> [azurerm\_ubuntu\_22\_04\_user\_data\_3](#output\_azurerm\_ubuntu\_22\_04\_user\_data\_3) | User-data shell chunk for adding telemetry to an Ubuntu 22.04 server |
| <a name="output_collector_uri"></a> [collector\_uri](#output\_collector\_uri) | The Snowplow OSS Collector URI to use in collection of telemetry details |
| <a name="output_gcp_ubuntu_24_04_user_data"></a> [gcp\_ubuntu\_24\_04\_user\_data](#output\_gcp\_ubuntu\_24\_04\_user\_data) | User-data shell chunk for adding telemetry to an Ubuntu 24.04 server |
| <a name="output_gcp_ubuntu_24_04_user_data_1"></a> [gcp\_ubuntu\_24\_04\_user\_data\_1](#output\_gcp\_ubuntu\_24\_04\_user\_data\_1) | User-data shell chunk for adding telemetry to an Ubuntu 24.04 server |
| <a name="output_gcp_ubuntu_24_04_user_data_2"></a> [gcp\_ubuntu\_24\_04\_user\_data\_2](#output\_gcp\_ubuntu\_24\_04\_user\_data\_2) | User-data shell chunk for adding telemetry to an Ubuntu 24.04 server |
| <a name="output_gcp_ubuntu_24_04_user_data_3"></a> [gcp\_ubuntu\_24\_04\_user\_data\_3](#output\_gcp\_ubuntu\_24\_04\_user\_data\_3) | User-data shell chunk for adding telemetry to an Ubuntu 24.04 server |
| <a name="output_id"></a> [id](#output\_id) | The id of the tracking resource |

# Copyright and license

The Terraform Snowplow Telemetry project is Copyright 2021-current Snowplow Analytics Ltd.

Licensed under the [Apache License, Version 2.0][license] (the "License");
you may not use this software except in compliance with the License.

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

[release]: https://github.com/snowplow-devops/terraform-snowplow-telemetry/releases/latest
[release-image]: https://img.shields.io/github/v/release/snowplow-devops/terraform-snowplow-telemetry

[ci]: https://github.com/snowplow-devops/terraform-snowplow-telemetry/actions?query=workflow%3Aci
[ci-image]: https://github.com/snowplow-devops/terraform-snowplow-telemetry/workflows/ci/badge.svg

[license]: https://www.apache.org/licenses/LICENSE-2.0
[license-image]: https://img.shields.io/badge/license-Apache--2-blue.svg?style=flat

[registry]: https://registry.terraform.io/modules/snowplow-devops/telemetry/snowplow/latest
[registry-image]: https://img.shields.io/static/v1?label=Terraform&message=Registry&color=7B42BC&logo=terraform
