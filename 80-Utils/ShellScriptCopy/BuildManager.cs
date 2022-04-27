using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;

namespace SplitWAVpacking
{	
    public class BuildManager
    {
		public void Process()
		{
			var inpLines = File.ReadAllLines("build.bat");
			var outLines = new List<string>();
			var directry = new List<string>();

			outLines.Add("#!/bin/sh");
			outLines.Add("echo off");

			for (int idx = 2; idx < inpLines.Length; idx++)
			{
				var inpLine = inpLines[idx];
				var outLine = inpLine.Trim();

				outLine = outLine.Replace("::", "##");
				if (outLine.StartsWith("set"))
				{
					outLine = outLine.Replace("set", "##set");
				}

				if (outLine.EndsWith("^"))
				{
					outLine = outLine.Replace("^", @"\");
				}

				if (outLine.StartsWith("cd") && outLine != "cd ..")
				{
					var dirX = outLine.Substring(2, outLine.Length - 2);
					directry.Add(dirX);
				}

				outLines.Add(outLine);
				if (inpLine.StartsWith(":: Delete"))
				{
					break;
				}
			}

			foreach (var direct in directry)
			{
				outLines.Add("cd " + direct);
				outLines.Add("rm -f *.asm 2> /dev/null; rm -f *.lst 2> /dev/null; rm -f *.sym 2> /dev/null");
				outLines.Add("cd ..");
				outLines.Add("");
			}

			outLines.Add("rm -f *.asm 2> /dev/null && rm -f *.ihx 2> /dev/null; rm -f *.lk 2> /dev/null");
			outLines.Add("rm -f *.lst 2> /dev/null && rm -f *.sym 2> /dev/null;");
			outLines.Add("## rm -f *.noi 2> /dev/null");
			outLines.Add("");

			outLines.Add("## Run");
			outLines.Add("java -jar ~/Sega/Emulicious/Emulicious.jar output.sms");
			outLines.Add("##output.sms");

			File.WriteAllLines("build.sh", outLines.ToArray());
			if (inpLines.Length != outLines.Count)
			{
				var msg = $"INP : {inpLines.Length} NE OUT : {outLines.Count}";
				Console.WriteLine(msg);
			}
		}
	}
}