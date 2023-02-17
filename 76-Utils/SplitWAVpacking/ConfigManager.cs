using System;
using System.Configuration;

namespace SplitWAVpacking
{
	public class ConfigManager
	{
		public void Init()
		{
			Year = ConfigurationManager.AppSettings["year"];
			Bank = Convert.ToInt32(ConfigurationManager.AppSettings["bank"]);
			//Flag = Convert.ToBoolean(ConfigurationManager.AppSettings["flag"]);
		}

		public string Year { get; private set; }
		public int Bank { get; private set; }
		//public bool Flag { get; private set; }
	}
}
