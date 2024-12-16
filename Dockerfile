# Use NGINX to serve the Angular app
FROM nginx:stable-alpine

# Copy build output to NGINX html directory
COPY ./dist/my-angular-app /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start NGINX server
CMD ["nginx", "-g", "daemon off;"]
