{ This file was automatically created by Typhon IDE. Do not edit!
  This source is only used to compile and install the package.
 }

unit YearPlan;

{$warn 5023 off : no warning about unused units}
interface

uses
  YearPlanner, TyphonPackageIntf;

implementation

procedure Register;
begin
  RegisterUnit('YearPlanner', @YearPlanner.Register);
end;

initialization
  RegisterPackage('YearPlan', @Register);
end.
