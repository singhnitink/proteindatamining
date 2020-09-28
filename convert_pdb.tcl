puts "Enter the file name ***part before .pdb"
set filex [gets stdin]
mol new ${filex}.pdb
set a [atomselect top "protein"]
$a writepsf ${filex}_modified.psf
$a writepdb ${filex}_modified.pdb
mol delete top
mol new ${filex}_modified.psf
mol addfile ${filex}_modified.pdb