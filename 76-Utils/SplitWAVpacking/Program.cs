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
			fm.GetFiles();
			//if (cm.Year.Equals("test"))
			//{
			//	fm.Init(cm.Year, bank, cm.Flag);
			//}
			//else
			//{
				fm.Init(cm.Year, cm.Bank);
			//}
			
			//fm.Convert();
			fm.ProcessAll(cm.Year, bank, cm.Bank);

			Console.WriteLine("Press [ RETURN ]");
			Console.Read();
		}

	}
}
