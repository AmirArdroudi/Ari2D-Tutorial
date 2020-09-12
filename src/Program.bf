using System;

namespace Ari2DTutorial
{
	class Program
	{
		public static void Main(String[] args)
		{
			// allocate app on stack
			var app = scope GameApp();

			// run the app
			ari.RunApplication(app);
			Console.WriteLine("Game exited");
		}
		
	}
}
