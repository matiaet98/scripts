#!/bin/zsh

#git
ssh-keygen -t rsa -C arcules


# golang
go env -w GOPRIVATE="gitlab.com/arcules,bitbucket.org/arcus_bos"
