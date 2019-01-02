# ESETApacheProxy

## Use
### Step 1 - Run docker proxy
On the computer that you will use as a proxy run:

```
docker run -d --restart unless-stopped -p 3128:3128 -v /path/to/cache:/cache ericschultz/esetapacheproxy
```

You can of course change the port if you want, just make sure you set it properly in the policy.

Be sure to set the volume path to somewhere that has some decent storage capacity. This is where the cache will be.

### Step 2 - Set up policy
The above is useless unless the clients actually use the proxy, so in the ESET management console create (at least) 3 policies:
* Remote Agent
* Endpoint for Windows
* Endpoint for Windows Servers

Under Tools -> Proxy set the server IP/Port
For the Remote Agent, do not use "Global Proxy" set the proxy ONLY for the ESET Services


