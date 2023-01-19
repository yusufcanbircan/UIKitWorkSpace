//
//  ViewController.swift
//  CreateNotification
//
//  Created by Yusuf Can Bircan on 18.01.2023.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {
    
    var permissionControl: Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()
        
        UNUserNotificationCenter.current().delegate = self
        
        permission()
        
    }
    @IBAction func showNotification(_ sender: Any) {
        
        if permissionControl {
            let yes = UNNotificationAction(identifier: "yes", title: "Yes", options: .foreground)
            let no = UNNotificationAction(identifier: "no", title: "No", options: .foreground)
            let delete = UNNotificationAction(identifier: "delete", title: "Delete", options: .destructive)
            
            let category = UNNotificationCategory(identifier: "kat",
                                                  actions: [yes, no, delete],
                                                  intentIdentifiers: [],
                                                  options: [])
            
            UNUserNotificationCenter.current().setNotificationCategories([category])
            
            let content = UNMutableNotificationContent()
            content.title = "Notification"
            content.subtitle = "Get the free badge!"
            content.body = "You can get your free badge. Dont miss!"
            content.sound = UNNotificationSound.default
            content.badge = 1
            content.categoryIdentifier = "kat"
            
            /*var date = DateComponents()
            date.hour = 18
            date.minute = 6
            
            let trigger = UNCalendarNotificationTrigger(dateMatching: date, repeats: true)*/
            
            let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
            let notificationRequest = UNNotificationRequest(identifier: "notify", content: content, trigger: trigger)
            
            UNUserNotificationCenter.current().add(notificationRequest)
        }
    }
    
    func permission() {
        
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound], completionHandler: {(granted, error) in
            self.permissionControl = granted
        })
    }
}

extension ViewController: UNUserNotificationCenterDelegate {
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        completionHandler([.banner, .badge, .sound])
    }
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        if response.actionIdentifier == "yes" {
            print("yes")
        }
        if response.actionIdentifier == "no" {
            print("no")
        }
        if response.actionIdentifier == "delete" {
            print("delete")
        }
        completionHandler()
    }
}
