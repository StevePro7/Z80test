using System;
using System.IO;

namespace BinaryFileWrite
{
	public class FileManager
	{
		public void Process(string path)
		{
			Bytes = File.ReadAllBytes("input/" + path);
		}

		public byte[] Bytes { get; private set; }
	}
}
