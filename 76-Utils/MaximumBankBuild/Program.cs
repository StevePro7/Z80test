using System;
using System.Configuration;

namespace BinaryFileWrite
{
	class Program
	{
		static void Main()
		{
			var numberBanks = Convert.ToInt32(ConfigurationManager.AppSettings["NumberBanks"]);

			Console.WriteLine("Number banks:" );
			Console.WriteLine($"{numberBanks}");

			var fileManager = new FileManager();
			fileManager.Process(numberBanks);
		}

	}
}
