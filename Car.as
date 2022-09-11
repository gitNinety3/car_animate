package {
	import flash.display.*;
	import flash.events.*;

	public class Car extends MovieClip {
		// DATA MEMBERS
		public var direction: int;
		public var endZone: int;
		public var velocity: Number
		public var mY: int;
		public var mX: int;

		// CONSTRUCOR
		public function Car(positionY: Number) {
			// TASK 1: SET THE Y POSITION FOR THE CAR
			this.mY = positionY;

			// TASK 2: CHOOSE A RANDOM DIRECTION
			this.direction = (Math.floor(Math.random() * 2) == 0) ? 1 : -1;

			if (direction == -1) {
				this.scaleX = -1
				this.endZone = 800;
			} else {
				this.endZone = -100;
			}
			this.mX = endZone;

			this.velocity = Math.floor((Math.random() * 15 + 1)) * this.direction;
		}

		// MOVEIT METHOD
		public function moveIt(): void {
			// TASK 1: UPDATE THE X LOCATION OF THE CAR
			this.mX += this.velocity

			// TASK 2: ROTATE THE WHEEL OF THE CAR
			this.rightWheel.rotation -= this.velocity;
			this.leftWheel.rotation -= this.velocity;

			// TASK 3: CHECK IF THE CAR HAS MOVED OFF THE SCREEN
			if (this.direction == -1 && this.mX < -200 || this.direction == 1 && this.mX < 200) {
				this.mX = this.endZone
			}

		}

	}

}