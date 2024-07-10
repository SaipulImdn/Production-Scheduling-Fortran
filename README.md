Berikut adalah README.md untuk program `ProductionScheduling` yang menjelaskan cara penggunaan, fitur, dan contoh input:

````markdown
# ProductionScheduling

Program ini digunakan untuk menjadwalkan produksi berdasarkan pekerjaan dan mesin yang tersedia. Program akan mengalokasikan pekerjaan ke mesin secara otomatis dan menampilkan jadwal serta total waktu produksi.

## Tata Cara Penggunaan

1. Jalankan program menggunakan gfortran:

   ```bash
   gfortran -o production ProductionScheduling.f90
   ./production
   ```

2. Ikuti instruksi yang ditampilkan di layar untuk memasukkan jumlah pekerjaan dan mesin yang tersedia.
3. Untuk setiap pekerjaan, masukkan nama dan durasinya dalam jam.
4. Untuk setiap mesin, masukkan kapasitasnya dalam jam.
5. Program akan menjadwalkan pekerjaan ke mesin secara otomatis dan menampilkan jadwal serta total waktu produksi.

## Contoh Penggunaan

Setelah menjalankan program, Anda akan diminta untuk memasukkan input seperti berikut:
````

Masukkan jumlah pekerjaan:
5
Masukkan jumlah mesin:
3
Masukkan nama pekerjaan 1:
Job A
Masukkan durasi pekerjaan (jam) 1:
4
Masukkan nama pekerjaan 2:
Job B
Masukkan durasi pekerjaan (jam) 2:
5
Masukkan nama pekerjaan 3:
Job C
Masukkan durasi pekerjaan (jam) 3:
3
Masukkan nama pekerjaan 4:
Job D
Masukkan durasi pekerjaan (jam) 4:
2
Masukkan nama pekerjaan 5:
Job E
Masukkan durasi pekerjaan (jam) 5:
6
Masukkan kapasitas mesin 1 (jam):
10
Masukkan kapasitas mesin 2 (jam):
8
Masukkan kapasitas mesin 3 (jam):
7

```

## Output

Program akan menampilkan jadwal produksi dan total waktu produksi seperti berikut:

```

## Jadwal Produksi:

Pekerjaan Job A di Mesin 1
Pekerjaan Job B di Mesin 2
Pekerjaan Job C di Mesin 3
Pekerjaan Job D di Mesin 1
Pekerjaan Job E di Mesin 2
Total Waktu Produksi: <total_waktu_produksi>

```

## Fitur

- Meminta input jumlah pekerjaan dan mesin.
- Meminta input nama dan durasi setiap pekerjaan.
- Meminta input kapasitas setiap mesin.
- Menjadwalkan pekerjaan ke mesin secara otomatis.
- Menampilkan jadwal pekerjaan dan total waktu produksi.
```
