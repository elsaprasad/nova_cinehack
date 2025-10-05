# Service Endpoints

## Public/Local Endpoints

| Service Name | Protocol | Host (IP or domain) | Port | Path / Example URL |
|--------------|----------|---------------------|------|-------------------|
| Web Frontend | http | YOUR_IP_HERE | 8000 | / => http://YOUR_IP:8000/ |
| Supabase API | https | teveaeieqejtofhasqae.supabase.co | 443 | /rest/v1 |
| Gemini API | https | generativelanguage.googleapis.com | 443 | /v1beta/models |

## How to Find Your IP

### On Linux/Mac:
```bash
curl -s https://ifconfig.me
```

### On Windows PowerShell:
```powershell
(Invoke-WebRequest -Uri "https://ifconfig.me").Content
```

### Check listening ports:
```bash
# Linux
sudo ss -tulpn | grep LISTEN

# Windows
netstat -ano | Select-String "LISTEN"
```

## Local Network Access
If hosting on local network, judges can access at: `http://192.168.X.X:PORT`

Replace YOUR_IP_HERE with your actual IP address after discovery.
