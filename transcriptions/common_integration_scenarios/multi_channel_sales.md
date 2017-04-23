With only these concepts we can manage a wide different practical integrations

In this example for Multi Channels Sales, we can “Consolidate & Process orders on Cenit IO Platform.”

Every 20 minutes could be triggered a Flow that takes the orders from each Store and persist and manage the data
in Cenit IO

* Object should be Order
* Event is this case is an Scheduler Event
* And webhooks is a get_orders that represents a HTTP GET action.

In this Second example the same pattern applies with the 3 concepts: Object, Event and Webhook

The idea is to synchronize Stock level across all the stores.

* Object should be Inventory
* Event in this case is a Data event that is triggered when an inventory object in Cenit IO change the status to ‘updated’
* And webhooks is set_inventory that represents a HTTP POST call.
