#!/bin/bash

# Demo Projection Expression
aws dynamodb scan --table-name UserPosts --projection-expression "user_id, content"

# Demo Filter Expression
aws dynamodb scan --table-name UserPosts --filter-expression "user_id = :u" --expression-attribute-values '{":u": {"S":"john123"}}'

# Page Size demo: will do 1 API call if you have 3 Items
aws dynamodb scan --table-name UserPosts

# Will do 3 API calls if you have 3 Items
aws dynamodb scan --table-name UserPosts --page-size 1

# Max Item demo:
aws dynamodb scan --table-name UserPosts --max-items 1

# Fetch the next item
aws dynamodb scan --table-name UserPosts --max-items 1 --starting-token ...