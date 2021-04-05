using System;
using System.IO;

namespace SplitWAVpacking
{	
    public class FileManager
    {
		const int maxFiles = 5;
		const int maxBlock = 16 * 1024;

		public void ProcessAll(string year, int bank, int bank2, bool flag)
		{
			for (int index = 0; index < maxFiles; index++)
			{
				var valid = Process(index);
				if (valid)
				{
					CopyLocal(index, year);
					if (!flag)
					{
						continue;
					}

					CopyRemote(index, year, bank);
					CopyRemote(index, year, bank2);
				}
			}
		}

		public void CopyRemote(int index, string year, int bank)
		{
			var inPrefix = $"0{index + 1}";
			var inRiff = inPrefix + ".wav";
			var inConv = inRiff + ".pcmenc";

			var outRiff = $"Riff_{year}_{inRiff}";
			var outConv = $"Riff_{year}_{inConv}";

			var dirX = "output\\" + year + "\\bank" + (bank + index).ToString();
			File.Copy("input\\" + inConv, dirX + "\\" + outConv, true);

			dirX += "\\raw";
			File.Copy("input\\" + inRiff, dirX + "\\" + outRiff, true);
		}

		public void CopyLocal(int index, string year)
		{
			var inPrefix = $"0{index + 1}";
			var inRiff = inPrefix + ".wav";
			var inConv = inRiff + ".pcmenc";

			var outRiff = $"Riff_{year}_{inRiff}";
			var outConv = $"Riff_{year}_{inConv}";
			File.Copy("input\\" + inRiff, "output\\" + outRiff, true);
			File.Copy("input\\" + inConv, "output\\" + outConv, true);
		}

		public bool Process(int index)
		{
			var inPrefix = $"0{index + 1}";
			var inRiff = inPrefix + ".wav";
			var inConv = inRiff + ".pcmenc";

			if (!File.Exists("input\\" + inRiff) || !File.Exists("input\\" + inConv))
			{
				if (!File.Exists("input\\" + inRiff)) Console.WriteLine("File not exist: " + inRiff);
				if (!File.Exists("input\\" + inConv)) Console.WriteLine("File not exist: " + inConv);
				return false;
			}

			var inData = File.ReadAllBytes("input\\" + inConv);
			if (inData.Length > maxBlock)
			{
				Console.WriteLine($"File: {inConv} TOO LARGE!  {inData.Length} bytes");
				return false;
			}

			return true;
		}

		public void Convert()
		{
			System.Diagnostics.Process.Start("input\\riff.bat");
		}


		public void Init(string year, int bank, bool flag)
		{
			if (!Directory.Exists("output"))
			{
				Directory.CreateDirectory("output");
			}

			if (!flag)
			{
				return;
			}

			var dirX = "output\\" + year;
			if (!Directory.Exists(dirX))
			{
				Directory.CreateDirectory(dirX);
			}

			for (int index = 0; index < maxFiles; index++)
			{
				dirX = "output\\" + year + "\\bank" + (bank + index).ToString();
				if (!Directory.Exists(dirX))
				{
					Directory.CreateDirectory(dirX);
				}
				dirX += "\\raw";
				if (!Directory.Exists(dirX))
				{
					Directory.CreateDirectory(dirX);
				}
			}
		}

	}
}