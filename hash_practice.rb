family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

  
siblings = family.select { |key, value| value if key == :sisters || key == :brothers }

p siblings.values.flatten