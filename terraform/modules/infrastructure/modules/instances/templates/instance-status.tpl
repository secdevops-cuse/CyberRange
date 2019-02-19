server {
        listen 3000;
        listen [::]:3000;
        root /home/ubuntu/www/instance-status;
        index index.html index.htm;

        server_name *.elb.amazonaws.com;

        location / {
                try_files $uri $uri/ =404;
        }
}
