// -- Ранговая система.

_nameplayer = name player;
if ((_nameplayer find "CS" !=-1) || (_nameplayer find "CPL" !=-1)) then 
{
	player setRank "CORPORAL"
} 
else 
{
	if ((_nameplayer find "MSG" !=-1) || (_nameplayer find "SG" !=-1) || (_nameplayer find "SSG" !=-1) || (_nameplayer find "SPSG" !=-1)) then 
	{
		player setRank "SERGEANT"
	} 
	else 
	{
		if ((_nameplayer find "MLT" !=-1) || (_nameplayer find "LT" !=-1) || (_nameplayer find "SLT" !=-1) || (_nameplayer find "SPLT" !=-1)) then 
		{
			player setRank "LIEUTENANT"
		} 
		else 
		{
			if ((_nameplayer find "CPT" !=-1) || (_nameplayer find "MAJ" !=-1)) then 
			{
				player setRank "CAPTAIN"
			} 
			else 
			{
				if ((_nameplayer find "COL" !=-1) || (_nameplayer find "CC" !=-1) || (_nameplayer find "MC" !=-1) || (_nameplayer find "GEN" !=-1)) then 
				{
					player setRank "COLONEL"
				}
			}
		}
	}
};