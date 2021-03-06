using System.Collections.Generic;
using System.IO;

namespace BinaryFileWrite
{
	public class FileManager
	{
		public void Process(string path)
		{
			Lines = File.ReadAllLines("input/" + path);
		}

		public void Saving(List<string> outLines, string path)
		{
			if (!Directory.Exists("output"))
			{
				Directory.CreateDirectory("output");
			}

			File.WriteAllLines("output/" + path, outLines.ToArray());
		}

		public string[] Lines { get; private set; }
	}
}
