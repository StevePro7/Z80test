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

			var fm01 = new FileManager();
			var fm02 = new FileManager();

			fm01.Process(fileName01);
			fm02.Process(fileName02);
			var bytes01 = fm01.Bytes;
			var bytes02 = fm02.Bytes;

			if (bytes01.Length != bytes02.Length)
			{
				var msg = $"File 01 size {bytes01.Length} != File 02 size {bytes02.Length}";
				Console.WriteLine(msg);
			}

			for (int idx = 0; idx < bytes01.Length; idx++)
			{
				var byte01 = bytes01[idx];
				var byte02 = bytes02[idx];

				if (byte01 != byte02)
				{
					var msg = $"Byte 01 {byte01} != Byte 02 {byte02} at INDEX {idx}";
					Console.WriteLine(msg);
				}
			}

			Console.WriteLine("Press [ RETURN ]");
			Console.Read();
		}

	}
}
