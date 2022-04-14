using System;
using System.Configuration;

namespace BinaryFileWrite
{
	class Program
	{
		static void Main()
		{
			var fileName = ConfigurationManager.AppSettings["fileName"];
			var fm = new FileManager();
			fm.Process();
            Console.WriteLine("Press [ RETURN ]");
			Console.Read();
		}

	}
}
