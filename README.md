# Aplikasi Web "Gitlab"
> Lu William Hanugra (G64140070)

> Mohamad Ravena Utama (G64140041)

> Nur Hadi Saputra (G64140044)

> Iskandar Zulkarnain Lubis (G64130075)

## Sekilas Tentang
<b>GitLab Inc.</b> adalah perusahan yang berbasis <i>open-source</i>. GitLab merupakan aplikasi yang berfungsi melalukan code (pengkodean), test (pengujian), serta deploy code secara bersama-sama. GitLab juga menyediakan manajemen repositori Git dengan kontrol akses penuh, code reviews, issue tracking, activity feeds, wikis, serta continuous integration. GitLab adalah sebuah proyek komunitas, lebih dari 1000 orang di seluruh dunia telah memberikan kontribusi untuk GitLab!
## Instalasi
●	Syarat Instalasi GitLab:
1. Sistem Operasi Unix (Ubuntu, Debian, CentOS, Red Hat Enterprise Linux, Scientific Linux, Oracle Linux)
2. Ruby (MRI) 2.3
3. Minimal CPU (2 cores is the recommended)
4. 4GB RAM (recommended)
5. PostgreSQL (recommended) atau MySQL/MariaDB

●	Langkah instalasi dalam CLI.
1. Langkah 1 - Instalasi Dependensi atau service Pendukung <br>
	
	```bash 
	$ apt-get install openssh-server curl ce-certificates
	```

2. Tambahkan GitLab Package dan Install GitLab <br>
	
	```bash 
	$ curl -sS https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | sudo bash
	```
	
	```bash 
	$ sudo apt-get install gitlab-ce
	```

3. Konfigurasi dan start GitLab <br>
	```bash 
	$ sudo gitlab-ctl reconfigure
	```
	```bash 
	$ gitlab-ctl start
	```

4. Selesai, lakukan testing di server

## Konfigurasi

### First Time Login

Masuk ke dalam aplikasi untuk pertama kalinya

Masuk kedalam domain yang sudah di install Gitlab:

```
http://gitlab_domain_atau_IP
```

