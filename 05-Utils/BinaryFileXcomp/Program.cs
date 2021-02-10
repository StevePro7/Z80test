using System;
using System.Configuration;

namespace BinaryFileWrite
{
	class Program
	{
		static void Main()
		{
			var fileName01 = ConfigurationManager.AppSettings["fileName01"];
			var fileName02 = ConfigurationManager.AppSettings["fileName02"];
			
			Console.WriteLine("Press [ RETURN ]");
			Console.Read();
		}

	}
}
