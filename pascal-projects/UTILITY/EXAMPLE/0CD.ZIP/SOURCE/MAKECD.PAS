Program MakeCD;

Var
	F				: File;
	I				: Word;
	S				: String;
	OK			: Boolean;
	Tracks	: Byte;

Procedure DoWrite(S : String);
Begin
	BlockWrite(F,S[1],Length(S));
End;

Begin
	If ParamCount<>1 Then Begin
		WriteLn('Invalid number of parameters; need filename');
		Halt(1);
	End;
	If ParamStr(1)='/?' Then Begin
		WriteLn('Usage: MAKECD filename');
		Halt(1);
	End;
	Assign(F,ParamStr(1));
	ReWrite(F,1);
	DoWrite(#$00#$00);																	{ Offset of VTOC	}
	DoWrite(#$FF#$FF);																	{ Offset of Sec16	}
	DoWrite(#$00#$00#$08);															{ Sector size			}
	DoWrite(#$00#$00#$08#$06);													{ Volume size			}
	Write('Enter # of audio tracks: ');
	ReadLn(I);
	Tracks:=I+1;
	DoWrite(#$01);
	DoWrite(Chr(Tracks));
	DoWrite(#$27#$3B#$46#$00);									{ Audio disk info	}
	DoWrite(#$42#$00#$00#$00#$00#$00#$00#$00#$00#$08);	{ UPC code				}
	For I:=1 To 3*38 Do
		DoWrite(#$00);																		{ Filenames				}
	Repeat
		Write('Enter volume label: ');
		ReadLn(S);
		If Length(S)>11 Then Begin
			OK:=FALSE;
			WriteLn('Volume label too long (>11 characters)');
			Continue;
		End;
		For I:=1 To Length(S) Do
			S[I]:=UpCase(S[I]);
		Ok:=TRUE;
		For I:=1 To Length(S) Do
			If Not (S[I] In ['A'..'Z','0'..'9','!','@','#','$','%','&','(',')','-','_',
				'{','}','''','`','~']) Then Begin
				WriteLn('Volume label contains illegal characters');
				OK:=FALSE;
			End;
	Until OK;

	S:=S+#0#0#0#0#0#0#0#0#0#0#0;												{ Volume label		}
	BlockWrite(F,S[1],12);

	DoWrite(#$01#$00);																	{ Sectors/cluster	}
	DoWrite(#$00#$00);																	{ Free clusters		}
	DoWrite(#$00#$08);																	{ Bytes/sector		}
	DoWrite(#$FF#$FF);																	{ Total clusters	}

	DoWrite(#$01#$01);																	{ Track lo / hi		}
	While Tracks>0 Do Begin
		Dec(Tracks);
		DoWrite(#$00#$00#$00#$00#$00);										{ Track info			}
	End;

	I:=FileSize(F);
	Seek(F,0);
	BlockWrite(F,I,2);
	Seek(F,I);

	I:=$FFFF;
	BlockWrite(F,I,2);																	{ End of VTOC			}
	BlockWrite(F,I,2);																	{ Size of VTOC		}
	DoWrite(#$00#$00);																	{ AX							}
	DoWrite(#$07#$07);																	{ Flags						}
	Close(F);
End.
