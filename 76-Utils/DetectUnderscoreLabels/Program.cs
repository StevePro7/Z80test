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

			Console.WriteLine("Stripping underscores:" );
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
					if (txtLine.StartsWith("___"))
					{
						txtLine = txtLine.Substring(3, txtLine.Length - 3);
					}
					if (txtLine.StartsWith("__"))
					{
						txtLine = txtLine.Substring(2, txtLine.Length - 2);
					}
					else if (txtLine.StartsWith("_"))
					{
						txtLine = txtLine.Substring(1, txtLine.Length - 1);
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
