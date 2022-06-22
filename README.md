# python3-rpm

Scripts for creating RPM Python 3 package for CentOS 7


1. Update

```bash
sudo yum update -y
sudo reboot
```

2. Build

```bash
python3-build.sh
```

Python 3 will be `altinstall`-ed to `/opt/python`

3. Create .rpm

```bash
python3-pack.sh
```

.rpm will be created in `~/rpmbuild/RPMS/x86_64/`



To install created .rpm

```bash
python3-install-rpm.sh
```
