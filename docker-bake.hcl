group "default" {
  targets = ["image-local"]
}

// Special target: https://github.com/docker/metadata-action#bake-definition
target "docker-metadata-action" {
  tags = ["registry:local"]
}

target "binary" {
  target = "binary"
  output = ["./bin"]
}

target "artifact" {
  target = "artifact"
  output = ["./bin"]
}

target "artifact-all" {
  inherits = ["artifact"]
  platforms = [
    "linux/amd64",
  ]
}

// Special target: https://github.com/docker/metadata-action#bake-definition
target "docker-metadata-action" {
  tags = ["registry:local"]
}

target "image" {
  inherits = ["docker-metadata-action"]
}

target "image-local" {
  inherits = ["image"]
  output = ["type=docker"]
}

target "image-all" {
  inherits = ["image"]
  platforms = [
    "linux/amd64",
  ]
}
