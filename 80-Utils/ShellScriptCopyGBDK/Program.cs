using System;

namespace SplitWAVpacking
{
	class Program
	{
		static void Main()
		{
			var bm = new BuildManager();
			bm.Process();

			Console.WriteLine("Press [ RETURN ]");
			Console.Read();
		}

	}
}
