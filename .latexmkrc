$pdf_mode = 1;
# glossaries / acronyms
add_cus_dep('glo', 'gls', 0, 'makeglossaries');
add_cus_dep('acn', 'acr', 0, 'makeglossaries');
sub makeglossaries { my ($base, $path) = fileparse($_[0]); return system "makeglossaries -d '$path' '$base'"; }
push @generated_exts, qw(glo gls glg acn acr alg ist run.xml bbl bcf);
