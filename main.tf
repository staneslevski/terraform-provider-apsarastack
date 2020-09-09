# Configure the ApsaraStack Provider
provider "apsarastack" {
access_key = "LTAI4FkEXf7mcGgcvJZbbK5z"
secret_key = "UVYfsunoWhs7V1YqDG49VvOiK7sAGW"
region     = "cn-hangzhou"
}

data "apsarastack_ess_scalingrules" "scalingrules_ds" {
 scaling_group_id = "asg-bp1dblxm94yxbf88w3na"
ids              = ["scaling_rule_id1", "scaling_rule_id2"]
name_regex       = "scaling_rule_name"
}

output "first_scaling_rule" {
 value = data.apsarastack_ess_scalingrules.scalingrules_ds
}



#Resource ScalingRules
resource "apsarastack_ess_scalingrule" "scale1" {
 scaling_group_id = "asg-bp1dblxm94yxbf88w3na"
 adjustment_type  = "TotalCapacity"
 adjustment_value = 1
}

