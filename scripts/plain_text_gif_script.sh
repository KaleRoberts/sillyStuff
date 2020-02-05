set max_images to 50 as number
set slack_url to "https://hooks.slack.com/services/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" as text

set json to "{\"blocks\": [{\"type\": \"section\", \"text\": {\"type\": \"mrkdwn\", \"text\": \"It is Jason O Clock\"}},{\"type\": \"image\",\"image_url\": \"https://raw.githubusercontent.com/KaleRoberts/sillyStuff/master/jason" & ((random number from 50 to max_images) as text) & ".gif\",\"alt_text\": \"Its Jason O Clock!\"}]}" as text

set curl_command to "curl -v -H 'Content-Type: application/json' --data '" & json & "' --proxy http://localhost:9999 " & slack_url
do shell script curl_command