module "ptfe-es" {
  source = "../"
  bucket = "ptfe-external-svc"
  tags = {
    Name = "ptfe-external-services"
  }
  force_destroy = true
  region        = "eu-central-1"
  versioning    = true
}