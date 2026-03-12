package {

	import flash.desktop.NativeApplication;
	import flash.desktop.SystemIdleMode;
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import flash.text.TextFormatAlign;

	public class Pocket extends Sprite {

		MovieClip.prototype.removeAllChildren = function ():void {
			var i:int = this.numChildren - 1;
			
			while (i >= 0) {
				this.removeChildAt(i);
				i--;
			}
		};

		public static const TEXT_FORMAT_DEFAULT:TextFormat = new TextFormat("_sans", 11, 0xc8d8ee, true, null, null, null, null, TextFormatAlign.LEFT);

		public function Pocket() {
			NativeApplication.nativeApplication.systemIdleMode = SystemIdleMode.KEEP_AWAKE;

			this.versionTxt.text = "Version " + Config.APP_VERSION;

			check();
		}

		public var loadingTxt:TextField;
		public var versionTxt:TextField;

		public var game:MovieClip;

		public function check():void {
		}

		public function advance():void {
		}

	}
}
