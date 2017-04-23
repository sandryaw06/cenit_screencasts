

# Generate an screncast with a presentation.json

```batch
cd scripts
```

## image + audio => video

```batch
ruby ./image_and_audio_to_video.rb "general/thanks"
```

This script assume that has

imput:

image_path = "../images/general/thanks.png"
audio_path = "../audios/general/thanks.mp3"

output:

video_path = "../videos/general/thanks.mpeg"


## Generate and screencast

```batch
ruby ./render_screencast.rb "cenit_and_api_econnomy"
```

to check the output go to:

```batch
cd ../output
```

screencast.json schema

```json
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
    "sequence": {
      "type": "string",
      "items": {
        "type": "string",
    }
  }
```


```json
{
  "title": "Cenit IO and API Econnomy",
  "file_name": "cenit_and_api_econnomy",
  "description": "The creation of new services using existing API’s is usually a nightmare. Cenit IO, aims to fill that gap to make easy for developers to consume and compose new API’s from existing ones.",
  "tags": "API Econnomy, Cenit IO, Workflow Orchestration API",
  "sequence": [
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
