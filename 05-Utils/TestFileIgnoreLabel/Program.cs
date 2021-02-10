using System;
using System.Collections.Generic;
using System.Configuration;

namespace BinaryFileWrite
{
	class Program
	{
		static void Main()
		{
			var fileName = ConfigurationManager.AppSettings["fileName"];

			Console.WriteLine("Stripping file:" );
			Console.WriteLine($"{fileName}");
			var fm = new FileManager();
			fm.Process(fileName);
			var inpLines = fm.Lines;
			var outLines = new List<string>();

			foreach(var inpLine in inpLines)
			{
				var txtLine = inpLine.TrimEnd();
				if (txtLine.EndsWith(":"))
				{
					if (!txtLine.StartsWith("_"))
					{
						continue;
					}
				}

				outLines.Add(txtLine);
			}

			fm.Saving(outLines, fileName);
			Console.WriteLine("Press [ RETURN ]");
			Console.Read();
		}

	}
}
