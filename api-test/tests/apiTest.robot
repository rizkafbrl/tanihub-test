*** Settings ***                                
Resource                        ../resources/importer.robot

*** Test Case ***
Vehicles Test for Air Destroyer Goliath
    [Documentation]             This test is to get Vehicles List from ghibliapi
    [Tags]                      ghibli-api
    # Get & Convert JSON to Dictionary
    ${payload}                  Get File                    api-test/resources/assertion.json
    ${param}                    Evaluate                    json.loads('''${payload}''')        json


    Create Session              get-first-vehicles                ${base_url}             verify=True
    ${response}=                Get Request                       get-first-vehicles            /vehicles/
    Log                          ${response.json()}
    Set Global Variable          ${response}
    apiResponse.Response Should Be                                    200                   OK
    apiResponse.Response Body Should Be Equals                        .id:contains("${param["airship_vehicle_data"]["id"]}")
    ...                                                               .name:contains("${param["airship_vehicle_data"]["name"]}")
    ...                                                               .description:contains("${param["airship_vehicle_data"]["description"]}")
    ...                                                               .vehicle_class:contains("${param["airship_vehicle_data"]["vehicle_class"]}")
    ...                                                               .length:contains("${param["airship_vehicle_data"]["length"]}")
    ...                                                               .pilot:contains("${param["airship_vehicle_data"]["pilot"]}")
    ...                                                               .films:contains("${param["airship_vehicle_data"]["films"]}")
    ...                                                               .url:contains("${param["airship_vehicle_data"]["url"]}")

Vehicles Test for Red Wing
    [Documentation]             This test is to get Vehicles List from ghibliapi
    [Tags]                      ghibli-api
    # Get & Convert JSON to Dictionary
    ${payload}                  Get File                    api-test/resources/assertion.json
    ${param}                    Evaluate                    json.loads('''${payload}''')        json


    Create Session              get-second-vehicles                ${base_url}             verify=True
    ${response}=                Get Request                        get-second-vehicles            /vehicles/
    Log                          ${response.json()}
    Set Global Variable          ${response}
    apiResponse.Response Should Be                                    200                   OK
    apiResponse.Response Body Should Be Equals                        .id:contains("${param["airplane_vehicle_data"]["id"]}")
    ...                                                               .name:contains("${param["airplane_vehicle_data"]["name"]}")
    ...                                                               .description:contains("${param["airplane_vehicle_data"]["description"]}")
    ...                                                               .vehicle_class:contains("${param["airplane_vehicle_data"]["vehicle_class"]}")
    ...                                                               .length:contains("${param["airplane_vehicle_data"]["length"]}")    
    ...                                                               .pilot:contains("${param["airplane_vehicle_data"]["pilot"]}")
    ...                                                               .films:contains("${param["airplane_vehicle_data"]["films"]}")
    ...                                                               .url:contains("${param["airplane_vehicle_data"]["url"]}")

Vehicles Test for Sosuke's Boat
    [Documentation]             This test is to get Vehicles List from ghibliapi
    [Tags]                      ghibli-api
    # Get & Convert JSON to Dictionary
    ${payload}                  Get File                    api-test/resources/assertion.json
    ${param}                    Evaluate                    json.loads('''${payload}''')        json


    Create Session              get-second-vehicles                ${base_url}             verify=True
    ${response}=                Get Request                        get-second-vehicles            /vehicles/
    Log                          ${response.json()}
    Set Global Variable          ${response}
    apiResponse.Response Should Be                                    200                   OK
    apiResponse.Response Body Should Be Equals                        .id:contains("${param["boat_vehicle_data"]["id"]}")
    ...                                                               .name:contains("${param["boat_vehicle_data"]["name"]}")
    ...                                                               .description:contains("${param["boat_vehicle_data"]["description"]}")
    ...                                                               .vehicle_class:contains("${param["boat_vehicle_data"]["vehicle_class"]}")
    ...                                                               .length:contains("${param["boat_vehicle_data"]["length"]}")
    ...                                                               .pilot:contains("${param["boat_vehicle_data"]["pilot"]}")
    ...                                                               .films:contains("${param["boat_vehicle_data"]["films"]}")
    ...                                                               .url:contains("${param["boat_vehicle_data"]["url"]}")
