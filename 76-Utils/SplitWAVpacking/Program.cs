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
			if (cm.Year.Equals("test"))
			{
				fm.Init(cm.Year, cm.Bank, cm.Flag);
			}
			else
			{
				fm.Init(cm.Year, cm.Bank2, cm.Flag);
			}
			
			//fm.Convert();
			fm.ProcessAll(cm.Year, cm.Bank, cm.Bank2, cm.Flag);

			Console.WriteLine("Press [ RETURN ]");
			Console.Read();
		}

	}
}
