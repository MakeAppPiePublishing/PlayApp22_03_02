import SwiftUI

struct MenuDetailView: View {
    var item:MenuItem
    @Binding var orders:OrderModel
    @Binding var orderTotal:Double
    @Environment(\.horizontalSizeClass) var hSizeClass
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Spacer()
                Button("Order Pizza") { 
                orders.add(item: OrderItem(item: item, quantity: 1, size: .medium))
                orderTotal = orders.total
                }
                .padding()
                .foregroundColor(.white)
                .background(.blue)
                .cornerRadius(10)
                
                    
            }
            Image("\(item.id)_lg")
                .resizable()
                .scaledToFit()
                .cornerRadius(10)
                .padding()
            HStack{
                RatingsView(rating: item.rating,maxRating: 6)
                    .font(.caption)
                    .foregroundColor(.yellow)
                Spacer()
                Text(item.price.formatted(.currency(code: "USD")) )
                    .fontWeight(.bold)
                
            }
            .padding()
            Text(item.description)
            Spacer()
            
        }
        .navigationTitle(item.name)
        .navigationBarTitleDisplayMode(hSizeClass == .compact ? .inline : .large)
    }
}

struct MenuDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MenuDetailView(item:MenuModel.test, orders: .constant(OrderModel(items: [OrderItem(item: testMenuItem, quantity: 1)])), orderTotal: .constant(0.0))
    }
}
