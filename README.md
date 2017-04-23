

Define a presentation.json and generate the new video.

```batch
cd scripts
```

```batch
ruby ./render.rb "cenit_and_api_econnomy"
```

to check the output go to:

```batch
cd ../output
```

screencast.json schema

```Json
  {
    "$schema": "http://json-schema.org/schema#",
    "title": {
      "type": "string"
    },
    "file_name": {
      "type": "string"
    },
    "description": {
      "type": "string"
    },
    "tags": {
      "type": "string",
      "pattern": "[^,\s][^\,]*[^,\s]*"
    },
    "secuence": {
      "type": "string",
      "items": {
        "type": "string",
    }
  }
```


```Json
{
  "title": "Cenit IO and API Econnomy",
  "file_name": "cenit_and_api_econnomy",
  "description": "The creation of new services using existing API’s is usually a nightmare. Cenit IO, aims to fill that gap to make easy for developers to consume and compose new API’s from existing ones.",
  "tags": "API Econnomy, Cenit IO, Workflow Orchestration API",
  "secuence": [
    "general/what_is_cenit",
    "cenit_and_api_formal_def/challenge_api_econnomy",
    "cenit_and_api_formal_def/why_formal_api_def",
    "cenit_and_api_formal_def/machine_readable_def",
    "cenit_and_api_formal_def/existing_formal_def",
    "cenit_and_api_formal_def/discovering_formal_def",
    "cenit_and_api_formal_def/apis_guru",
    "cenit_and_api_formal_def/swagger_in_cenit",
    "cenit_and_api_formal_def/cenit_concepts_are_superset_of_formal_api_def",
    "general/key_concepts_in_cenit",
    "common_integration_scenarios/multi_channel_sales",
    "common_integration_scenarios/third_party_logistic",
    "common_integration_scenarios/accounting_and_erp",
    "common_integration_scenarios/communications",
    "real_multichannel_use_case/real_multichannel_use_case",
    "real_multichannel_use_case/fancy_marketplace_to_cenit",
    "real_multichannel_use_case/fancy_order_to_shipments_in_cenit",
    "real_multichannel_use_case/orders_from_diferent_marketplace_to_cenit",
    "real_multichannel_use_case/marketplace_orders_to_shipments_in_cenit",
    "real_multichannel_use_case/shipment_cenit_to_shipstation_shipment",
    "real_multichannel_use_case/update_shipment_workflow_from_shipstaion_to_marketplaces",
    "general/cenit_conclusion",
    "general/thanks"
  ]
}
```


basic command

video + audio => video

```batch
ffmpeg -loop 1 -i images/001.png -i audios/001.mp3 -shortest videos/001.mpeg
```

video_1 + video_2 + ... + video_n => video

```batch
ffmpeg -i concat:"001.mpeg|002.mpeg|003.mpeg" output.mpeg
```
