using System;
using System.Configuration;

namespace BinaryFileWrite
{
	class Program
	{
		static void Main()
		{
			var fileName = ConfigurationManager.AppSettings["fileName"];
			Console.WriteLine($"Processing {fileName}");

			var fm = new FileManager();
			fm.Setup();
			fm.Process(fileName + ".asm");

			var byteObjectList = fm.ByteObjectList;
			var dm = new DataManager();
			dm.Process(fileName+ ".sms", byteObjectList);

			Console.WriteLine("Press [ RETURN ]");
			Console.Read();
		}

	}
}
