module BookKeeping
  VERSION = 4
end

class Complement
  DNA_NUCS = 'GCTA'.freeze
  RNA_NUCS = 'CGAU'.freeze

  def self.of_dna(dna_strand)
    return '' if dna_strand.chars.any? { |nuc| nuc =~ /[^#{DNA_NUCS}]/ }

    dna_strand.tr(DNA_NUCS, RNA_NUCS)
  end
end
