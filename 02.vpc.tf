resource "aws_vpc" "terraform-vpc" {
  cidr_block           = "10.250.0.0/16" # 65553개
  enable_dns_support   = true            # DNS 확인 활성화
  enable_dns_hostnames = true            # DNS 호스트이름 활성화
  tags = {
    "Name" = "terraform-vpc"
  }
}
