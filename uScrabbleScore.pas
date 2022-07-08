unit uScrabbleScore;

interface

  const
    Points : array ['a'..'z'] of integer = (1, 3, 3, 2, 1, 4, 2, 4, 1, 8, 5, 1, 3, 1, 1, 3, 10, 1, 1, 1, 1, 4, 4, 8, 4, 10);

  type
    TScrabble = class
      class function Score(AText : string) : integer; static;
    end;

implementation

  uses
    System.SysUtils;

  class function TScrabble.Score(AText: string): integer;
    begin
      Result := 0;
      AText := AText.ToLower;
      for var i := Low(Atext) to High(Atext) do
        if ('a' <= AText[i]) and ('z'>= Atext[i]) then
          Result := Result + Points[AText[i]];
    end;

end.
