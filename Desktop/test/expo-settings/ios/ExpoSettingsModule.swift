import ExpoModulesCore

public class ExpoSettingsModule: Module {
  public func definition() -> ModuleDefinition {
    Name("ExpoSettings")
      
      Events("onChangeTheme")//object that can be send to JS

      Function("setTheme") { (theme: String) -> Void in
          UserDefaults.standard.set(theme, forKey:"theme")
          sendEvent("onChangeTheme", [
            "theme": theme
          ])//send events to js 
    }
      
      Function("getTheme") { () -> String in
          UserDefaults.standard.string(forKey: "theme")  ?? "system"
    }
  }
}
