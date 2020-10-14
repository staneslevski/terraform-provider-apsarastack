provider "apsarastack" {
    access_key = "LrktGYnyFXTROG0W"
    secret_key = "ThoQcBoeTP4MbO21JaqaABHUGAfT5F"
    region =  "cn-qingdao-env66-d01"
    insecure = true 
    proxy = "http://100.67.154.166:56601"
    domain ="inter.env66.shuguang.com"
}
variable "name" {
  default = "testcreatehttplistener"
}

variable "ip_version" {
  default = "ipv4"
}
resource "apsarastack_slb" "default" {
  name                 = "tf-testAccSlbListenerHttp"
//  internet_charge_type = "PayByTraffic"
//  internet             = true
}

resource "apsarastack_slb_listener" "default" {
  load_balancer_id          = apsarastack_slb.default.id
  backend_port              = 80
  frontend_port             = 80
  protocol                  = "http"
  bandwidth                 = 10
  sticky_session            = "on"
  sticky_session_type       = "insert"
  cookie_timeout            = 86400
  cookie                    = "testslblistenercookie"
  health_check              = "on"
  health_check_domain       = "ali.com"
  health_check_uri          = "/cons"
  health_check_connect_port = 20
  healthy_threshold         = 8
  unhealthy_threshold       = 8
  health_check_timeout      = 8
  health_check_interval     = 5
  health_check_http_code    = "http_2xx,http_3xx"
  x_forwarded_for {
    retrive_slb_ip = true
    retrive_slb_id = true
  }
  server_certificate_id= "1262302482727553_17526d57fbb_-409222138_1100538907"
//  request_timeout = 80
//  idle_timeout    = 30
}
//
/*
resource "apsarastack_slb_acl" "default" {
  name       = var.name
  ip_version = var.ip_version
  entry_list {
    entry   = "10.10.10.0/24"
    comment = "first"
  }
  entry_list {
    entry   = "168.10.10.0/24"
    comment = "second"
  }
}*/
/*
resource "apsarastack_security_group" "default" {
      name   = "TESTING"
      vpc_id = "vpc-9fx2excku86btyr6xxj2l"
}
resource "apsarastack_security_group_rule" "default" {
    type = "ingress"
    ip_protocol = "tcp"
    nic_type = "intranet"
    policy = "accept"
    port_range = "22/22"
    priority = 1
    security_group_id = "${apsarastack_security_group.default.id}"
    cidr_ip = "172.16.0.0/24"
192.168.0.0/16
}	
*/