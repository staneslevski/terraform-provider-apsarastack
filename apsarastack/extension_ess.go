package apsarastack

const UserId = "userId"
const ScalingGroup = "scaling_group"

type ScalingRuleType string

const (
	SimpleScalingRule = ScalingRuleType("SimpleScalingRule")
)

type BatchSize int

type MaxItems int

const (
	MaxScalingConfigurationInstanceTypes = MaxItems(10)
)
