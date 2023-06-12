protocol AlarmDelegate: AnyObject {
    func alarmDidRing()
}
class AlarmClock{
    weak var delegate: AlarmDelegate?
    func ringAlarm() {
        delegate?.alarmDidRing()
    }
}
class ViewController: AlarmDelegate {
    var alarmClock: AlarmClock = AlarmClock()
    init() {
        alarmClock.delegate = self
        alarmClock.ringAlarm()
    }
    func alarmDidRing() {
        print("Получено событие: будильник сработал")
    }
}
var vc = ViewController()

