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
	$ apt-get install openssh-server curl ce-certificates postfix
	```

2. Tambahkan GitLab Package dan Install GitLab <br>
	```
	bash $ curl -sS https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | sudo bash
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
![alt text](https://scontent.fcgk5-1.fna.fbcdn.net/v/t34.0-12/17506158_10209224642635543_1502191530_n.png?oh=c28ca35e8bd0982bbf2dd9b3fb82b996&oe=58DC2870)

## Maintenance
Maintenance Gitlab disini lebih kepada update versi dari Gitlab. Hal Pertama yang harus dilakukan server harus up to date.
kita bisa ketikkan pada command : <br>

```bash 
$ sudo apt-get update -y && sudo apt-get upgrade -y
``` <br>

ini memkana waktu beberapa menit. <br>
Setelah itu menambahkan package repository: <br>

```bash 
$ curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | sudo bash```
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

## Referensi
- <link>https://about.gitlab.com/</link>
- <link>https://www.codepolitan.com/gitlab-layanan-penyimpan-git-gratis-dan-open-source</link>
