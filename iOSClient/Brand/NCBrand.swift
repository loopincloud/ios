//
//  NCBrandColor.swift
//  Crypto Cloud Technology Nextcloud
//
//  Created by Marino Faggiana on 24/04/17.
//  Copyright (c) 2017 TWS. All rights reserved.
//
//  Author Marino Faggiana <m.faggiana@twsweb.it>
//
//  This program is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//
//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//
//  You should have received a copy of the GNU General Public License
//  along with this program.  If not, see <http://www.gnu.org/licenses/>.
//

import UIKit

class NCBrandColor: NSObject {

    static let sharedInstance: NCBrandColor = {
        let instance = NCBrandColor()
        return instance
    }()

    // Color
    //public let customer:                UIColor = UIColor(red: 0.0/255.0, green: 130.0/255.0, blue: 201.0/255.0, alpha: 1.0)    // BLU NC : #0082c9 
    public let customer:                UIColor = UIColor(red: 1.0/255.0, green: 174.0/255.0, blue: 243.0/255.0, alpha: 1.0)    // Techsize default : #01aef3ff
    
    public var brand:                   UIColor
    public var connectionNo:            UIColor = UIColor(red: 204.0/255.0, green: 204.0/255.0, blue: 204.0/255.0, alpha: 1.0)
    public var cryptocloud:             UIColor = UIColor(red: 241.0/255.0, green: 90.0/255.0, blue: 34.0/255.0, alpha: 1.0)
    public var navigationBarProgress:   UIColor = .white
    public var navigationBarText:       UIColor = .white
    public var menuBackground:          UIColor = .white
    public var moreNormal:              UIColor = .black
    public var moreSettings:            UIColor = .black
    public var seperator:               UIColor = UIColor(red: 235.0/255.0, green: 235.0/255.0, blue: 235.0/255.0, alpha: 1.0)
    public var tabBar:                  UIColor = .white
    public var tableBackground:         UIColor = .white
    public var transferBackground:      UIColor = UIColor(red: 178.0/255.0, green: 244.0/255.0, blue: 258.0/255.0, alpha: 0.1)
    public let nextcloud:               UIColor = UIColor(red: 0.0/255.0, green: 130.0/255.0, blue: 201.0/255.0, alpha: 1.0)
    
    override init() {
        self.brand = self.customer
    }
    
    // Color modify
    public func getColorSelectBackgrond() -> UIColor {
        return self.brand.withAlphaComponent(0.1)
    }
}

class NCBrandOptions: NSObject {
    
    static let sharedInstance: NCBrandOptions = {
        let instance = NCBrandOptions()
        return instance
    }()
    
    public let brand:                           String = "TechSize Cloud"
    public let mailMe:                          String = "anderson.santos@techsize.com.br"
    public let textCopyrightNextcloudiOS:       String = "TechSize for iOS %@ © 2018"
    public let textCopyrightNextcloudServer:    String = "TechSize Server %@"
    public let loginBaseUrl:                    String = "https://cloud.techsize.com.br"
    public let loginBaseUrlMultiDomains:        [String] = ["domain.com", "domain.it"]
    public let pushNotificationServer:          String = "https://push.techsize.com.br"
    public let linkLoginProvider:               String = "https://techsize.com.br"
    public let textLoginProvider:               String = "_login_bottom_label_"
    public let middlewarePingUrl:               String = "cloud.techsize.com.br"
    public let webLoginAutenticationProtocol:   String = ""
    public let webCloseViewProtocol:            String = ""
    public let folderBrandAutoUpload:           String = ""

    // Auto Upload default folder
    public var folderDefaultAutoUpload:         String = "Photos"
    
    // Capabilities Group
    public let capabilitiesGroups:              String = "group.cloud.techsize"
    
    // Options
    public let use_login_web:                   Bool = false
    public let use_firebase:                    Bool = false
    public let use_default_auto_upload:         Bool = false
    public let use_themingColor:                Bool = true
    public let use_themingBackground:           Bool = true
    public let use_multiDomains:                Bool = false
    public let use_middlewarePing:              Bool = false
    public let use_storeLocalAutoUploadAll:     Bool = false
    
    public let disable_intro:                   Bool = false
    public let disable_linkLoginProvider:       Bool = true
    public let disable_request_login_url:       Bool = true
    public let disable_multiaccount:            Bool = false
    public let disable_cryptocloudsystem:       Bool = false
    public let disable_manage_account:          Bool = false
    
    override init() {
        
        if folderBrandAutoUpload != "" {
            
            self.folderDefaultAutoUpload = self.folderBrandAutoUpload
        }
    }
}

