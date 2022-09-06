import SwiftUI

struct HeaderView: View {
    var count: Int
    var total: Double
    var body: some View {
        VStack{
            Text("Huli Pizza Company")
                .font(.headline)
            HStack{
                Text(count.formatted() + (count <= 1 ? " Pizza": " Pizzas"))
                .font(.caption)
            Spacer()
            Label(total.formatted(.currency(code: "USD")), systemImage: "cart")
                .font(.caption)
                .padding()
                .background(.blue)
                .foregroundColor(.white)
                .clipShape(Capsule())
        }
        
    } 
        .padding()
        .background(.thickMaterial)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(count: 5, total: 34.00)
    }
}
