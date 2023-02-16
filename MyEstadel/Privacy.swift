//
//  New.swift
//  MyEstadel
//
//  Created by Arwamohammed07 on 15/07/1444 AH.
//

import SwiftUI

struct Privacy: View {
    var body: some View {
        NavigationView{
            ScrollView{
                Text("""
                     Data Collection And Use
                     Account Data
                     When you sign up for an account on Estaddel, we may collect your phone number and email address and location and payment details. This Account Data may also be used to respond to your messages.
                     Photos
                     We collect the photos you add on Estaddel together with the associated metadata such as the time the photo was taken. We do not collect any location metadata from your photos. We work hard to keep this data private and secure.
                     Device and App Activity Data
                     When you use Estaddel, we automatically collect certain information about your device (such as the type of device, operating system, IP address, and unique identifiers) and how you interact with the app (such as the actions you take and how long you use the app). We use this information to improve the app, create new features, and keep our systems secure.
                     How We Share Data
                     We do not sell, rent, license, or lease your data to third parties. However, we may share it with the following third parties:
                     Service Providers – such as hosting services, customer support services, and analytics services.
                     Professional Advisors – such as lawyers and accountants.
                     Business Transaction Recipients – including counterparties and others assisting with a merger, acquisition, financing, reorganization, bankruptcy, receivership, dissolution, asset sale, or similar transaction involving our business.
                     Legal and Safety – government authorities or regulators or other third parties where required by law or legal process or to protect Locket’s, users’, or other third parties’ rights and safety.
                     How You Share Data
                     Data Retention
                     We keep your data until we don’t need it for the purposes described in this policy and we have no legal obligation to keep it.
                     Your Rights
                     We provide all users with the following rights:
                     Deactivate – you can deactivate your account so don’t sell or buy from us anymore;
                     Access – you can download the data we have about you in an easy-to-use format;
                     Delete – you can request that we delete the data we have about you, but this right is not absolute. We may need to keep certain information, for example, to comply with our legal requirements;
                     Correct – you can ask that we fix any errors or inaccuracies in the data we hold about you;
                     Stop processing – you can tell us to stop processing your data;
                     Object – you can object to how we process your data; and
                     Complain – you can complain to the data protection regulator where you live (if you have one).
                     You can exercise these rights by emailing contacting us and including the phone number linked to your account in your message. We will not treat you differently if you exercise any of these rights, but we may need additional information to verify your identity. An agent can also make these requests on your behalf, but we may still ask you to verify your identity and that you have authorized the agent to act on your behalf.
                     Children
                     Estaddel is not intended for children and we do not believe we have collected any data from children. If we learn that we have collected data from children without proper consent, we will delete that data.
                     Changes to this Policy
                     We may need to update this policy to account for changes in our business and applicable laws. If we change this policy, we will post the new version here. If the changes are significant we will notify you through the app.
                     Contact Us
                     Please email us at any of our socials with any questions.
                     """)
                .frame(width: 320)
                .foregroundColor(.black)
                .font(.body)
               .padding()
               .multilineTextAlignment(.leading)
                
            }.navigationTitle(" Privacy Policy")
//                .toolbar{
//                    ToolbarItemGroup(placement: .navigationBarLeading) {
//                        Button("Back") {
//
//                        }
//                    }
//                }
        }
    }
}

struct Privacy_Previews: PreviewProvider {
    static var previews: some View {
        Privacy()
    }
}
