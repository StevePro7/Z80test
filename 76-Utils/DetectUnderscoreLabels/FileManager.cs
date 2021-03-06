using System.Collections.Generic;
using System.IO;

namespace BinaryFileWrite
{
	public class FileManager
	{
		public void GetFiles()
		{
			Files = Directory.GetFiles("input");
		}

		public void Process(string path)
		{
			Lines = File.ReadAllLines(path);
		}

		public string[] Files { get; private set; }
		public string[] Lines { get; private set; }
	}
}
