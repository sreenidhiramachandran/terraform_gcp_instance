provider "google" {
  project     = "my-project"
  credentials = file("./path/to/key.json")
  region      = "us-east1"
  zone        = "us-east1-b"
}
