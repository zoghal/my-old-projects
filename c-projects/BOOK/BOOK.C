
#include <stdio.h>
#include <conio.h>
#define Begin {
#define End }
/* ************************************************************************ */
struct Book
 Begin
  char   Code[10],
	 Name[20],
	 WriterName[30],
	 CompilerName[30],
	 Tractarain[20],
	 Object[30],
	 Date[8],

	 Style;
 End;
/* ********************************* */
struct Person
 Begin
  char   Code[10],
	 Name[20],
	 Family[20],
	 FatherName[20],
	 Date[8],
	 EndDate[8],
	 Address[50];
 End;
/* ********************************* */
struct Job
 Begin
  char   PersonCode[10],
	 BookCode[20],
	 FirstDate[8],
	 EndDate[8],
	 Style;
 End;
/* ********************************* */
FILE  *BookBank;
FILE  *PersonBank;
FILE  *JobBank;
struct Book CBook, NBook;
struct Person CPerson, NPerson;
struct Job CJob, NJob;
/* ************************************************************************ */
char Menu1 ( void );
char AddJob ( void );
char Restore ( void );
char AddBook ( void );
char DelBook ( void );
char AddPerson ( void );
char DelPerson ( void );
char SearchForBook ( void );
char SearchForPerson ( void );
/* ************************************************************************ */
main()
Begin
 while ( 1 == 1 )
  Begin
   switch ( Menu1 ( ) )
    Begin
     case '1' :
      switch ( AddJob ( ) )
       Begin
	case 0 :
	 printf ( "\nRecord Saved.\nPress Enter To Continue..." );
	 do
	  Begin
	  End while ( getch ( ) != 13 );
	 break;
	case 1 :
	 printf ( "\nWarning : \nFile Not Opened...\nPress Enter To Continue... " );
	 do
	  Begin
	  End while ( getch ( ) != 13 );
	 break;
       End
      break;
     case '2' :
      switch ( Restore ( ) )
       Begin
	case 0 :
	 clrscr ( );
	 printf ( "Restore recorded\nPress Enter To Continue..." );
	 break;
	case 1 :
	 clrscr ( );
	 printf ( "Warning :\nFile Not Opened...\nPress Enter To Continue..." );
	 break;
	case 2 :
	 clrscr ( );
	 printf ( "Warning :\nRecord Not Found...\nPress Enter To Continue..." );
	 break;
       End
      do
       Begin
       End while ( getch ( ) != 13 );
      break;
     case '3' :
      switch ( SearchForBook ( ) )
       Begin
	case 0 :
	 clrscr ( );
	 printf ( "Name Of Person: %s\nFamily : %s\nName Of Book : %s\nName Of WriterBook : %s\nStartDate : %s\nEndDate : %s\nPress Enter To Continue...",
		   NPerson.Name, NPerson.Family, NBook.Name, NBook.WriterName, NJob.FirstDate, NJob.EndDate );
	 break;
	case 1 :
	 clrscr ( );
	 printf ( "Warning :\nBook's Bank Not Opened...\nPress Enter To Continue..." );
	 break;
	case 2 :
	 clrscr ( );
	 printf ( "Warning :\nBook Not Found...\nPress Enter To Continue..." );
	 break;
	case 3 :
	 clrscr ( );
	 printf ( "Warning :\nJob's Bank Not Opened...\nPress Enter To Continue..." );
	 break;
	case 4 :
	 clrscr ( );
	 printf ( "Warning :\nJob Not Found...\nPress Enter To Continue..." );
	 break;
	case 5 :
	 clrscr ( );
	 printf ( "Warning :\nPerson's Bank Not Opened...\nPress Enter To Continue..." );
	 break;
	case 6 :
	 clrscr ( );
	 printf ( "Warning :\nPerson Not Found...\nPress Enter To Continue..." );
	 break;
       End
      do
       Begin
       End while ( getch ( ) != 13 );
      break;
     case '4' :
      switch ( SearchForPerson ( ) )
       Begin
	case 0 :
	 clrscr ( );
	 printf ( "Name Of Person: %s\nFamily : %s\nName Of Book : %s\nName Of WriterBook : %s\nStartDate : %s\nEndDate : %s\nPress Enter To Continue...",
		   NPerson.Name, NPerson.Family, NBook.Name, NBook.WriterName, NJob.FirstDate, NJob.EndDate );
	 break;
	case 1 :
	 clrscr ( );
	 printf ( "Warning :\nPerson's Bank Not Opened...\nPress Enter To Continue..." );
	 break;
	case 2 :
	 clrscr ( );
	 printf ( "Warning :\nPerson Not Found...\nPress Enter To Continue..." );
	 break;
	case 3 :
	 clrscr ( );
	 printf ( "Warning :\nJob's Bank Not Opened...\nPress Enter To Continue..." );
	 break;
	case 4 :
	 clrscr ( );
	 printf ( "Warning :\nJob Not Found...\nPress Enter To Continue..." );
	 break;
	case 5 :
	 clrscr ( );
	 printf ( "Warning :\nBook's Bank Not Opened...\nPress Enter To Continue..." );
	 break;
	case 6 :
	 clrscr ( );
	 printf ( "Warning :\nBook Not Found...\nPress Enter To Continue..." );
	 break;
       End
      do
       Begin
       End while ( getch ( ) != 13 );
      break;
     case '5' :
      switch ( AddBook ( ) )
       Begin
	case 0 :
	 clrscr ( );
	 printf ( "\nRecord Saved.\nPress Enter To Continue..." );
	 break;
	case 1 :
	 clrscr ( );
	 printf ( "\nWarning : \nFile Not Opened...\nPress Enter To Continue... " );
	 break;
       End
      do
       Begin
       End while ( getch ( ) != 13 );
      break;
     case '6' :
      switch ( DelBook ( ) )
       Begin
	case 0 :
	 clrscr ( );
	 printf ( "\nRecord Deleted.\nPress Enter To Continue..." );
	 break;
	case 1 :
	 clrscr ( );
	 printf ( "\nWarning : \nFile Not Opened...\nPress Enter To Continue... " );
	 break;
	case 2 :
	 clrscr ( );
	 printf ( "\nWarning : \nRecord Not Found...\nPress Enter To Continue... " );
	 break;
       End
      do
       Begin
       End while ( getch ( ) != 13 );
      break;
     case '7' :
      switch ( AddPerson ( ) )
       Begin
	case 0 :
	 clrscr ( );
	 printf ( "\nRecord Saved.\nPress Enter To Continue..." );
	 break;
	case 1 :
	 clrscr ( );
	 printf ( "\nWarning : \nFile Not Opened...\nPress Enter To Continue... " );
	 break;
       End
      do
       Begin
       End while ( getch ( ) != 13 );
      break;
     case '8' :
      switch ( DelPerson ( ) )
       Begin
	case 0 :
	 clrscr ( );
	 printf ( "\nRecord Deleted.\nPress Enter To Continue..." );
	 break;
	case 1 :
	 clrscr ( );
	 printf ( "\nWarning : \nFile Not Opened...\nPress Enter To Continue... " );
	 break;
	case 2 :
	 clrscr ( );
	 printf ( "\nWarning : \nRecord Not Found...\nPress Enter To Continue... " );
	 break;
       End
      do
       Begin
       End while ( getch ( ) != 13 );
      break;
     case '9' :
      clrscr ( );
      return;
    End
  End;
