#define __python python3
%define __python true

Name:           python
Version:        3.10.5
Release:        1%{?dist}
Summary:        Python 3 package for CentOS 7

License:        PSF
URL:            https://www.python.org/
Source0:        %{name}-%{version}.tgz

#BuildArch:      x86_64

%description
Python 3 package for CentOS 7

%prep
%setup -q


%install
mkdir -p %{buildroot}/opt/python
cp -R ./* %{buildroot}/opt/python


%clean
rm -rf $RPM_BUILD_ROOT
 

%files
/opt/python
