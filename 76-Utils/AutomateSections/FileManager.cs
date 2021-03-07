using System.Collections.Generic;
using System.IO;

namespace BinaryFileWrite
{
	public class FileManager
	{
		public void GetFiles()
		{
			Files = Directory.GetFiles("input");

			var delFiles = Directory.GetFiles("output");
			foreach (var delFile in delFiles)
			{
				File.Delete(delFile);
			}
		}

		public void Process(string path)
		{
			Lines = File.ReadAllLines(path);
		}

		public void Saving(List<string> outLines, string path)
		{
			if (!Directory.Exists("output"))
			{
				Directory.CreateDirectory("output");
			}

			path = path.Replace("input", string.Empty);
			File.WriteAllLines("output/" + path, outLines.ToArray());
		}

		public string[] Files { get; private set; }
		public string[] Lines { get; private set; }
	}
}
