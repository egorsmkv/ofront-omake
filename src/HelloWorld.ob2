MODULE HelloWorld;

IMPORT io := Console, Text := arText;

VAR
  name: ARRAY 50 OF CHAR;
  buffer: Text.Buffer;

BEGIN
  name := "Yehor";

  buffer.Init(200);

  buffer.String("Hello, ");
  buffer.String(name);
  buffer.String("!");

  io.String(buffer.value^);

  io.Ln;
END HelloWorld.
