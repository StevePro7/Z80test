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
			//fm.Init(cm.Year, cm.Bank, true);
			//fm.Convert();

			fm.Process(0, cm.Year, cm.Bank, true);

            Console.WriteLine("Press [ RETURN ]");
			Console.Read();
		}

	}
}
