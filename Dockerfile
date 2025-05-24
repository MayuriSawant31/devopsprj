# Use official Nginx image
FROM nginx:alpine

# Remove default website
RUN rm -rf /usr/share/nginx/html/*

# Copy your PetCareApp into Nginx html directory
COPY ./PetCareApp /usr/share/nginx/html

# Expose port 8080
EXPOSE 8080