Untuk pertama kalinya, gitlab akan menampilkan halaman untuk mengatur password untuk root:
![alt text](https://lh4.googleusercontent.com/tmc5aCjMaRsjOPddv_zWt6y-lnDYc2CE0_VpTap_7s04nMlV1lBTUgfvuvYbQiqPDRtNL07h611mDSt-_XI5jAwSpRoRrorIGTiikuU-fL9A-x4iAIarbOM15n_uZufMgKOsTvrc)

Setelah itu anda akan diarahkan ke halaman login:
![alt text](https://lh3.googleusercontent.com/zSSROTztYtMyB9ngu0izMLmcjnY7bzouETLlQxd0J17BPiDqwbu0uTOUey9lp4H7tAAvfVXTiXE_v4h_tL9vF-nGGSem-K0Y5JNUd9tI-toftj4WimZcv14tLNAsT1t__LEVnfA1)

Login dengan:

    Username: root
    Password: [password_yang_diset]

Setelah itu anda akan diarahkan kedalam halaman aplikasi , disini anda dapat langsung menambahkan projects:
![alt text](https://lh3.googleusercontent.com/Mb-jdjxubY6-wYI_wzUYNNhEGCxT5gb1RmjfNmOKeiwadTJENbBJI3NJkaflVq1jWFxfAOE9NsfNJWthp2zwzg_jfMzaR8Xg7T3Bd3D8MIKx_l9V-92qcmdx2vUS8dNyY_SMRNf_)

### Profile Settings

Untuk memodifikasi profile, klik icon di pojok kanan atas, lalu pilih Profile Settings:
![alt text](https://lh4.googleusercontent.com/ybkTf_thl1_6nHOgr4JCgNz3dvUoWwlZ6Sh3rLZXnWEw6OreS03H3k51s4-DIOTaqP72xFvAKqscl-_sctz8rFFNSrJkbpwMkX1wt7j14bhXH6vY35N1lXVwYBg3Y5OIqKc5-z1W)

Anda akan diarahkan ke halaman setting Profile:
![alt text](https://lh4.googleusercontent.com/RbPckMFOOK_zKNAHMiXu9I-BLOIpOv-Fw27QAZvR9wSVvpcBuqDjfrTLyXg799gTHHBu8OAJBBsoYz7Ndm8ManESDkUUWMAJHyuJtEKaBu_fUSLVuG_-S2xKyYK5WDwi5TR-xm1D)

### Add an SSH Key

Tambahkan SSH key pair di local:

```
ssh-keygen
```

Output
```
Generating public/private rsa key pair.
Enter file in which to save the key (/home/ubantu/.ssh/id_rsa): 
Enter passphrase (empty for no passphrase): 
Enter same passphrase again: 
Your identification has been saved in /home/ubantu/.ssh/id_rsa.
Your public key has been saved in /home/ubantu/.ssh/id_rsa.pub.
The key fingerprint is:
9e:fd:1e:6c:2c:03:61:83:dc:5b:c5:1f:81:46:39:11 ubantu@ubantu-hacker
The key's randomart image is:
+--[ RSA 2048]----+
|           oE=.. |
|     . o   .* .  |
|      o = .. o . |
|       . =    .  |
|        S        |
|       . + o     |
|        o + =    |
|           = .   |
|           .o    |
+-----------------+
```

Lalu baca public key:
```
cat ~/.ssh/id_rsa.pub
```

Output
```
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDRbV4f0MzUMmf+GZyWqpn3Si/JwIG4yxW9/L2/CjrrupSLbSRm8UmqsIDndDmzcA2jsW67P0eHLTtzj261sLF18CIuBdesDJZJiXUO4kmwVpZxZHAJ2Wvw+ojV3VgjmRMwiJswUqmvjdnWe5ZMhJCYB8XWrUMfwJ6ea+LOR5v/oD1+N8TKfqe4iMAw8T9LmVdrJPdpBNVFRECZTx7rYAhy+neKzDKAeiPljNn/30g9t4CJVCDP2ZpAp5GS8kMMJ+eu++bNNQnd8iupoIffKHche/cattZ/znuSqtGy+G1IxHTTHrM78eEgtogb3q+0FnLLB+wZUV5GMuxaJFI3HQdV ubantu-kelompok12@ubuntu
```

Copy output public key tadi dan buka kembali website Gitlab anda.

Klik pada menu SSH Keys:
![alt text](https://lh6.googleusercontent.com/C7QdUbF0QxDQQSWsDyInQteLnmzbaps6yHDpIVfhrCVqX5gvKQtxKGomDwSwTj6WBZ9c2DOFBP-tPs2isSIAJHagh5pFhSAK4db-1ZipAPdbHd8ZgXyNdWQa3ueRGIPKZpXLHOsk)

Anda sekarang dapat langsung manage Gitlab projects dan repositori dari local machine tanpa harus memasukkan username dan password akun Gitlab.

### Change Login Appreance

Klik icon Admin Area pada pojok kanan atas:
![alt text](https://lh6.googleusercontent.com/vJ4Xnf-rW4Q9HDKRUsQ39Yo7vOpOdwaKG6R0SfEh-3yMPrgovHJkkVkULxmrP397KkUcWfBVX1x5kdThYP9yjwOr3Ax3gacaGl-lOGG8W6OI8BUQi538YOCk8TMVVA9eV_cPBOSa)

Halaman Admin Area:
![alt text](https://lh4.googleusercontent.com/HW9zQw2Z62IqFiptk29vPnNRfoMubAxxGNKrErOCb9yxPjFDJjWDP1P6JVCwQoGaYi37zuVe9Oo4ee81aSxwd_OJSNR2xBXfpip0VQTiS63Prpm7g6zCDeEu2yAI7Uh4mgU-jZZE)

Lalu klik icon setting lalu pilih Appereance:
![alt text](https://lh4.googleusercontent.com/CuT-1T1msPKSHaDqjHPu0wHtF6lDx90Kic1i2JLgn6pSQ5OVG-VgXuD0apePA40MITnI3S3IeOtrDOajebsT6yLuvk3Zr1kZfTscmDG8Z5hZyxFZPidbvII2hzZPhR_mSOv7YeZT)

Anda akan masuk kehalaman Appereance Setting:
![alt text](https://lh6.googleusercontent.com/GRch3RaXpuYsqxG1noecAioeZOExdi1QjwaMWMT45gcvhMnssiQPiNtB2yblewDHV0vgU3oS4uQ8J-pOFxcoPIIygpL8N3Gf8PSuD6PrfrkXRIN_feXVoycFwefUx50f5V2W1yOQ)

## Maintenance
Maintenance Gitlab disini lebih kepada update versi dari Gitlab. Hal Pertama yang harus dilakukan server harus up to date.
kita bisa ketikkan pada command : <br>

```bash 
$ sudo apt-get update -y && sudo apt-get upgrade -y
```

ini memkana waktu beberapa menit. <br>
Setelah itu menambahkan package repository: <br>

```bash 
$ curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | sudo bash
```

```bash 
$ sudo apt-get install gitlab-ce
```


## Otomatisasi


## Cara Pemakaian
●

## Database
Kami merekomendasikan menggunakan PostgreSQL database. Untuk MySQL coba cek disini
[MySQL setup guide](database_mysql.md).

> **Note**: because we need to make use of extensions you need at least pgsql 9.1.

1. Install database packages:

    ```bash
    sudo apt-get install -y postgresql postgresql-client libpq-dev postgresql-contrib
    ```

2. Buatlah sebuah database user untuk GitLab:

    ```bash
    sudo -u postgres psql -d template1 -c "CREATE USER git CREATEDB;"
    ```

3. Buat `pg_trgm` extension (required for GitLab 8.6+):

    ```bash
    sudo -u postgres psql -d template1 -c "CREATE EXTENSION IF NOT EXISTS pg_trgm;"
    ```

4. Buat GitLab production database dan grant all privileges di database:

    ```bash
    sudo -u postgres psql -d template1 -c "CREATE DATABASE gitlabhq_production OWNER git;"
    ```

5. Coba hubungkan database baru dengan user yang telah dibuat:

    ```bash
    sudo -u git -H psql -d gitlabhq_production
    ```

6. Cek `pg_trgm` extension telah aktif:

    ```bash
    SELECT true AS enabled
    FROM pg_available_extensions
    WHERE name = 'pg_trgm'
    AND installed_version IS NOT NULL;
    ```

7. Keluar dari database session:

    ```bash
    gitlabhq_production> \q
    ```

## Pembahasan
GitLab sendiri merupakan tools yang berfungsi sebagai Version Control System (VCS) atau lebih dikenal sebagai sebuah sistem pelacak peruabahan pada file. Ini tentu sangat berguna bagi para pengembang yang bekerja sendiri untuk projeknya atau berkolaorasi dengan pengembang lain tanpa harus takut terjadi bentrok ataupun kesulitan dalam menggabungkan hasil perubahan yang mereka lakukan. Dengan menggunakan Git, setiap perubahan pada source-code akan terlacak pesan perubahannya, apa saja yang diubah, siapa yang mengubah dan kapan waktunya. Dari segi fitur GitLab memiliki fitur yang cukup lengkap seperti:

1. <b>Activity Stream</b> <br>
● Halaman untuk melihat aktivitas pada repositori Git yang kita ikut serta.

2. <b>File Browser</b> <br>
● Halaman untuk navigasi ke kode-kode program yang berada di repositori.

3. <b>Wiki</b> <br>
● Halaman Wiki dari repositori yang dapat dibuat dengan bantuan Git dan Markdown.

4. <b>Code Review dan Merge Request</b> <br>
● Halaman untuk melihat setiap permintaan untuk Git Merge dari projek yang kita ikut serta. Kita bisa melihat tambahan kode apa saja yang berubah, melakukan review dan juga testing, atau memberi komentar pada setiap permintaan Merge.

5. <b>Issue Management</b> <br>
● Jika kita menemukan isu atau error pada projek yang sedang dibuat, kita dapat mengirimkan info tentang isu tersebut agar dapat diperbaiki oleh tim pengembang projek yang bersangkutan.

6. <b>Web hooks</b> <br>
● Git Webhook berguna untuk mengirimkan notifikasi ke tautan atau URL tertentu jika ada peristiwa di dalam repositori, misalnya jika ada commit code terbaru atau ada orang yang mengirimkan sebuah issue ke dalam repositori. Webhook ini biasanya dipakai untuk penggunaan Issue Tracker eksternal, memulai pembuatan Build Project, melakukan backup ke repositori mirror, dll.

Namun, ada beberapa kekurangan yang dimiliki seperti belum tersedianya fitur <b><i>Assign multiple people to an issue/MR</i></b>, <b><i>Allow edits from upstream maintainers in branch</i></b>, atau fitur <b><i>Drag and drop tasks</i></b>. Namun secara keseluruhan, GitLab menjadi salah satu pilihan terbaik sebagai tempat penyimpanan git code anda.

## GitLab vs GitHub

Secara umum ada beberapa perbedaan antara GitLab dan GitHub, antara lain: 

<b>1. Penawaran Public dan Private Project</b><br>
Fitur public dan private yang disediakan github dapat diakses dan digunakan secara gratis. Tidak seperti Github yang hanya menyediakan layanan public saja yang gratis, sementara layanan private berbayar.

<b>2. Snippet support</b><br>
Gitlab memiliki fitur Snippet Support , yaitu fitur yang memungkinkan pengguna dapat berbagi potongan kecil source code project tanpa berbagi keseluruhan project.

<b>3. Issue Tracking atau Pelacakan Masalah</b><br>
Gitlab menawarkan fitur Issue Tracker yang kuat sehingga kita dapat melakukan perubahan dan pengalihan terhadap beberapa masalah dalam waktu yang sama. Github pun menawarkan fitur Github Issue yang berfungsi untuk melakukan pelacakan masalah dalam project.

<b>4. Progress Status</b><br>
Dalam Gitlab, Para pengembang dapat memberikan label dalam project yang sedang dikerjakan dengan label "Work in Progress" sehingga memberikan kejelasan atas Project yang sedang dikerjakan. Ini memang sebuah hal yang kecil , namun ini pasti akan sangat membantu para pengembang aplikasi dan web karena Fitur ini mencegah kode yang sedang digarap digabung dengan kode lain sebelum code tersebut benar-benar selesai.

<b>5. Integrasi</b><br>
Github dan Gitlab mengintegrasikan versi sistem kontrol milik kita dengan aplikasi lain untuk memperkaya alur kerja dan dapat meningkatkan produktivitas pengembangan kita.

<b>6. Github Comunnity</b><br>
Jika Kita ingin mnencari komunitas pengembang aplikasi dan web , kemungkinan besar Github adalah tempat yang lebih baik karena Github menempatkan dirinya dalam komunitas tersebut. Apalagi popularitasnya didorong dengan para anggota komunitas Github yang aktif.

<b>7. Github Enterprise vs Gitlab Enterprise</b><br>
Github sangat populer dikalangan Pengembang. Namun, itu belum sepenuhnya meyakinkan para Perusahaan Software. Banyak perusahaan yang masih memiliki beberapa kekhawatiran menggunakan GitHub untuk penggunaan profesional.

## Referensi
- <link>https://about.gitlab.com/</link>
- <link>https://www.codepolitan.com/gitlab-layanan-penyimpan-git-gratis-dan-open-source</link>
