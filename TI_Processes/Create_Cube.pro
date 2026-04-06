# Create dimensions if not present
If(DimensionExists('Time') = 0);
  DimensionCreate('Time');
  DimensionElementInsert('Time', '', 'Jan', 'N');
  DimensionElementInsert('Time', '', 'Feb', 'N');
  DimensionElementInsert('Time', '', 'Mar', 'N');
EndIf;

If(DimensionExists('Region') = 0);
  DimensionCreate('Region');
  DimensionElementInsert('Region', '', 'India', 'N');
  DimensionElementInsert('Region', '', 'US', 'N');
EndIf;

If(DimensionExists('Product') = 0);
  DimensionCreate('Product');
  DimensionElementInsert('Product', '', 'Mobile', 'N');
  DimensionElementInsert('Product', '', 'Laptop', 'N');
EndIf;

If(DimensionExists('Version') = 0);
  DimensionCreate('Version');
  DimensionElementInsert('Version', '', 'Actual', 'N');
  DimensionElementInsert('Version', '', 'Budget', 'N');
EndIf;

If(CubeExists('SalesCube') = 0);
  CubeCreate('SalesCube', 'Time', 'Region', 'Product', 'Version');
EndIf;
