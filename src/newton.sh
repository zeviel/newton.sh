#!/bin/bash

api="https://newton.vercel.app/api/v2"
user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36"

function get_operation_result() {
    # 1 - operation: (string): <operation>
    # 2 - expression: (string): <expression>
    curl --request GET \
        --url "$api/$1/$2" \
        --user-agent "$user_agent" \
        --header "content-type: application/json"
}
