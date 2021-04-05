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

			const int bank = 4;
			var fm = new FileManager();
			if (cm.Year.Equals("test"))
			{
				fm.Init(cm.Year, bank, cm.Flag);
			}
			else
			{
				fm.Init(cm.Year, cm.Bank, cm.Flag);
			}
			
			//fm.Convert();
			fm.ProcessAll(cm.Year, bank, cm.Bank, cm.Flag);

			Console.WriteLine("Press [ RETURN ]");
			Console.Read();
		}

	}
}
