//
//  AppDelegate.swift
//  LEDBoard
//
//  Created by CHOI on 2022/07/06.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        sleep(1)
        
        return true
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        // Youtube - 사용자가 프리미엄 결제를 했으면 play, 일시정지
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        // Youtube - 결제하지 않은 사람들에게 팝업창을 띄우도록
        // 카카오톡 - 잠금 화면 다시 띄우기
        // 금융앱 - 백그라운드에 있을 때 화면 안보이도록
    }

    // MARK: UISceneSession Lifecycle

    @available (iOS 13.0, *)
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
    
    @available (iOS 13.0, *)
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

