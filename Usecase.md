Edgeware is a software and appliance vendor serving media and entertainment companies. I look after one of our product lines doing media stream ingest, recording and repackaging called “StreamBuilder”.

I am seeing an increasing requirement for workflow, integration and API extensions to our core products and I would like to assess whether there is a business case for embedding a product such as yours as part of our offer.

I can imagine 3-4 integration flows needing to be supported per end deployment, and a typical integration use case might be:

- Expose an API to receive an XML document
- Validate the document against a schema
- Extract key nodes and attributes from the document
- Transform and store in an internal data structure
- Call a second HTTP API passing some key data from the incoming XML
- Take the response from the second API; combine with the content from the first; and send to a third API to schedule a TV live event.
- If a step fails, pass to an operator workflow step to investigate, correct and resubmit.

That use case would run anything between 5-50 times per day, so the execution volumes would not be high in the first few scenarios at least.
