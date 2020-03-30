//
//  InterfaceController.swift
//  HamiltonTevin_StarBoared_Watch Extension
//
//  Created by Tevin Hamilton on 3/22/20.
//  Copyright © 2020 Tevin Hamilton. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
   
       var selectionStringArray :[String]  = ["characther Info", "character quotes", "LightSaber", "Extra Sound"]
       
    @IBOutlet weak var tableView: WKInterfaceTable!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        loadTableView()
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    
    func loadTableView(){
        
        tableView.setNumberOfRows(selectionStringArray.count, withRowType: "row_id1")
     
        for (index,item) in selectionStringArray.enumerated(){
            if let rowController = tableView.rowController(at: index) as? RowController{
                rowController.rowLabelName.setText(item)
            }
        }
    }
    
    override func table(_ table: WKInterfaceTable, didSelectRowAt rowIndex: Int) {
        switch rowIndex {
        case 0:
            pushController(withName: "CharacterInterfaceController", context: nil)
        case 1:
            pushController(withName: "CharacterQuotesInterfaceController", context: nil)
        case 2:
            pushController(withName: "", context: nil)
        case 3:
            pushController(withName: "", context: nil)
        default:
        print("something went wrong")
        }
        
      }

}
