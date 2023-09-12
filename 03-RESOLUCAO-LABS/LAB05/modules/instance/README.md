## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_instance.web](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_instance_ami"></a> [instance\_ami](#input\_instance\_ami) | Instance ami | `string` | `"ami-024e6efaf93d85776"` | no |
| <a name="input_instance_name"></a> [instance\_name](#input\_instance\_name) | Instance Name | `string` | `"instancia"` | no |
| <a name="input_instance_size"></a> [instance\_size](#input\_instance\_size) | Instance Name | `string` | `"t2.micro"` | no |
| <a name="input_instance_subnet"></a> [instance\_subnet](#input\_instance\_subnet) | Instance subnet | `string` | n/a | yes |
| <a name="input_instance_zone"></a> [instance\_zone](#input\_instance\_zone) | Instance zone | `string` | n/a | yes |
| <a name="input_instances_sgs"></a> [instances\_sgs](#input\_instances\_sgs) | Instance security groups | `list(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_instance_id"></a> [instance\_id](#output\_instance\_id) | Instance ID |
| <a name="output_instance_private_ip"></a> [instance\_private\_ip](#output\_instance\_private\_ip) | Instance private ip |
| <a name="output_instance_public_ip"></a> [instance\_public\_ip](#output\_instance\_public\_ip) | Instance public ip |
