for f in *.JPG *.jpg; do
  [ -e "$f" ] || continue
  base="${f%.*}"

  for size in 600 1200; do
    outfile="${base}_${size}.webp"
    if [ ! -f "$outfile" ]; then
      echo "→ Generando $outfile"
      magick "$f" -resize "${size}x" -quality 80 "$outfile"
    else
      echo "✓ Ya existe $outfile, se omite"
    fi
  done
done

