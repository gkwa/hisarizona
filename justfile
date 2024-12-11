set shell := ["bash", "-uec"]

default:
    @just --list

deploy:
    terraform init
    terraform plan -out=tfplan
    terraform apply tfplan

fmt:
    terraform fmt -recursive .
    prettier --ignore-path=.prettierignore --config=.prettierrc.json --write .
    just --unstable --fmt
