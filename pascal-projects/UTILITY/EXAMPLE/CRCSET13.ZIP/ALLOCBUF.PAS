{
ALLOCBUF.PAS

Kevin Dean
Fairview Mall P.O. Box 55074
1800 Sheppard Avenue East
Willowdale, Ontario
CANADA    M2J 5B9
CompuServe ID: 76336,3114

March 24, 1991

	This module allocates a simple memory buffer whose size depends on the
amount of memory available.  The size of the buffer is halved each time the
allocation fails until memory is successfully allocated or the size goes below
the minimum size requested.

	This code is public domain.
}


unit AllocBuf;


interface


function BufAlloc(var Size : word; MinSize : word) : pointer;


implementation


{***}
{ Allocate a buffer of flexible size. }
function BufAlloc(var Size : word; MinSize : word) : pointer;

var
  Buffer : pointer;
  BufSize : word;

begin
{ Allocate as big a buffer as possible (at least MinSize). }
BufSize := Size;
repeat
  GetMem(Buffer, BufSize);
  if Buffer = nil then
    BufSize := BufSize div 2
until (Buffer <> nil) or (BufSize < MinSize);

{ Save buffer size. }
Size := BufSize;

BufAlloc := Buffer
end;


end.
