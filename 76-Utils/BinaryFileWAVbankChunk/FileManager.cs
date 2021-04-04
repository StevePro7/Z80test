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

        public void BatchFile(string fileName)
        {
            System.Diagnostics.Process.Start("riff.bat");
            var bytes = File.ReadAllBytes("RunningWithTheDevil.wav.pcmenc");
            var longs = bytes.Length;
        }

        public void Process(string fileName, int startBank)
        {
            //var data = fileName.Split(new char[] { '.' });
            //var year = data[0];
            //var dirX = $"output/{year}";
            //if (!Directory.Exists(dirX))
            //{
            //	Directory.CreateDirectory(dirX);
            //}
        }

        public void Build(string fileName, int startBank, int year)
        {
            var bytes = File.ReadAllBytes("input/" + fileName);
            var longs = bytes.Length;

            const byte banks = 6;
            var sizes = new int[banks] { 200, 200, 200, 200, 200, 200 };

            int point = 0;
            for (int index = 0; index < banks; index++)
            {
                var size = sizes[index] * 1024;
                var required = size;

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
                    //Directory.CreateDirectory(dirX);
                }

                var yearWithsuffix = (index + 1).ToString().PadLeft(2, '0');
                var outFileName = fileName.Replace(".wav", "_" + yearWithsuffix + ".wav");
                    //var outFile = $"output/{year}/{bank}/{outFileName}";
                var outFile = $"output/{outFileName}";
                FileStream fs = new FileStream(outFile, FileMode.Create, FileAccess.ReadWrite);
                BinaryWriter bw = new BinaryWriter(fs);
                bw.Write(slot);
                bw.Close();
            }
        }
    }
}