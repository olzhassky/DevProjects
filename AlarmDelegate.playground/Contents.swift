
protocol AlarmDelegate: AnyObject {
    func alarmDidRing()
}

class AlarmClock {
    weak var delegate: AlarmDelegate?
    
    
    func ringAlarm() {
        print("Будильник сработал")
        delegate?.alarmDidRing()
    }
}

class ViewController: AlarmDelegate {
    var clock: AlarmClock = AlarmClock()
    
    init() {
        clock.delegate = self
        clock.ringAlarm()
    }
    
    func alarmDidRing() {
        print("Получено событие: будильник сработал!")
    }
}

let vc = ViewController()
