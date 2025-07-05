# Bootstrap OS

Run this after a fresh OS install to install and configure the OS.

## Finding System Settings

Monitor settings changes:

1. **Monitor settings changes**:
   ```bash
   dconf watch /```
1. **Convert it**:
```bash
/org/cinnamon/desktop-effects-workspace false  
↓ becomes ↓  
gsettings set org.cinnamon desktop-effects-workspace false```

1. **Add it to:**: `/system-settings/ANY-NAME.sh`
