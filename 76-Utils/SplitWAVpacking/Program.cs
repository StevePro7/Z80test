using System;

namespace SplitWAVpacking
{
	class Program
	{
		static void Main()
		{
			var cm = new ConfigManager();
			cm.Init();
			Console.WriteLine($"File: {cm.Year} at bank: {cm.Bank}");

			var fm = new FileManager();
			fm.Init(cm.Year, cm.Bank, cm.Flag);

			//fm.Convert();
			//fm.Process(cm.Year, cm.Bank, cm.Flag);

            Console.WriteLine("Press [ RETURN ]");
			Console.Read();
		}

	}
}
