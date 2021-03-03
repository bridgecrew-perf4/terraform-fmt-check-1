#!/bin/sh -l

echo "terraform fmt -check -diff -recursive $1"
terraform fmt -check -diff -recursive $1
