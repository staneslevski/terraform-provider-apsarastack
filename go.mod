module github.com/aliyun/terraform-provider-apsarastack

go 1.14

require (
	github.com/aliyun/alibaba-cloud-sdk-go v1.61.514
	github.com/aliyun/aliyun-log-go-sdk v0.1.12
	github.com/aliyun/aliyun-oss-go-sdk v2.1.4+incompatible
	github.com/aliyun/fc-go-sdk v0.0.0-20200619091938-0882be48e49f
	github.com/denverdino/aliyungo v0.0.0-20200902071702-b5d3e9ff6492
	github.com/google/uuid v1.1.2
	github.com/gregjones/httpcache v0.0.0-20190611155906-901d90724c79 // indirect
	github.com/hashicorp/go-uuid v1.0.1
	github.com/hashicorp/terraform v0.13.3
	//github.com/hashicorp/terraform v0.13.2 // indirect
	github.com/hashicorp/terraform-plugin-sdk v1.15.0
	github.com/jmespath/go-jmespath v0.3.0
	github.com/mitchellh/go-homedir v1.1.0
	golang.org/x/tools v0.0.0-20200929223013-bf155c11ec6f // indirect
	k8s.io/api v0.0.0-20191114100352-16d7abae0d2a
	k8s.io/apimachinery v0.0.0-20191028221656-72ed19daf4bb
	k8s.io/client-go v11.0.0+incompatible
	k8s.io/klog v1.0.0 // indirect
)

replace k8s.io/client-go => k8s.io/client-go v0.0.0-20191114101535-6c5935290e33
