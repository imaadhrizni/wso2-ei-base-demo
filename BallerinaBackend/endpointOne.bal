import ballerina/http;
import ballerina/log;


service endpointOne on new http:Listener(9091) {

    @http:ResourceConfig {
        methods: ["GET"],
        path: "/{emailId}"
    }
    resource function getCompanyInfo(http:Caller caller, http:Request req, string emailId) {
        log:printInfo("HIT:  " + emailId);
        http:Response response = new;

        // logic can be added here
        json res = "ABC123";

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
