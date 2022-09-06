//
//  MenuView.swift
//  HuliPizza22play
//
//  Created by Steven Lipton on 7/20/22.
//

import SwiftUI

struct MenuView: View {
    var menu:[MenuItem]
    @Binding var orders:OrderModel
    @Binding var orderTotal:Double
    var body: some View {
        VStack{
        NavigationView{
            List{
                ForEach(menu){item in
                NavigationLink { 
                    MenuDetailView(item:item, orders: $orders,orderTotal: $orderTotal)
                } label: { 
                    MenuRowView(item:item)
                }
                
            }
                .navigationBarTitleDisplayMode(.inline)
            }
        }
            Spacer()
        }
        
}
}
struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView(menu:MenuModel().menu,orders: .constant(OrderModel(items: [OrderItem(item: testMenuItem, quantity: 1, size: .medium)])), orderTotal: .constant(0.0))
    }
}
