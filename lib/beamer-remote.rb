require "beamer-remote/version"

module BeamerRemote
  BUNDLE_IDENTIFIER = "com.tupil.Beamer"

  class << self
    def play(path)
      system("open", "-b", BUNDLE_IDENTIFIER, path)
    end

    def mediafile?(path)
      path.downcase =~ /^.*\.(avi|flv|mkv|mov|mp4|wmv)$/
    end
  end
end
