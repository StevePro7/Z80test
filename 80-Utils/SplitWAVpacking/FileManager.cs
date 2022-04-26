using System;
using System.IO;

namespace SplitWAVpacking
{	
    public class FileManager
    {
		const int maxFiles = 7;
		const int maxBlock = 16 * 1024;

		public void ProcessAll(string year, int bank, int bank2, bool flag)
		{
			for (int index = 0; index < maxFiles; index++)
			{
				var valid = Process(index);
				if (valid)
				{
					if (!flag)
					{
						continue;
					}

					if (year.Equals("test"))
					{
						CopyRemote(index, year, bank);
					}
					else
					{
						CopyRemote(index, year, bank2);
					}
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

	


		public void Init(string suff, int bank)
		{
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
				dirX = $"output/banks/bank{idx + bank}";
				if (!Directory.Exists(dirX))
				{
					Directory.CreateDirectory(dirX);
				}
			}

			//for (int index = 0; index < maxFiles; index++)
			//{
			//	dirX = "output\\" + year + "\\bank" + (bank + index).ToString();
			//	if (!Directory.Exists(dirX))
			//	{
			//		Directory.CreateDirectory(dirX);
			//	}
			//	dirX += "\\raw";
			//	if (!Directory.Exists(dirX))
			//	{
			//		Directory.CreateDirectory(dirX);
			//	}
			//}
		}

		public int MaxFiles { get; private set; }
	}
}