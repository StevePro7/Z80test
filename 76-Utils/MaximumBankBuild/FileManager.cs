using System.Collections.Generic;
using System.IO;

namespace BinaryFileWrite
{
	public class FileManager
	{
		public void Process(int numberBanks)
		{
			var lines = new List<string>();
			lines.Add(":: Link");
			lines.Add("sdcc --debug -o output.ihx -mz80 --no-std-crt0 --data-loc 0xC000 ^");
			lines.Add(@"..\crt0\crt0_sms.rel main.rel ^");

			int start = 2;
			for (int count = 0; count < numberBanks; count++)
			{
				int bank = start + count;
				Build(bank);
				Script(bank);

				lines.Add($"-Wl-b_BANK{bank}=0x8000 ^");
			}

			lines.Add(@"..\lib\SMSlib.lib ^");
			lines.Add(@"..\lib\PSGlib.rel ^");
			for (int count = 0; count < numberBanks; count++)
			{
				int bank = start + count;
				lines.Add($@"banks\bank{bank}.rel ^");
			}

			//lines.Add("gfx.rel ^");
			//lines.Add("psg.rel");
			File.WriteAllLines("build.bat", lines.ToArray());
		}

		public void Build(int bank)
		{
			string text = "bank" + bank;
			string dirx = $"banks/{text}";
			if (!Directory.Exists(dirx))
			{
				Directory.CreateDirectory(dirx);
			}

			File.WriteAllText($"{dirx}/{text}.txt", text.ToUpper());
		}

		public void Script(int bank)
		{
			string text = "bank" + bank;
			string dirx = $"scripts";
			if (!Directory.Exists(dirx))
			{
				Directory.CreateDirectory(dirx);
			}

			var lines = new List<string>();
			lines.Add($":: {text}");
			lines.Add("@echo off");
			lines.Add(string.Empty);

			lines.Add("cd ..");
			lines.Add("cd banks");
			lines.Add($"folder2c {text} {text} {bank}");
			lines.Add(string.Empty);

			lines.Add($"sdcc --debug -c --no-std-crt0 -mz80 --Werror --opt-code-speed --constseg {text.ToUpper()} {text}.c");
			lines.Add(string.Empty);

			lines.Add("del *.asm > nul; del *.lst > nul; del *.sym > nul");
			lines.Add(string.Empty);

			lines.Add("cd ..");
			lines.Add("cd scripts");

			File.WriteAllLines($"{dirx}/{text}.bat", lines.ToArray());
		}
	}
}
