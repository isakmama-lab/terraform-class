#  - Elastic Container Registry의 약자로 AWS에서 제공하는 **컨테이너 이미지 저장소** 서비스
#  - Docker Hub와 같은 Docker 컨테이너 이미지를 저장하는 데 사용
#  - IAM을 통해 권한 설정이 가능하고 기본적으로 암호화 저정되어 보안에 강함
#  - CI/CD 파이프라인에서 ECR을 활용하여 컨테이너 이미지를 자동으로 빌드하고 배포할 수 있음


resource "aws_ecr_repository" "terraform-ecr" {
  name                 = "terraform-ecr"
  image_tag_mutability = "IMMUTABLE"

  image_scanning_configuration {
    scan_on_push = false
  }
  tags = {
    Name = "terraform-ecr"
  }
}