# Use a lightweight nginx image
FROM nginx:alpine

# Copy your HTML into nginx folder
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