End
/* ************************************************************************ */
char Menu1 ( void )
 Begin
  char Choice;
  clrscr ( );
  printf ( " 1 ) Give up Book...\n 2 ) Restore Book...\n" );
  printf ( " 3 ) Search for Book...\n 4 ) Search for Person...\n" );
  printf ( " 5 ) Add Book to Bank...\n 6 ) Delete Book from Bank...\n" );
  printf ( " 7 ) Add Person to list...\n 8 ) Delete Person from list...\n" );
  printf ( " 9 ) Exit" );
  printf ( "\n Enter Choice... " );
  do
   Begin
    Choice = getch ( );
   End while ( ( Choice != '1' ) && ( Choice != '2' ) &&
	       ( Choice != '3' ) && ( Choice != '4' ) &&
	       ( Choice != '5' ) && ( Choice != '6' ) &&
	       ( Choice != '7' ) && ( Choice != '8' ) &&
	       ( Choice != '9' ) );
  return ( Choice );
 End
/* ************************************************************************ */
char AddJob ( void )
 Begin
  clrscr ( );
  printf ( "Enter PersonCode : " );
  scanf ( "%s", &CJob.PersonCode );
  printf ( "Enter BookCode : " );
  scanf ( "%s", &CJob.BookCode );
  printf ( "Enter FirstDate : " );
  scanf ( "%s", &CJob.FirstDate );
  printf ( "Enter EndDate : " );
  scanf ( "%s", &CJob.EndDate );
  CJob.Style = 'G';
  if ( ( JobBank = fopen ( "JobBank.dat", "a + ( a + b )" ) ) == NULL )
   Begin
    return ( 1 );
   End
  else
   Begin
    fwrite ( &CJob, sizeof ( struct Job ), 1, JobBank );
    fclose ( JobBank );
    return ( 0 );
   End
 End
