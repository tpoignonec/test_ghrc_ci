ARG ROS_DISTRO=jazzy
ARG BASE_IMAGE=ros:${ROS_DISTRO}-ros-base

FROM ${BASE_IMAGE}

RUN apt-get update && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends \
        git