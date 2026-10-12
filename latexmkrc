$pdf_mode = 1;
$bibtex_use = 2;

# Build the acronym glossary with makeindex (no Perl needed)
add_cus_dep('acn', 'acr', 0, 'makeacr');
sub makeacr {
    my $b = $_[0];
    return system("makeindex -s \"$b.ist\" -t \"$b.alg\" -o \"$b.acr\" \"$b.acn\"");
}
push @generated_exts, 'acn', 'acr', 'alg', 'glo', 'gls', 'glg', 'ist';
