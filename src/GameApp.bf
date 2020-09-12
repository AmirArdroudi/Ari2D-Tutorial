using ari;

namespace Ari2DTutorial
{
	class GameApp : Application
	{
		// Creating the world
		World world = new World();
		// creating Render system2D
		RenderSystem2D render_system2d = new RenderSystem2D();

		SceneSystem2D sence_system2d = new SceneSystem2D();


		public this()
		{
			// handle graphics related stuff
			setup = new GfxSetup();

			// initialize window size
			setup.window.Width = 640;
			setup.window.Height = 480;
		}

		// Initialize and add systems in OnInit
		public override void OnInit()
		{
			base.OnInit();

			// We should add the systems to our world
			world.AddSystem(render_system2d);
			world.AddSystem(sence_system2d);
		}

		// Systems that should update on each frame 
		public override void OnFrame(float _elapsedTime)
		{
			base.OnFrame(_elapsedTime);

			// world needs to be updated every frame
			world.Update(_elapsedTime);
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
			// now we should clean up entities and systems
			delete world;
			delete render_system2d;
			delete sence_system2d;
		}

	}
}
