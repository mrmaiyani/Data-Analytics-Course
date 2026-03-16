import time
from plyer import notification

def water_reminder(interval_minutes):
    interval_seconds = interval_minutes * 60
    print("Water Drinking Reminder Started Now")
    print(f"You will get a notification every {interval_minutes} minutes\n")

    while True:
        time.sleep(interval_seconds)
        notification.notify(
            title="Drink Water",
            message="Utsav! - Time to drink water and stay hydrated.",
            timeout=10
        )

water_reminder(30)