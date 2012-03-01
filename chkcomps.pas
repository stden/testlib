{Checker: standard}
{Checker details: compare any number of 64-bit integers}
{Origin: testlib-kitten, chkcomps.pas}
{URL: http://acm.math.spbu.ru/soft/testlib}
{$I trans.inc}
{$Q+}
program macro;
uses testlib;
var jury, cont:extended;
    count:longint;
begin
  count:=0;
  while not ans.seekeof do begin
    if ouf.seekeof then quit (_Wa, '���������� ����� 䠩�� ���⭨��');
    ans.sp;
    jury:=ans.readreal;
    cont:=ouf.readreal;
    //jury64:=jury; // check if the jury answer fits in a signed 64-bit integer
    //if jury64<>jury then quit (_fail, 'Out of bounds:'+r2s (jury));
    inc (count);
    if int (jury)<>jury then quit (_fail, '��楫�� �᫮: '+r2s (jury));
    if int (cont)<>cont then quit (_pe, '��楫�� �᫮: '+r2s (cont));
    if jury<>cont then quit (_wa, 
      '�訡�� � �᫥ #'+i2s (count)+' (������ � 䠩�� ��� '+
        ans.spp +') ' +
      '�ॡ������� '+cp2s (jury)+', � ����祭� '+cp2s (cont));
  end;
  if not ouf.seekeof then quit (_wa, '����� ���ଠ�� � �⢥� ���⭨��');
  QUIT (_OK, i2s (count) + ' ' + RussianEnding (count, '�᫮', '�᫠', '�ᥫ'));
end.
