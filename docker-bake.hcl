variable "REGISTRY" {
    default = "docker.io"
}

variable "REGISTRY_USER" {
    default = "ashleykza"
}

variable "APP" {
    default = "ghost"
}

variable "RELEASE" {
    default = "1.0.0"
}

variable "CU_VERSION" {
    default = "118"
}

target "default" {
    dockerfile = "Dockerfile"
    tags = ["${REGISTRY}/${REGISTRY_USER}/${APP}:${RELEASE}"]
    args = {
        RELEASE = "${RELEASE}"
        RUNPODCTL_VERSION = "v1.14.2"
    }
}
