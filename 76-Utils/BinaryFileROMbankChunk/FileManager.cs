using System.IO;

namespace BinaryFileWrite
{
	public class FileManager
	{
		public FileManager()
		{
			if (!Directory.Exists("output"))
			{
				Directory.CreateDirectory("output");
			}
		}

		public void Process(string fileName, int startBank)
		{
			var data = fileName.Split(new char[] { '.' });
			var year = data[0];
			var dirX = $"output/{year}";
			if (!Directory.Exists(dirX))
			{
				Directory.CreateDirectory(dirX);
			}
		}

		public void Build(string fileName, int startBank, int year)
		{
			int block = 16 * 1024;          // 16 KB

			var bytes = File.ReadAllBytes("input/" + fileName);
			var longs = bytes.Length;
			int files = longs / block + 1;

			for (int index = 0; index < files; index++)
			{
				int point = (index + 0) * block;
				//int rght = (index + 1) * block - 1;

				var required = block;
				var temps = (index + 1) * block;
				if (temps > longs)
				{
					var diffs = (index + 0) * block;
					required = longs - diffs;
				}

				var slot = new byte[required];
				var count = 0;

				var inFile = File.Open("input/" + fileName, FileMode.Open);
				byte data = 0;
				using (BinaryReader b = new BinaryReader(inFile))
				{
					int length = (int)b.BaseStream.Length;

					b.BaseStream.Seek(point, SeekOrigin.Current);

					while (count < required)
					{
						data = b.ReadByte();
						slot[count] = data;
						count++;
						point++;
					}
				}

				var bank = "bank" + (startBank + index).ToString();
				var dirX = $"output/{year}/{bank}";
				if (!Directory.Exists(dirX))
				{
					Directory.CreateDirectory(dirX);
				}

				var yearWithsuffix = (index + 1).ToString().PadLeft(2, '0');
				var outFileName = fileName.Replace(year.ToString(), year + "_" + yearWithsuffix);
				var outFile = $"output/{year}/{bank}/{outFileName}";
				FileStream fs = new FileStream(outFile, FileMode.Create, FileAccess.ReadWrite);
				BinaryWriter bw = new BinaryWriter(fs);
				bw.Write(slot);
				bw.Close();
			}
		}

	}
}
