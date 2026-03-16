h = {
  Dad: "Justin",
  Mom: "Tonya",
  Children: ["Riley", "Landon", "Monroe"]
}

h.keys.each { |key| puts(key) }
h.values.each { |key| puts(key) }

h.each_pair { |k, v| puts("#{k}: #{v}")}