# Aplikasi Web "Gitlab"
> Lu William Hanugra (G64140070)

> Mohamad Ravena Utama (G64140041)

> Nur Hadi Saputra (G64140044)

> Iskandar Zulkarnain Lubis (G64130075)

## Sekilas Tentang
<b>GitLab Inc.</b> adalah perusahan yang berbasis <i>open-source</i>. GitLab merupakan aplikasi yang berfungsi melalukan code (pengkodean), test (pengujian), serta deploy code secara bersama-sama. GitLab juga menyediakan manajemen repositori Git dengan kontrol akses penuh, code reviews, issue tracking, activity feeds, wikis, serta continuous integration. GitLab adalah sebuah proyek komunitas, lebih dari 1000 orang di seluruh dunia telah memberikan kontribusi untuk GitLab!
## Instalasi
● Syarat Instalasi GitLab:
1. Sistem Operasi Unix (Ubuntu, Debian, CentOS, Red Hat Enterprise Linux, Scientific Linux, Oracle Linux)
2. Ruby (MRI) 2.3
3. Minimal CPU (2 cores is the recommended)
4. 4GB RAM (recommended)
5. PostgreSQL (recommended) atau MySQL/MariaDB

● Langkah instalasi dalam CLI.
1. Langkah 1 - Instalasi Dependensi atau service Pendukung <br>
	```$ apt-get install openssh-server curl ce-certificates postfix```

2. Tambahkan GitLab Package dan Install GitLab <br>
	```$ curl -sS https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | sudo bash```
	```$ sudo apt-get install gitlab-ce```

3. Konfigurasi dan start GitLab <br>
	```$ sudo gitlab-ctl reconfigure```
	```$ gitlab-ctl start```

4. Selesai, lakukan testing di server

## Konfigurasi
![alt text](https://scontent.fcgk5-1.fna.fbcdn.net/v/t34.0-12/17506158_10209224642635543_1502191530_n.png?oh=c28ca35e8bd0982bbf2dd9b3fb82b996&oe=58DC2870)

## Maintenance


## Otomatisasi


## Cara Pemakaian
●

## Database


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
Secara umum ada beberapa perbedaan antara GitLab dan GitHub, antara lain: <br<
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
- <link>https://www.codepolitan.com/github-vs-gitlab-kamu-pilih-mana-58808e62c2b28</link>
