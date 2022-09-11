package {
	//city app
	import flash.display.*;
	import flash.events.*;

	public class exercise2 extends MovieClip {
		// DATA MEMBERS
		private var carList: Array;
		private var nCars: int = 16;

		// CONSTRUCTOR
		public function exercise2() {
			// TASK 1: ADD 16 CARS
			carList = new Array();
			var positionY = 30;
			for (var i: int = 0; i < nCars; i++) {
				var car: Car = new Car(positionY);
				positionY += 20;
				car.x = car.mX;
				car.y = car.mY;
				addChild(car);
				carList.push(car);
			}

			// TASK 3: REGISTER A LISTENER EVENT
			addEventListener(Event.ENTER_FRAME, update);

		}

		public function update(event: Event) {
			for (var i: int = 0; i < nCars; i++) {
				carList[i].moveIt();
				carList[i].x = carList[i].mX;
			}
		}
	}
}