/********* Sum.swift Cordova Plugin Implementation *******/

@objc(Sum) class Sum : CDVPlugin{

// MARK: Properties

  
@objc(add:) func add(_ command: CDVInvokedUrlCommand) {
    var pluginResult = CDVPluginResult(status: CDVCommandStatus_ERROR)
    let arg1 = (command.arguments[0] as? NSObject)?.value(forKey: "val1") as? Int
    let arg2 = (command.arguments[0] as? NSObject)?.value(forKey: "val2") as? Int
    
    if let val1 = arg1 , let val2 = arg2 {
        if val1 >= 0 && val2 >= 0 {
            let sum = String(val1 + val2)
            pluginResult = CDVPluginResult(status: CDVCommandStatus_OK, messageAs: sum)
        }else {
            pluginResult = CDVPluginResult(status: CDVCommandStatus_ERROR, messageAs: "Error occured")
        }
    }
    
    self.commandDelegate!.send(pluginResult, callbackId: command.callbackId)
    
    }
}

