unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, IOUtils;

type

  TForm2 = class(TForm)
    Button1: TButton; // Label For Giving Image Path
    Image1: TImage; // To Display Selecetd Image .
    flicData: TRichEdit;
    Colors: TRichEdit;
    LabeledEdit1: TLabeledEdit;
    procedure Button1Click(Sender: TObject); // Procedure For Generate Hex Data.
  private
    { Private declarations }
  public
    { Public declarations }
    imgPath: string; // To Store The Image Path.
    resStr: Array of string; // To Store The Hexa Values Of The Image.
    imgWidth, imgHeight: Integer; // To Store Image Height And Image Weight.
    imgSize: string;
    ResultBytes: TBytes; // The Image Will Be converted As Bytes.
    F: File; // The Resultant Bytes Will Be Stored In  d:\Test For Pallert.txt .
    w: Integer; // To Store The Number Bytes Of The Image ..

    colorindex, pallertcount, rptcolorcount: Byte;
    datacount: Integer;

    // rptcolorcount is to store How many Times The Same Color Has Appeared.

    // colorindex is to store the index of the color in palllertBuffer.

    // pallertcount is to point the PallertBuffer .

    // datacount is to point the dataBuffer.

    pallertBuffer: Array of Array of string; // PallertBuffer To Store Only The Unique Colors Of the Image.

    dataBuffer: Array of Array of string; // dataBuffer To STore Encoded Format Of the Image.

    pflag: Byte; // To Indicate The Status Of That Particular Color IS Already Inserted In PallertBuffer or Not.

    finalStr: string; // To Store All The Data in Pallert Buffer As string.
    dataStr: string; // Tio Store All The Data in dataBuffer As String.

  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject); // Whenever User Clicks On Generate Hex Data Than This Proc Will call.
var
  widIdx, heiIdx: Integer; // To Iterate In for Loop For All Pixels Of the Image(widIdx*heiidx).
  DupItr: Integer; //
  pItr: Integer;
  resIdx: Integer;
  myFile: TextFile; // Pallert Data Will Be stored in myFile-> paleertfile.txt.
  flicFile: TextFile; // Flic Data Will Be stored in flicFile -> flicfile.txt.
  totalCount: Integer;
  filename: string;
  fItr: Byte;
  dataSize: string;
   imgStrH: string;
   imgStrW: string;
   count: Byte;
   pallertIdx: Integer;
   DupIdx: Integer;
