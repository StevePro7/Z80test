﻿using System;
using System.Configuration;

namespace BinaryFileWrite
{
	class Program
	{
		static void Main()
		{
			var fileName = ConfigurationManager.AppSettings["fileName"];
			var startBank = Convert.ToInt32(ConfigurationManager.AppSettings["startBank"]);
			Console.WriteLine($"Processing '{fileName}'   [{startBank}]");

			var fm = new FileManager();
            //fm.Process(fileName, startBank);
            //fm.Build(fileName, startBank, 1978);

            //System.Diagnostics.Process.Start("c:\\Steven\\Temp\\666\\riff.bat");
            fm.BatchFile(fileName);
            Console.WriteLine("Press [ RETURN ]");
			Console.Read();
		}

	}
}
