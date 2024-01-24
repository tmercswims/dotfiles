function random_color \
  --description="Generate random hex color"

  string join '' \# (openssl rand -hex 3)
end
