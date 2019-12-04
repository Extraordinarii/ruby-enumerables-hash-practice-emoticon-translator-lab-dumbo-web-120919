# require modules here
require "yaml"
def load_library(filename)
  files = YAML.load_file(filename) #load files into var
  emoticon_data = {'get_meaning' => {}, 'get_emoticon'=> {}
  } #emoticon hash 
  files.each do |key, value| 
    emoticon_data['get_meaning'][value[1]] = key 
    emoticon_data['get_emoticon'][value[0]] = files[key][1]
  # code goes here
end 
return emoticon_data
end

def get_japanese_emoticon(filename, emote)
 emoticon_data = load_library(filename, emote)
 if emoticon_data["get_emoticon"][emote]
   return emoticon_data["get_emoticon"][emote]
 else
   return "This doesn't work"
 end
  # code goes here
end

def get_english_meaning(filename, emote)
  emoticon_data = load_library(filename)
  if emoticon_data["get_emoticon"][emote]
    return emoticon_data["get_emoticon"][emote]
else 
  return "This doesn't work"
  # code goes here
end
end