import SwiftUI

struct RootView: View {
    var menu:[MenuItem]
    @State var orders:OrderModel = OrderModel(items:[])
    @State var orderTotal:Double = 0 
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
    }
}