/* ************************************************************************ */
char Restore ( void )
 Begin
  int Position = 0;
  clrscr ( );
  printf ( "Enter PersonCode : " );
  scanf ( "%s", &CJob.PersonCode );
  printf ( "Enter BookCode : " );
  scanf ( "%s", &CJob.BookCode );
  if ( ( JobBank = fopen ( "Jobbank.dat", "r+(w+b)" ) ) == NULL )
   Begin
    return ( 1 );
   End
  else
   Begin
    while ( !feof ( JobBank ) )
     Begin
      fread ( &NJob, sizeof ( struct Job ), 1, JobBank );
      Position++;
      if ( ( !strcmp ( strupr ( CJob.PersonCode ), strupr ( NJob.PersonCode ) ) ) &&
	   ( !strcmp ( strupr ( CJob.BookCode ), strupr ( NJob.BookCode ) ) ) &&
	   ( NJob.Style != 'R' ) )
       Begin
	fseek ( JobBank, sizeof ( struct Job ) * --Position, 0 );
	NJob.Style = 'R';
	fwrite ( &NJob, sizeof ( struct Job ), 1, JobBank );
	fclose ( JobBank );
	return ( 0 );
       End
     End;
    return ( 2 );
   End;
 End
/* ************************************************************************ */
char AddBook ( void )
 Begin
  clrscr ( );
  printf ( "Enter Code : " );
  scanf ( "%s", &CBook.Code );
  printf ( "Enter Name : " );
  scanf ( "%s", &CBook.Name );
  printf ( "Enter WriterName : " );
  scanf ( "%s", &CBook.WriterName );
  printf ( "Enter CompilerName : " );
  scanf ( "%s", &CBook.CompilerName );
  printf ( "Enter Tractarain : " );
  scanf ( "%s", &CBook.Tractarain );
  printf ( "Enter Object : " );
  scanf ( "%s", &CBook.Object );
  printf ( "Enter Date : " );
  scanf ( "%s", &CBook.Date );
  CBook.Style = 'A';
  if ( ( BookBank = fopen ( "BookBank.dat", "a + ( a + b )" ) ) == NULL )
   Begin
    return ( 1 );
   End
  else
   Begin
    fwrite ( &CBook, sizeof ( struct Book ), 1, BookBank );
    fclose ( BookBank );
    return ( 0 );
   End
 End
/* ************************************************************************ */
char DelBook ( void )
 Begin
  int Position = 0;
  clrscr ( );
  printf ( "Enter BookName : " );
  scanf ( "%s", &CBook.Name );
  printf ( "Enter WriterName : " );
  scanf ( "%s", &CBook.WriterName );
  if ( ( BookBank = fopen ( "BookBank.dat", "r+(w+b)" ) ) == NULL )
   Begin
    return ( 1 );
   End
  else
   Begin
    while ( !feof ( BookBank ) )
     Begin
      fread ( &NBook, sizeof ( struct Book ), 1, BookBank );
      Position++;
      if ( ( !strcmp ( strupr ( CBook.Name ), strupr ( NBook.Name ) ) ) &&
	   ( !strcmp ( strupr ( CBook.WriterName ), strupr ( NBook.WriterName ) ) ) )
       Begin
	fseek ( BookBank, sizeof ( struct Book ) * --Position, 0 );
	strcpy ( NBook.Name,"@");
	fwrite ( &NBook, sizeof ( struct Book ), 1, BookBank );
	fclose ( BookBank );
	return ( 0 );
       End
     End;
    return ( 2 );
   End;
 End
