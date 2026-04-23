ARG ROS_DISTRO=jazzy
ARG BASE_IMAGE=ros:${ROS_DISTRO}-ros-base

FROM ${BASE_IMAGE}

LABEL org.opencontainers.image.url wy_website.com
LABEL org.opencontainers.image.authors Thibault Poignonec <thibault.poignonec@gmail.com>
LABEL org.opencontainers.image.title Test for docker deployment.
LABEL org.opencontainers.image.description \
    Simple test for docker deployment. \
    Try multi-line description.

RUN apt-get update && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends \
        git