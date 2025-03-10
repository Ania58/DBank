import Debug "mo:base/Debug";
import Time "mo:base/Time";
import Float "mo:base/Float";

actor DBank {
  stable var currentValue: Float = 300;
  currentValue := 300;

  stable var startTime = Time.now();
  startTime := Time.now();
  Debug.print(debug_show(startTime));

  public func topUp (amount: Float) {
    currentValue += amount;
    Debug.print(debug_show(currentValue));
  };

public func withdraw (amount: Float) {
 let tempValue: Float = currentValue - amount;
  if(tempValue >= 0) {
   currentValue -= amount;
   Debug.print(debug_show(currentValue));
  } else {
    Debug.print("Amount too large, currentVale less than zero")
  }
    
  };

  public query func checkBalance(): async Float {
    return currentValue;
  };

  public func compound() {
    let currentTime = Time.now();
    let timeElapsedNS = currentTime - startTime;
    let timeElapsedS = timeElapsedNS / 1000000000;
    let quartersElapsed = timeElapsedS / 7_776_000; 
    Debug.print("Time Elapsed (seconds): " # debug_show(timeElapsedS));
    Debug.print("Quarters Elapsed: " # debug_show(quartersElapsed));
   
    if (quartersElapsed >= 1) {  
      currentValue := currentValue * (1.01 ** Float.fromInt(quartersElapsed));
      startTime := currentTime;
      Debug.print("New Value After Interest: " # debug_show(currentValue));
    } else {
      Debug.print("Less than a quarter elapsed, no interest applied.");
    }
  }
}
