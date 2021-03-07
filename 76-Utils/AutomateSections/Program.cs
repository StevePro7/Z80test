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
			Console.WriteLine("Update sections:" );
			var fm = new FileManager();
			fm.GetFiles();

			var fileNames = fm.Files;
			foreach (var fileName in fileNames)
			{
				Console.WriteLine($"{fileName}");
				fm.Process(fileName);

				var inpLines = fm.Lines;
				var outLines = new List<string>();

				var firstTime = true;
				var count = inpLines.Length;
				for (int index = 0; index < count; index++)
				{
					var inpLine = inpLines[index];
					var txtLine = inpLine;
					//var txtLine = inpLine.Trim();

					if (txtLine.EndsWith(":"))
					{
						if (txtLine.StartsWith("-") || txtLine.StartsWith("+"))
						{
						}
						else
						{
							if (firstTime)
							{
								firstTime = false;
							}
							else
							{
								var endLine = ".ends";
								outLines.Add(endLine);
								outLines.Add(String.Empty);
							}

							var section = txtLine.Substring(0, txtLine.Length - 1);
							var sctLine = $".section \"{section}\" free";
							outLines.Add(sctLine);
						}
					}

					outLines.Add(txtLine);
				}

				outLines.Add(".ends");
				fm.Saving(outLines, fileName);
			}

			Console.WriteLine("Press [ RETURN ]");
			Console.Read();
		}

	}
}
