# require modules here
require "yaml"

def load_library(file)
  # code goes here
  emote_lib = { "get_emoticon" => {}, "get_meaning" => {} }
  YAML.load_file(file).each { |lib_key, lib_value|
    emote_lib["get_emoticon"][lib_value[0]] = lib_value[1]
    emote_lib["get_meaning"][lib_value[1]] = lib_key
  }
  return emote_lib
end

def get_japanese_emoticon(file, emoticon)
  # code goes here
  emote_lib = load_library(file)
  if emote_lib["get_emoticon"][emoticon]
    return emote_lib["get_emoticon"][emoticon]
  else
    return "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(file, emoticon)
  # code goes here
  emote_lib = load_library(file)
  if emote_lib["get_meaning"][emoticon]
    return emote_lib["get_meaning"][emoticon]
  else
    return "Sorry, that emoticon was not found"
  end
end
