{__nixpkgs__, ...}: version:
{
  "2.7" = __nixpkgs__.ruby_2_7;
  "3.0" = __nixpkgs__.ruby_3_0;
  "3.1" = __nixpkgs__.ruby_3_1;
}
.${version}
