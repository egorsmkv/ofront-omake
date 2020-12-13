MODULE Square;

IMPORT io := Console;

PROCEDURE DoSquare(v: INTEGER) : INTEGER;
BEGIN
  RETURN v * v;
END DoSquare;

BEGIN
  io.Int(DoSquare(5), 0); io.Ln;
  io.Int(DoSquare(19), 0); io.Ln;
  io.Int(DoSquare(25), 0); io.Ln;
END Square.
