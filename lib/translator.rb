# require modules here
require "yaml"
def load_library(filename)
  files = YAML.load_file(filename)
  emoticon_data = {'get_meaning' => {}, 'get_emoticon'=> {}
  }
  library.each do |key, value| 
  # code goes here
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end