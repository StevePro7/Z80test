using System.Collections.Generic;
using System.IO;

namespace BinaryFileWrite
{
    public class FileManager
    {
		public FileManager()
		{
		}

		public void Process()
		{
			var lines = new List<string>();
			var years = new int[] { 1978, 1979, 1980, 1981, 1982, 1984, 1986, 1988, 1991, 1995, 1998, 2012 };
			//var albums = 12;
			var bank = 16;
			var text = $"const unsigned char Riff_{0}_0{1}_wav_pcmenc[] = { 0 };";

			for (int index = 0; index < 12; index++)
			{
				for (int loop = 0; loop < 4; loop++)
				{
					lines.Clear();
					var album = years[index];
					var suff = "{ 0 };";
					var line = $@"const unsigned char Riff_{album}_0{(loop + 1)}_wav_pcmenc[] = " + suff;
					lines.Add(line);

					var path = $"bank{bank}.c";
					File.WriteAllLines(path, lines.ToArray());
					bank++;
				}
			}

		}
    }
}