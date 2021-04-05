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
			fm.Init(cm.Year, cm.Bank2, cm.Flag);
			//fm.Init(cm.Year, cm.Bank, true);
			//fm.Convert();

			fm.ProcessAll(cm.Year, cm.Bank, cm.Bank2, cm.Flag);

			//int index = 0;
			//var valid = fm.Process(index);
			//if (valid)
			//{
			//	fm.CopyLocal(index, cm.Year);
			//	fm.CopyRemote(index, cm.Year, cm.Bank);
			//	fm.CopyRemote(index, cm.Year, cm.Bank2);
			//	if (cm.Flag)
			//	{
			//	}
			//}

			Console.WriteLine("Press [ RETURN ]");
			Console.Read();
		}

	}
}
