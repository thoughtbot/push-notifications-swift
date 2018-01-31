import Foundation

struct MockPushNotificationsNetworkable: PushNotificationsNetworkable {
    func register(deviceToken: Data, instanceId: String, completion: @escaping (String) -> Void) {
        completion("apns-876eeb5d-0dc8-4d74-9f59-b65412b2c742")
    }

    func subscribe(completion: @escaping () -> Void) {
        completion()
    }

    func setSubscriptions(interests: Array<String>, completion: @escaping () -> Void) {
        completion()
    }

    func unsubscribe(completion: @escaping () -> Void) {
        completion()
    }

    func unsubscribeAll(completion: @escaping () -> Void) {
        completion()
    }

    func track(userInfo: [AnyHashable: Any]) {

    }
}