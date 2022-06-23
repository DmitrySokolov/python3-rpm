# python3-rpm

Scripts for creating RPM Python 3 package for CentOS 7


1. Update and install required packages

```bash
sudo yum -y update
sudo reboot

sudo yum install -y yum-utils rpmdevtools rpmlint
sudo yum-builddep -y python3
```

2. Clone the repository

```bash
git clone https://github.com/DmitrySokolov/python3-rpm.git py3
cd ./py3
```

3. Build

```bash
bash python3-build.sh
```

Python 3 will be `altinstall`-ed to `/opt/python`

4. Create .rpm

```bash
bash python3-pack.sh
```

.rpm will be created in `~/rpmbuild/RPMS/x86_64/`



To install created .rpm

```bash
bash python3-install-rpm.sh
```
