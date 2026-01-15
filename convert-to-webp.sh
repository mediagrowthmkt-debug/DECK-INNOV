#!/bin/bash

# Convert images to WebP format
# Quality: 85 (good balance between quality and size)

echo "Converting images to WebP format..."

# Convert hero images
for img in "hero (overlay slide oppacity)"/*.{jpg,JPG,jpeg,JPEG,png,PNG}; do
    if [ -f "$img" ]; then
        output="${img%.*}.webp"
        if [ ! -f "$output" ]; then
            echo "Converting: $img"
            cwebp -q 85 "$img" -o "$output"
        fi
    fi
done

# Convert gallery images
for img in "galeria de fotos"/*.{jpg,JPG,jpeg,JPEG,png,PNG}; do
    if [ -f "$img" ]; then
        output="${img%.*}.webp"
        if [ ! -f "$output" ]; then
            echo "Converting: $img"
            cwebp -q 85 "$img" -o "$output"
        fi
    fi
done

# Convert before/after images
for img in "before and afters"/*.{jpg,JPG,jpeg,JPEG,png,PNG}; do
    if [ -f "$img" ]; then
        output="${img%.*}.webp"
        if [ ! -f "$output" ]; then
            echo "Converting: $img"
            cwebp -q 85 "$img" -o "$output"
        fi
    fi
done

# Convert 3D images
for img in "3d"/*.{jpg,JPG,jpeg,JPEG,png,PNG}; do
    if [ -f "$img" ]; then
        output="${img%.*}.webp"
        if [ ! -f "$output" ]; then
            echo "Converting: $img"
            cwebp -q 85 "$img" -o "$output"
        fi
    fi
done

# Convert logo
if [ -f "logo header.png" ] && [ ! -f "logo header.webp" ]; then
    echo "Converting: logo header.png"
    cwebp -q 85 "logo header.png" -o "logo header.webp"
fi

echo "Conversion complete!"
