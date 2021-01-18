using System;
using System.Collections.Generic;
using System.IO;

namespace BinaryFileWrite
{
	public class FileManager
	{
		public FileManager()
		{
			ByteObjectList = new List<ByteObject>();
		}

		public void Process(string fileName)
		{
			ByteObjectList.Clear();

			var lines = File.ReadAllLines("input/" + fileName);
			var count = 0;
			for (int index = 0; index < lines.Length; index++)
			{
				var line = lines[index];
				if (line.Contains("incbin ..."))
				{
					var info = String.Empty;
					if (lines[index-1].Contains("_DATA_"))
					{
						info = lines[index - 2];
					}
					else
					{
						info = lines[index - 1];
					}
					
					ByteObject obj = CalcByteObject(info, count++);
					ByteObjectList.Add(obj);

					var destFile = String.Format(@"""data/{0}""", obj.ByteString);
					line = line.Replace("...", destFile);
					lines[index] = line;
				}
			}

			File.WriteAllLines("output/main.asm", lines);
		}

		public ByteObject CalcByteObject(string info, int count)
		{
			var data = info.Split(new char[] { ' ' });
			var starts = data[3];
			var finish = data[5];

			var filename = String.Format("File{0}_{1}_{2}.dat", count.ToString("D2"), starts.PadLeft(5, '0'), finish.PadLeft(5, '0'));
			return new ByteObject
			{
				ByteStarts = starts,
				ByteFinish = finish,
				ByteString = filename
			};
		}

		public void Setup()
		{
			if (!Directory.Exists("output"))
			{
				Directory.CreateDirectory("output");
			}
			if (!Directory.Exists("output/data"))
			{
				Directory.CreateDirectory("output/data");
			}
		}

		public IList<ByteObject> ByteObjectList { get; private set; }
	}
}
