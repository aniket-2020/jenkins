# 1. Use the official lightweight Nginx image based on Alpine Linux
FROM nginx:alpine

# 2. Set the working directory (optional but good practice)
WORKDIR /usr/share/nginx/html

# 3. Remove the default Nginx welcome page
RUN rm -rf ./*

# 4. Copy your local website files (index.html, css, js) to the container
# This assumes your local files are in the same folder as the Dockerfile
COPY . .

# 5. Expose port 80 to allow external access
EXPOSE 80

# 6. Start Nginx (this is the default command in the base image, 
# but explicitly defining it is good practice)
CMD ["nginx", "-g", "daemon off;"]
