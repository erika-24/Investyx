//
//  ViewController+LinkToken.swift
//  LinkDemo-Swift
//
//  Copyright © 2020 Plaid Inc. All rights reserved.
//

import LinkKit

extension ViewController {
    // MARK: Start Plaid Link using a Link token
    // For details please see https://plaid.com/docs/#create-link-token
    func presentPlaidLinkUsingLinkToken() {

        // In your production application replace the hardcoded linkToken below with code that fetches an link_token
        // from your backend server which in turn retrieves it securely from Plaid, for details please refer to
        // https://plaid.com/docs/#create-link-token
      //  let url = URL(string: "http://127.0.0.1:5000/hello")
        
       // var request = URLRequest(url: url!)
        

        let linkToken = "link-sandbox-efcaafd0-1b67-4273-bcd9-b04d6a58b08b"

        // <!-- SMARTDOWN_PRESENT_LINKTOKEN -->
        // With custom configuration using a link_token
        var linkConfiguration = LinkTokenConfiguration(token: linkToken) { success in
            print("public-token: \(success.publicToken) metadata: \(success.metadata)")
        }
        linkConfiguration.onExit = { exit in
            if let error = exit.error {
                print("exit with \(error)\n\(exit.metadata)")
            } else {
          
                print("exit with \(exit.metadata)")
            }
            self.scroe.text = "4313"
            self.add.isHidden = false
//+ 95

        }

        let result = Plaid.create(linkConfiguration)
        switch result {
        case .failure(let error):
            print("Unable to create Plaid handler due to: \(error)")
        case .success(let handler):
            handler.open(presentUsing: .viewController(self))
            linkHandler = handler
        }

        // <!-- SMARTDOWN_PRESENT_LINKTOKEN -->
    }

}
