//
//  ContentView.swift
//  ArtAppy
//
//  Created by Emarah Charles on 5/2/22.
//

import SwiftUI


struct ContentView: View {
    
    var body: some View {
        NavigationView {
        //First
        ZStack {
        //Color.black.ignoresSafeArea()  // makes background color black
            Image("theSwing")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            VStack{
        Text("Welcome")
            .font(.largeTitle)
            .foregroundColor(.white)
           //.frame(maxWidth: .infinity, alignment: .leading) //left align
            
        Text("lets learn about art")
                .foregroundColor(.white)
                //.frame(maxWidth: .infinity, alignment: .leading)//left align
                
               
                    
                
                Spacer()
                
                //this functions as my button!
                NavigationLink(destination: LoginView()) {
                    Image(systemName: "play.fill")
                        .foregroundColor(.black)
                        .padding(.all, 18.0)
                        .background(Color(red: 0.897, green: 0.739, blue: 0.904)) //replace w a better
                        .clipShape(Circle())
                        //.buttonStyle(PlainButtonStyle())
                }
                
                
               
               }//end of VStack
            }
            
        
        }//end of nav
        
    }
}

struct LoginView: View {
    @State var username: String = ""
    @State var password: String = ""
    var body: some View {
        

        ZStack {
            
            //Color.black.ignoresSafeArea()  // makes background color black
            Image("LasMeninas")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            

            
            VStack{
                Text("Join us or login")
                        .foregroundColor(.white)//change
                
                
                TextField("UserName", text:$username)
                    .padding(.all, 4.0)
                    .frame(width: 250.0)
                    .foregroundColor(.black)
                    //.cornerRadius(26)
                    .background(Color(red: 0.692, green: 0.444, blue: 0.303), in: Capsule())//change
                TextField("Password", text:$password)
                    .padding(.all, 4.0)
                    .frame(width: 250.0)
                    .foregroundColor(.black)
                   // .cornerRadius(25)
                    .background(Color(red: 0.692, green: 0.444, blue: 0.303), in: Capsule())//change
            
                //this functions as my button!
                NavigationLink(destination: tabviel ()) {  //this does to tabBar
                    Image(systemName: "play.fill")
                        .foregroundColor(.black)
                        .padding(.all, 18.0)
                        .background(Color(red: 0.897, green: 0.739, blue: 0.904)) //replace w a better
                        .clipShape(Circle())
                        //.buttonStyle(PlainButtonStyle())
                }
               
               
          }
         }//end of zatck 2
        
    }
}//end of login View


struct mainPageView : View{
    var body: some View {
       
        ZStack {
        
            VStack{
            HStack {
                Text("Hey username") //get from parse?
                
                //acts as button to profile page
                    Image("defaultPro")  //profile picture
                            .resizable()
                            .frame(width: 30.0, height: 30.0)
               
               }  //end of hstack
                Text("main!")
                
    
               } //end of Vstack
            
            } //end of ZStack
        

           
       
        
    
    
        }//end of some
}//end of main
    



//Work .....
struct profileView: View {
    var body: some View {

       
        ZStack { //Z 3 profile page
            //Color.black.ignoresSafeArea()

            Image("theKiss")
                .resizable()
                //.padding(.top, -40.0)
                //.padding(.bottom, 800.0)
                .scaledToFill()
                .ignoresSafeArea()


            HStack {
            Text("Hey username") //get from parse?
            Image("defaultPro")  //profile picture
                    .resizable()
                    .frame(width: 30.0, height: 30.0)

            }

            Spacer()


//            VStack(spacing: 22.0) {
//
//                Text("Space holder ")
//                Text("Space holder ")
//                Text("Space holder ")
//                Text("Space holder ")
//                Text("Space holder ")
//                Text("Space holder ")
//                Text("Space holder ")
//                Text("Space holder ")
//            }
//            .padding(.bottom)
//            .frame(width: 400.0)
//            .background(Color.black)
//            .foregroundColor(.white)
//            .cornerRadius(40)


        }
        
        }//end of z3
    

}//end of oprof view

struct tabviel : View {
    @State var selectedTab: Int = 0
    var body: some View {
    TabView {
        mainPageView()
             .tabItem {
                Image(systemName: "house")
                Text("Home")
                

            }
             .tag(0)
        
        profileView()
             .tabItem {
                Image(systemName: "person")
                Text("Profile")

            }
             .tag(1)
      } //end of TabView
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView ()
        LoginView ()
        mainPageView ()
        profileView ()
        tabviel ()
        
    }
}
