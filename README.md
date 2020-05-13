## WCEX-MCON-USBA
### Automotive Ethernet (IEEE 100BASE-T1) to USB Media Convertor

[![WCEX-MCON-USBA CLIP](https://img.youtube.com/vi/7_dyjh7gOdk/0.jpg)](https://www.youtube.com/watch?v=7_dyjh7gOdk "WCEX-MCON-USBA CLIP")

### Key Features

<ul>
  <li>IEEE 100BASE-T1 to USB 2.0</li>
  <li>Tiny USB Type-A Dongle</li>
  <li>Time Saving Push-In Connector</li>
  <li>Master/Slave Mode Selection</li>
  <li>FCC*/CE/KC/RoHS (*Report Only for SDoC)</li>
</ul>
  
![WCEX-MCON-USBA](https://github.com/wayties/mcon/blob/master/images/wcex-mcon-usba.png "WCEX-MCON-USBA")
![WCEX-MCON-USBA REAL](https://github.com/wayties/mcon/blob/master/images/wcex-mcon-usba-real.png "WCEX-MCON-USBA REAL")

### Driver Installlation

For more details, refer docs/WCEX-MCON-USBA-UG-001-EN.pdf

#### Driver For Windows 10

In Microsoft Windows 10, NIC driver would be installed automatically.

If you used two or more WCEX- MCON-USBA devices in a network, each device should have own network addresses,
so you need to check and modify Network Address.

#### Driver For Linux (DKMS)

- Clone driver patch and installation script from our git repository.
```
git clone https://github.com/wayties/mcon ~/mcon
```
- Download linux driver of Microchip’s LAN9500A at following link.

https://www.microchip.com/SWLibraryWeb/producttc.aspx?product=SRC-LAN95xx-LINUX

- Move Microchip’s LAN9500A driver to linux driver directory.
```
mv lan9500_linux_1.02.05.tar.gz ~/mcon/drivers/linux
```
- Run DKMS installation script with sudo (root permission)
```
cd ~/mcon/drivers/linux
sudo ./dkms.sh
```
