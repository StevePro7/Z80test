using System;

namespace SplitWAVpacking
{
	class Program
	{
		static void Main()
		{
			var cm = new ConfigManager();
			cm.Init();
			Console.WriteLine($"File: {cm.Suff} at bank: {cm.Bank}");

			var fm = new FileManager();
			fm.Init(cm.Suff, cm.Bank);

			//fm.Convert();
			//fm.ProcessAll(cm.Year, bank, cm.Bank, cm.Flag);

			Console.WriteLine("Press [ RETURN ]");
			Console.Read();
		}

	}
}
