setbatchlines, -1
PathLength := strlen("D:\Documents\Desktop\New folder\") +1
Loop, Files, D:\Documents\Desktop\New folder\*.*,			;Change this to the folder you want "C:\*.*"
									;D stand for directories, and R for all subfolders too
{ 
	Path = %A_LoopFileLongPath%
	
	PrefixLength = 8
	DataLength = 10
	
	Fullname := SubStr(Path, PathLength)
	
	Prefix := SubStr(Fullname,1 , PrefixLength - 1)
	Date_ := SubStr(Fullname,PrefixLength+1, DataLength)
	Suffix := SubStr(Fullname,PrefixLength + DataLength + 2, PathLength - PrefixLength + DataLength)
	
	MsgBox, _%Date_%_%Prefix%_%Suffix%_
	
	
} 
