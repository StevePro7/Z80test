using System;
using System.IO;

namespace SplitWAVpacking
{	
    public class FileManager
    {
		const int maxFiles = 5;
		const int maxBlock = 16 * 1024;

		public void Process(string year, int bank, bool flag)
		{
		}

		public void Process(int index, string year, int bank, bool flag)
		{
			var inPrefix = $"0{index + 1}";
			var inRiff = inPrefix + ".wav";
			var inConv = inRiff + ".pcmenc";

			if (!File.Exists("input\\" + inRiff) || !File.Exists("input\\" + inConv))
			{
				if (!File.Exists("input\\" + inRiff)) Console.WriteLine("File not exist: " + inRiff);
				if (!File.Exists("input\\" + inConv)) Console.WriteLine("File not exist: " + inConv);
				return;
			}

			var inData = File.ReadAllBytes("input\\" + inConv);
			if (inData.Length > maxBlock)
			{
				Console.WriteLine($"File: {inConv} TOO LARGE!  {inData.Length} bytes");
				return;
			}

			var outRiff = $"Riff_{year}_{inRiff}";
			var outConv = $"Riff_{year}_{inConv}";
			File.Copy("input\\" + inRiff, "output\\" + outRiff, true);
			File.Copy("input\\" + inConv, "output\\" + outConv, true);

			//inFile = inFile.Replace("input\\", string.Empty);

			//var parts = inFile.Split(new char[] { '.' });
			//var num = parts[0];
			//var wav = parts[1];

			//var soundFile = $"Riff_{year}_{num}.{wav}";
			//int x = 7;
		}

		public void Convert()
		{
			System.Diagnostics.Process.Start("input\\riff.bat");
		}


		//public void BatchFile(string fileName)
		//{
		//    System.Diagnostics.Process.Start("riff.bat");
		//    var bytes = File.ReadAllBytes("RunningWithTheDevil.wav.pcmenc");
		//    var longs = bytes.Length;
		//}

		//public void Process(string year, int bank, bool flag)
		//{
		//    var data = fileName.Split(new char[] { '.' });
		//    var year = data[0];
		//    //var dirX = $"output/{year}";
		//    //if (!Directory.Exists(dirX))
		//    //{
		//    //	Directory.CreateDirectory(dirX);
		//    //}
		//}

		//public void Build(string fileName, int startBank, int year)
		//{
		//    var bytes = File.ReadAllBytes("input/" + fileName);
		//    var longs = bytes.Length;

		//    const byte banks = 6;
		//    var sizes = new int[banks] { 200, 200, 200, 200, 200, 200 };

		//    int point = 0;
		//    for (int index = 0; index < banks; index++)
		//    {
		//        var size = sizes[index] * 1024;
		//        var required = size;

		//        var slot = new byte[required];
		//        var count = 0;

		//        var inFile = File.Open("input/" + fileName, FileMode.Open);
		//        byte data = 0;
		//        using (BinaryReader b = new BinaryReader(inFile))
		//        {
		//            int length = (int)b.BaseStream.Length;

		//            b.BaseStream.Seek(point, SeekOrigin.Current);

		//            while (count < required)
		//            {
		//                data = b.ReadByte();
		//                slot[count] = data;
		//                count++;
		//                point++;
		//            }
		//        }

		//        var bank = "bank" + (startBank + index).ToString();
		//        var dirX = $"output/{year}/{bank}";
		//        if (!Directory.Exists(dirX))
		//        {
		//            //Directory.CreateDirectory(dirX);
		//        }

		//        var yearWithsuffix = (index + 1).ToString().PadLeft(2, '0');
		//        var outFileName = fileName.Replace(".wav", "_" + yearWithsuffix + ".wav");
		//            //var outFile = $"output/{year}/{bank}/{outFileName}";
		//        var outFile = $"output/{outFileName}";
		//        FileStream fs = new FileStream(outFile, FileMode.Create, FileAccess.ReadWrite);
		//        BinaryWriter bw = new BinaryWriter(fs);
		//        bw.Write(slot);
		//        bw.Close();
		//    }
		//}

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