/* ************************************************************************ */
char AddPerson ( void )
 Begin
  clrscr ( );
  printf ( "Enter Code : " );
  scanf ( "%s", &CPerson.Code );
  printf ( "Enter Name : " );
  scanf ( "%s", &CPerson.Name );
  printf ( "Enter Family : " );
  scanf ( "%s", &CPerson.Family );
  printf ( "Enter FatherName : " );
  scanf ( "%s", &CPerson.FatherName );
  printf ( "Enter Date : " );
  scanf ( "%s", &CPerson.Date );
  printf ( "Enter EndDate : " );
  scanf ( "%s", &CPerson.EndDate );
  printf ( "Enter Address : " );
  scanf ( "%s", &CPerson.Address );
  if ( ( PersonBank = fopen ( "PeBank.dat", "a + ( a + b )" ) ) == NULL )
   Begin
    return ( 1 );
   End
  else
   Begin
    fwrite ( &CPerson, sizeof ( struct Person ), 1, PersonBank );
    fclose ( PersonBank );
    return ( 0 );
   End
 End
/* ************************************************************************ */
char DelPerson ( void )
 Begin
  int Position = 0;
  clrscr ( );
  printf ( "Enter Name : " );
  scanf ( "%s", &CPerson.Name );
  printf ( "Enter Family : " );
  scanf ( "%s", &CPerson.Family );
  printf ( "Enter FatherName : " );
  scanf ( "%s", &CPerson.FatherName );
  if ( ( PersonBank = fopen ( "PeBank.dat", "r+(w+b)" ) ) == NULL )
   Begin
    return ( 1 );
   End
  else
   Begin
    while ( !feof ( PersonBank ) )
     Begin
      fread ( &NPerson, sizeof ( struct Person ), 1, PersonBank );
      Position++;
      if ( ( !strcmp ( strupr ( CPerson.Name ), strupr ( NPerson.Name ) ) ) &&
	   ( !strcmp ( strupr ( CPerson.Family ), strupr ( NPerson.Family ) ) ) &&
	   ( !strcmp ( strupr ( CPerson.FatherName ), strupr ( NPerson.FatherName ) ) ) )
       Begin
	fseek ( PersonBank, sizeof ( struct Person ) * --Position, 0 );
	strcpy ( NPerson.Name,"@");
	fwrite ( &NPerson, sizeof ( struct Person ), 1, PersonBank );
	fclose ( PersonBank );
	return ( 0 );
       End
     End;
    return ( 2 );
   End;
 End
