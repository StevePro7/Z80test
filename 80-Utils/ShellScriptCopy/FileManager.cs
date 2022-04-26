using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;

namespace SplitWAVpacking
{	
    public class FileManager
    {
		const int maxBlock = 16 * 1024;
		List<string> lines;

		public void ProcessAll(string year, int bank)
		{
			for (int idx = 0; idx < MaxFiles; idx++)
			{
				var valid = Process(idx);
				if (valid)
				{
					CopyRemote(idx, year, bank);
					CopyScript(bank, "bank" + (idx + bank));
				}
			}
		}

		public void CopyScript(int bank, string text)
		{
			var line = text.ToUpper();
			lines.Clear();

			lines.Add($":: {text}");
			lines.Add("@echo off");

			lines.Add("");
			lines.Add("cd ..");
			lines.Add("cd banks");

			lines.Add($"folder2c {text} {text} {bank}");
			lines.Add("");

			lines.Add($"sdcc --debug -c --no-std-crt0 -mz80 --Werror --opt-code-speed --constseg {line} {text}.c");
			lines.Add("");

			lines.Add("del *.asm > nul; del *.lst > nul; del *.sym > nul");
			lines.Add("");

			lines.Add("cd ..");
			lines.Add("cd scripts");

			var path = $"{text}.bat";
			File.WriteAllLines("output/scripts/" + path, lines.ToArray());
		}

		public void CopyRemote(int idx, string year, int bank)
		{
			var inPrefix = $"0{idx + 1}";
			var inRiff = inPrefix + ".wav";
			var inConv = inRiff + ".pcmenc";

			var outRiff = $"{year}{inRiff}";
			var outConv = $"{year}{inConv}";

			var dirX = $"output/banks/bank{idx + bank}/";
			File.Copy("input/" + inConv, dirX + outConv, true);

			dirX += "raw/";
			File.Copy("input/" + inRiff, dirX + outRiff, true);
		}

		public bool Process(int idx)
		{
			var inPrefix = $"0{idx + 1}";
			var inRiff = inPrefix + ".wav";
			var inConv = inRiff + ".pcmenc";

			if (!File.Exists("input/" + inRiff) || !File.Exists("input/" + inConv))
			{
				if (!File.Exists("input/" + inRiff))
				{
					Console.WriteLine("File not exist: " + inRiff);
				}
				if (!File.Exists("input/" + inConv))
				{
					Console.WriteLine("File not exist: " + inConv);
				}
				return false;
			}

			var inData = File.ReadAllBytes("input/" + inConv);
			if (inData.Length > maxBlock)
			{
				Console.WriteLine($"File: {inConv} TOO LARGE!  {inData.Length} bytes");
				return false;
			}

			return true;
		}

		public void Init(string suff, int bank)
		{
			lines = new List<string>();

			if (Directory.Exists("output"))
			{
				Directory.Delete("output", true);
			}

			if (!Directory.Exists("output"))
			{
				Directory.CreateDirectory("output");
			}

			var dirX = "output/banks";
			if (!Directory.Exists(dirX))
			{
				Directory.CreateDirectory(dirX);
			}
			dirX = "output/scripts";
			if (!Directory.Exists(dirX))
			{
				Directory.CreateDirectory(dirX);
			}

			MaxFiles = Directory.GetFiles("input", "*.wav").Length;
			for (int idx = 0; idx < MaxFiles; idx++)
			{
				dirX = $"output/banks/bank{idx + bank}/";
				if (!Directory.Exists(dirX))
				{
					Directory.CreateDirectory(dirX);
					Directory.CreateDirectory(dirX + "raw");
				}
			}
		}

		public int MaxFiles { get; private set; }
	}
}