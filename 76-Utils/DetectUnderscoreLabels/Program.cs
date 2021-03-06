using System;
using System.Collections.Generic;
using System.Configuration;

namespace BinaryFileWrite
{
	class Program
	{
		static void Main()
		{
			//var fileName = ConfigurationManager.AppSettings["fileName"];

			Console.WriteLine("Detecting underscores:" );


			//Console.WriteLine($"{fileName}");
			var fm = new FileManager();
			fm.GetFiles();

			var files = fm.Files;
			foreach (var file in files)
			{
				Console.WriteLine($"File: {file}");
				var isOK = true;
				fm.Process(file);
				var lines = fm.Lines;

				foreach (var line in lines)
				{
					var txtLine = line.TrimEnd();
					if (txtLine.EndsWith(":"))
					{
						if (txtLine.StartsWith("_"))
						{
							Console.WriteLine($"  line: {line}");
							isOK = false;
						}
					}
				}

				if (isOK)
				{
					Console.WriteLine("=>OK");
				}

				Console.WriteLine();
			}

			Console.WriteLine("Press [ RETURN ]");
			Console.Read();
		}

	}
}
