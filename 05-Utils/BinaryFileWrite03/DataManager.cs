using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;

namespace BinaryFileWrite
{
	public class DataManager
	{
		public void Process(string fileName, IList<ByteObject> byteObjectList)
		{
			foreach (ByteObject obj in byteObjectList)
			{
				Process(fileName, obj);
			}
		}

		public void Process(string fileName, ByteObject obj)
		{
			int starts = Int32.Parse(obj.ByteStarts, NumberStyles.HexNumber);
			int finish = Int32.Parse(obj.ByteFinish, NumberStyles.HexNumber);
			int diff = finish - starts + 1;
			int pos = starts;
			int required = diff;

			// https://www.dotnetperls.com/seek
			var outArray = new byte[required];

			// 1.
			// Open as binary file.
			var inFile = "input/" + fileName;
			var outFile = "output/data/" + obj.ByteString;

			using (BinaryReader b = new BinaryReader(File.Open(inFile, FileMode.Open)))
			{
				int length = (int)b.BaseStream.Length;
				int count = 0;

				// 3.
				// Seek the required index.
				b.BaseStream.Seek(pos, SeekOrigin.Begin);

				// 4.
				// Slow loop through the bytes.
				while (pos < length && count < required)
				{
					byte y = b.ReadByte();
					// 5.
					// Increment the variables.

					outArray[count] = y;
					pos++;
					count++;
				}
			}

			FileStream fs = new FileStream(outFile, FileMode.Create, FileAccess.ReadWrite);
			BinaryWriter bw = new BinaryWriter(fs);
			bw.Write(outArray);
			bw.Close();
		}
	}
}
