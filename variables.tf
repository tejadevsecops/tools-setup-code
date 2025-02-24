variable "zone_id" {
  default = "Z10165773L4FEVYHDJOSY"
}
variable "domain_name" {
  default = "tejadevopsb81.icu"
}

variable "tools" {
  default = {
    vault = {
      port = {
          vault_port = 8200
      }
      volume_size = 20
      instance_type = "t3.small"
      policy_list = ["ec2:DescribeKeyPairs"]
    }

    github-runner = {
      port = {}
      volume_size = 50
      instance_type = "t3.small"
      policy_list = ["*"]
    }

    elasticsearch = {
      port = {
      elasticsearch = 9200
      nginx         = 80
      logstash      = 5044
    }
      volume_size   = 70
      instance_type = "r6idn.large"
      policy_list = []
    }

    sonarqube = {
      port          = {
        sonarqube  = 9000
      }
      volume_size   = 20
      instance_type = "t3.large"
      policy_list = ["*"]
    }
  }
}