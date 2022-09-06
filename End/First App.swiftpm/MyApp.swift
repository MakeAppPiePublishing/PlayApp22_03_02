import SwiftUI

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            RootView(menu:MenuModel().menu)
        }
    }
}
