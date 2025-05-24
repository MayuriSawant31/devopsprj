FROM nginx:alpine

# Remove default nginx static content
RUN rm -rf /usr/share/nginx/html/*

# Copy your PetCare HTML app into nginx web root
COPY ./petcareapp/ /usr/share/nginx/html/

# Set correct permissions (optional, for debugging/hosting reasons)
RUN chmod -R 755 /usr/share/nginx/html

# Expose port 80 (Nginx default)
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
