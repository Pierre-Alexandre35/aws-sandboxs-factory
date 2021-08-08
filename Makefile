all:

up: init plan apply

down: init destroy

format: terraform fmt -check