/* ************************************************************************ */
char SearchForBook ( void )
 Begin
  clrscr ( );
  printf ( "Enter Name : " );
  scanf ( "%s", &CBook.Name );
  printf ( "Enter WriterName : " );
  scanf ( "%s", &CBook.WriterName );
  if ( ( BookBank = fopen ( "BookBank.dat", "r + ( r + b )" ) ) == NULL )
   Begin
    return ( 1 );
   End
  else
   Begin
    while ( !feof ( BookBank ) )
     Begin
      fread ( &NBook, sizeof ( struct Book ), 1, BookBank );
      if ( ( !strcmp ( strupr ( CBook.Name ), strupr ( NBook.Name ) ) ) &&
	   ( !strcmp ( strupr ( CBook.WriterName ), strupr ( NBook.WriterName ) ) ) )
       Begin
	fclose ( BookBank );
	break;
       End
     End
     if ( !( ( !strcmp ( strupr ( CBook.Name ), strupr ( NBook.Name ) ) ) &&
	   ( !strcmp ( strupr ( CBook.WriterName ), strupr ( NBook.WriterName ) ) ) ) )
      Begin
       fclose ( BookBank );
       return ( 2 );
      End
    if ( ( JobBank = fopen ( "JobBank.dat", "r + ( r + b )" ) ) == NULL )
     Begin
      return ( 3 );
     End
    else
     Begin
      strcpy ( NJob.BookCode, "\0");
      while ( !feof ( JobBank ) )
       Begin
	fread ( &CJob, sizeof ( struct Job ), 1, JobBank );
	if ( !strcmp ( strupr ( CJob.BookCode ), strupr ( NBook.Code ) ) &&
	     ( CJob.Style != 'R' )  )
	 Begin
	  NJob = CJob;
	 End
       End
      fclose ( JobBank );
      if ( strcmp ( strupr ( NJob.BookCode ), strupr ( NBook.Code ) ) )
       Begin
	return ( 4 );
       End
      if ( ( PersonBank = fopen ( "PeBank.dat", "r + ( r + b )" ) ) == NULL )
       Begin
	return ( 5 );
       End
      else
       Begin
	strcpy ( NPerson.Name, "@" );
	while ( !feof ( PersonBank ) )
	 Begin
	  fread ( &CPerson, sizeof ( struct Person ), 1, PersonBank );
	  if ( !strcmp ( strupr ( CPerson.Code ), strupr ( NJob.PersonCode ) ) )
	   Begin
	    NPerson = CPerson;
	   End
	 End
	if ( strcmp ( strupr ( NJob.PersonCode ), strupr ( NPerson.Code ) ) )
	 Begin
	  return ( 6 );
	 End
       End
     End
   End
  return ( 0 );
 End
/* ************************************************************************ */
char SearchForPerson ( void )
 Begin
  clrscr ( );
  printf ( "Enter Name : " );
  scanf ( "%s", &CPerson.Name );
  printf ( "Enter Family : " );
  scanf ( "%s", &CPerson.Family );
  if ( ( PersonBank = fopen ( "PeBank.dat", "r + ( r + b )" ) ) == NULL )
   Begin
    return ( 1 );
   End
  else
   Begin
    while ( !feof ( PersonBank ) )
     Begin
      fread ( &NPerson, sizeof ( struct Person ), 1, PersonBank );
      if ( ( !strcmp ( strupr ( CPerson.Name ), strupr ( NPerson.Name ) ) ) &&
	   ( !strcmp ( strupr ( CPerson.Family ), strupr ( NPerson.Family ) ) ) )
       Begin
	fclose ( PersonBank );
	break;
       End
     End
      if ( !( ( !strcmp ( strupr ( CPerson.Name ), strupr ( NPerson.Name ) ) ) &&
	    ( !strcmp ( strupr ( CPerson.Family ), strupr ( NPerson.Family ) ) ) ) )
      Begin
       fclose ( PersonBank );
       return ( 2 );
      End
    if ( ( JobBank = fopen ( "JobBank.dat", "r + ( r + b )" ) ) == NULL )
     Begin
      return ( 3 );
     End
    else
     Begin
      strcpy ( NJob.BookCode, "\0" );
      while ( !feof ( JobBank ) )
       Begin
	fread ( &CJob, sizeof ( struct Job ), 1, JobBank );
	if ( !strcmp ( strupr ( CJob.PersonCode ), strupr ( NPerson.Code ) ) )
	 Begin
	  NJob = CJob;
	 End
       End
      fclose ( JobBank );
      if ( strcmp ( strupr ( NJob.PersonCode ), strupr ( NPerson.Code ) ) )
       Begin
	return ( 4 );
       End
      if ( ( BookBank = fopen ( "BookBank.dat", "r + ( r + b )" ) ) == NULL )
       Begin
	return ( 5 );
       End
      else
       Begin
	strcpy ( NBook.Name, "@" );
	while ( !feof ( BookBank ) )
	 Begin
	  fread ( &CBook, sizeof ( struct Book ), 1, BookBank );
	  if ( !strcmp ( strupr ( CBook.Code ), strupr ( NJob.BookCode ) ) )
	   Begin
	    NBook = CBook;
	   End
	 End
	if ( strcmp ( strupr ( NJob.BookCode ), strupr ( NBook.Code ) ) )
	 Begin
	  return ( 6 );
	 End
       End
     End
   End
  return ( 0 );
 End
/* ************************************************************************ */
