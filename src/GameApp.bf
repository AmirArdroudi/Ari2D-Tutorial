using ari;

namespace Ari2DTutorial
{
	class GameApp : Application
	{
		// Initialize and add systems in OnInit
		public override void OnInit()
		{
			base.OnInit();
		}

		// Systems that should update on each frame 
		public override void OnFrame(float _elapsedTime)
		{
			base.OnFrame(_elapsedTime);
		}

		// Handle keyboard and touch events
		public override void OnEvent(ari_event* _event, ref ari.io.WindowHandle _handle)
		{
			base.OnEvent(_event, ref _handle);
		}

		// Clean up all initialized systems and components
		public override void OnCleanup()
		{
			base.OnCleanup();
		}

	}
}
