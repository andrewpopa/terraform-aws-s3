module "ptfe-es" {
  source = "../"
  bucket = "ptfe-external-svc"
  tags = {
    Name = "ptfe-external-services"
  }
  force_destroy = true
  versioning    = true
}