import json
import jsonpath

def Read_Locator_From_JSON(locatorname):
    f= open("C:/Users/arun/PycharmProjects/FlipcartRobot/JSONFiles/Element.json")
    response= f.read()
    response1= json.loads(response)
    Value= jsonpath.jsonpath(response1,locatorname)
    return Value[0]

