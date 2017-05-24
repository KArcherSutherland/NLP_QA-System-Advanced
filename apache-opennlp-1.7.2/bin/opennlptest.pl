use Data::Dumper;

my $text = shift; 
#my $perl     = $^X;
@output = `opennlp TokenizerME en-token.bin < $text`;
#print "OUTPUT: \n";
print Dumper (\@output);