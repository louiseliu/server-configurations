backend web0 { .host = "127.0.0.1"; .port = "80"; }

sub vcl_recv { set req.backend = web0; set req.http.X-Forwarded-Varnish = client.ip; }