begin
  finalStr := '';
  dataStr := '';
  pflag := 0;
  pallertcount := 0;
  datacount := 0;
  colorindex := 0;
  DupItr := 0;
  resIdx := 0;
  pItr := 0;
  totalCount := 0;
  dataSize:='';
  imgStrH:='';
  imgStrW:='';
   count:=0;
   pallertIdx:=0;
  imgPath := LabeledEdit1.Text;
  filename := TPath.GetFileNameWithoutExtension(imgPath);
  Image1.picture.LoadFromFile(imgPath);
  imgWidth := Image1.Width;
  imgHeight := Image1.Height;
  SetLength(ResultBytes, imgWidth * imgHeight * 3);

  SetLength(resStr, imgWidth * imgHeight * 3);

  SetLength(dataBuffer, imgWidth * imgHeight, 3); // DATA BUFFER

  for heiIdx := 0 to imgHeight - 1 do
  begin
    for widIdx := 0 to imgWidth - 1 do
    begin
      ResultBytes[resIdx] := GetRValue(Image1.Canvas.Pixels[widIdx, heiIdx]);
      Inc(resIdx);
      ResultBytes[resIdx] := GetGValue(Image1.Canvas.Pixels[widIdx, heiIdx]);
      Inc(resIdx);
      ResultBytes[resIdx] := GetBValue(Image1.Canvas.Pixels[widIdx, heiIdx]);
      Inc(resIdx);
    end;
  end;

  // To Store Bytesin  Hex
  for resIdx := 0 to Length(ResultBytes) - 1 do
  begin
    resStr[resIdx] := '0X' + IntToHex(ResultBytes[resIdx], 2);
  end;

  // color processing for Hexa Input .
  resIdx := 0;
  DupIdx:=0;
  SetLength(pallertBuffer, 256, 3); // PALLETRING BUFFER   for storing unique pixels (i.e different RGB values)

  for heiIdx := 0 to 255 do
  begin
    for widIdx := 0 to 2 do
    begin
      pallertBuffer[heiIdx, widIdx] := '0XFF';  // Filling Pallert Buffer with OXFFF by default.
    end;
  end;

    // to Store the Unique Pixel colors in the pallert Buffer.
  while resIdx<= Length(resStr) - 1 do
  begin
     DupIdx:= resIdx+3; // for point the next pixel

     // to store the
      pallertBuffer[pallertIdx,0]:=resStr[resIdx];
     pallertBuffer[pallertIdx,1]:=resStr[resIdx+1];
     pallertBuffer[pallertIdx,2]:=resStr[resIdx+2];

     while(resStr[resIdx]=resStr[DupIdx]) and (resStr[resIdx+1]=resStr[DupIdx+1]) and (resStr[resIdx+2]=resStr[DupIdx+2])
     do
     begin
       resIdx:=resIdx+3; // Increments to the next
       DupIdx:=resIdx+3;
     end;
     // we need unique colors to be stored in pallertBuffer.
     resIdx:= DupIdx;
  end;


  {try

    While resIdx <= Length(resStr) - 1 do
    begin
      rptcolorcount := 1;
      if pallertcount = 0 then
      begin
        // This is for Pllaerting
        pallertBuffer[0, 0] := resStr[resIdx];
        pallertBuffer[0, 1] := resStr[resIdx + 1];
        pallertBuffer[0, 2] := resStr[resIdx + 2];
        Inc(pallertcount);
        colorindex := 0;
        // resIdx := resIdx + 3;
      end
      else
      begin
        for pItr := 0 to pallertcount - 1 do
        begin
          if (pallertBuffer[pItr, 0] = resStr[resIdx]) and
            (pallertBuffer[pItr, 1] = resStr[resIdx + 1]) and
            (pallertBuffer[pItr, 2] = resStr[resIdx + 2]) then
          begin
            colorindex := pItr;
            pflag := 1;
            Break;
          end

        end;
      end;

      if pflag = 1 then
      begin
        pflag := 0;
      end
      else
      begin
        colorindex := pItr;
        pallertBuffer[pallertcount, 0] := resStr[resIdx];
        pallertBuffer[pallertcount, 1] := resStr[resIdx + 1];
        pallertBuffer[pallertcount, 2] := resStr[resIdx + 2];
        Inc(pallertcount);
      end;
      // Flic Data Processing Start.
      DupItr := resIdx + 3;
      While (DupItr <= Length(resStr) - 4) and
        (resStr[DupItr] = resStr[resIdx]) and
        (resStr[DupItr + 1] = resStr[resIdx + 1]) and
        (resStr[DupItr + 2] = resStr[resIdx + 2]) do
      begin
        Inc(rptcolorcount);

        if rptcolorcount = 255 then   // Consider if the same color repeats more than 255 times
        begin
          dataBuffer[datacount, 0] := '0X00' + ', ';
          if colorindex > 0 then
          begin
            Dec(colorindex);
          end;
          dataBuffer[datacount, 1] := '0X' + IntToHex(rptcolorcount, 2) + ', ';
          dataBuffer[datacount, 2] := '0X' + IntToHex(colorindex, 2) + ', ';
          Inc(datacount);
          totalCount := totalCount + rptcolorcount; // To update the Totalcount variable if color appears more than 255 times.
          rptcolorcount := 0;

        end;     // Consider if the same color repeats more than 255 times
        DupItr := DupItr + 3;         // Increments DupItr
      end;
      if (DupItr > Length(resStr) - 4) and (DupItr <= Length(resStr) - 1) and
        (resStr[DupItr] = resStr[resIdx]) and
        (resStr[DupItr + 1] = resStr[resIdx + 1]) and
        (resStr[DupItr + 2] = resStr[resIdx + 2]) then
      begin                                  // For Last Pixel of Resstr.
        Inc(rptcolorcount);
      end;
      resIdx := DupItr; // Maling resIdx To The Next Color...
      dataBuffer[datacount, 0] := '0X00' + ', ';
      if colorindex > 0 then           // because in Array index will start from 0 so decrements by 1.
      begin
        Dec(colorindex);
      end;
      // DataBuffer is to stores like [0,0]=)0X00,[0,1]=colorrepaetedcount,[0,2]=StorestheindexofthecolorinPallertBuffer.
      dataBuffer[datacount, 1] := '0X' + IntToHex(rptcolorcount, 2) + ', ';
      dataBuffer[datacount, 2] := '0X' + IntToHex(colorindex, 2) + ', ';
      Inc(datacount);                       // Increments datacount.
      totalCount := totalCount + rptcolorcount;
      rptcolorcount := 1;

      // End Flic Data Processing.

    end;
    // MAIN While - Loop END
    if totalCount = (imgWidth * imgHeight) then
    begin
      ShowMessage('Matched Exactly');
      ShowMessage(filename);
    end
    else
    begin
      ShowMessage('Not MAtched');
    end;

    if length(pallertBuffer)=(datacount/3) then
    begin
      ShowMessage('Yeah!! Exactly Pallert Buffer & dataBuffer are Same Size!!!');
    end;


  except
    on E: Exception do
    begin
      ShowMessage(
        'Exception  Image Has More than 256 Colors OutPut Will Be Shown For only 256 Colors');
    end;

  end;
  for resIdx := 1 to Length(pallertBuffer) - 1 do
  begin
    finalStr := finalStr + pallertBuffer[resIdx, 0] + ', ' + pallertBuffer
      [resIdx, 1] + ', ' + pallertBuffer[resIdx, 2] + ', ';
      Inc(count);
      if count=5 then
       begin
         finalStr:=finalStr+sLineBreak;
         count:=0;
       end;

  end;
  count:=0;
  for resIdx := 0 to datacount - 1 do
  begin
    dataStr := dataStr + dataBuffer[resIdx, 0] + dataBuffer[resIdx,
      1] + dataBuffer[resIdx, 2];
          Inc(count);
       if count=5 then
       begin
         dataStr:=dataStr+sLineBreak;
         count:=0;
       end;
  end;
  }
  // RichEdit1.Lines.Add(finalStr);
  //imgSize := '0X' + IntToHex(imgHeight, 4) + ', ' + '0X' + IntToHex(imgWidth,
   // 4) + ', ' + '0X01' + ', ';
   imgStrH:=IntToHex(imgHeight,4);
   imgStrW:=IntToHex(imgWidth,4);
  dataSize := IntToHex(datacount, 8);

  Colors.Lines.Add(finalStr);
  flicData.Lines.Add(dataStr);

  AssignFile(myFile, ExtractFilePath  (imgPath) + filename +'.h');
  ReWrite(myFile);
  WriteLn(myFile,'#include "stdint.h"');
   WriteLn(myFile,'#ifndef  _'+uppercase(filename)+'_H_');
   WriteLn(myFile,'     #define  _'+uppercase(filename)+'_H_');
   WriteLn(myFile,'uint8_t '	+filename+'[] = {');
   WriteLn(myFile,'//Image Height LSB, Image Height MSB,Image width LSB, Image width MSB,Flic Data Identification');
  WriteLn(myFile, '0X' + copy(imgStrH, 3, 2)+', '+'0X' + copy(imgStrH, 1, 2)+', '+'0X' + copy(imgStrW, 3, 2)+', '+'0X' + copy(imgStrW, 1, 2)+', '+'0X01'+', ');
  WriteLn(myFile,'// Total Number of Chunks in Flic Data');
  WriteLn(myFile, '0X' + copy(dataSize, 7, 2) + ', '+'0X' + copy(dataSize, 5, 2) + ', '+'0X' + copy(dataSize, 3, 2) + ', '+'0X' + copy(dataSize, 1, 2) + ', ');
  WriteLn(myFile,'// Pallete Buffer With BGR values of each pixel');
  WriteLn(myFile, finalStr);
  CloseFile(myFile);

  append(myFile);
   WriteLn(myFile,'// Flic Buffer With Skip Identifier, Color Count, COlor Index Value in Pallert Buffer');
  WriteLn(myFile, dataStr);
  WriteLn(myFile, '}');
   WriteLn(myFile, '#endif');
  CloseFile(myFile);
  { except
    on E : Exception do
    begin
    ShowMessage('Could Not Able To open The file Pls Give Correct Path Name');
    end; }



  // End Of Color Processing .

  AssignFile(F, 'd:\Test For Pallert');
{$I-} ReWrite(F, 1); {$I+}
  if IOResult = 0 then
  begin
    BlockWrite(F, ResultBytes[0], Sizeof(Byte) * Length(ResultBytes), w);
  end;
{$I-} CloseFile(F); {$I+}
end;

end.
