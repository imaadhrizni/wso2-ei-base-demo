import ballerina/http;
import ballerina/log;


service endpointTwo on new http:Listener(9092) {

    @http:ResourceConfig {
        methods: ["POST"],
        path: "/"
    }
    resource function postCompanyRequest(http:Caller caller, http:Request req) {
        log:printInfo("HIT API 2");
        http:Response response = new;

        // logic can be added here
        json res = {"responseMsg": "Endpoint two was called successfully"};

        // Set the JSON payload in the outgoing response message.
        response.setJsonPayload(res);
        response.statusCode = 200;

        // Send response to the client.
        var result = caller->respond(<@untainted>response);
        if (result is error) {
            log:printError("Error sending response", result);
        }
    }
}
