program ProductionScheduling
    implicit none
    integer :: num_machines                ! Jumlah mesin yang tersedia
    integer :: num_jobs                    ! Jumlah pekerjaan yang harus dijadwalkan
    integer :: i, j, total_time
    character(len=20), allocatable :: job_names(:) ! Nama setiap pekerjaan
    integer, allocatable :: jobs(:)              ! Durasi setiap pekerjaan
    integer, allocatable :: machines(:)          ! Kapasitas setiap mesin
    integer, allocatable :: schedule(:)          ! Penjadwalan pekerjaan ke mesin
    
    ! Menampilkan tata cara penggunaan program
    call display_instructions()

    ! Meminta input jumlah pekerjaan
    print *, 'Masukkan jumlah pekerjaan:'
    read *, num_jobs

    ! Meminta input jumlah mesin
    print *, 'Masukkan jumlah mesin:'
    read *, num_machines

    ! Alokasikan array berdasarkan jumlah pekerjaan dan mesin
    allocate(job_names(num_jobs))
    allocate(jobs(num_jobs))
    allocate(schedule(num_jobs))
    allocate(machines(num_machines))

    ! Meminta input nama dan durasi setiap pekerjaan
    do i = 1, num_jobs
        print *, 'Masukkan nama pekerjaan ', i, ':'
        read *, job_names(i)
        print *, 'Masukkan durasi pekerjaan (jam) ', i, ':'
        read *, jobs(i)
    end do

    ! Meminta input kapasitas setiap mesin
    do i = 1, num_machines
        print *, 'Masukkan kapasitas mesin ', i, ' (jam):'
        read *, machines(i)
    end do
    
    ! Algoritma sederhana: alokasikan pekerjaan secara bergantian ke setiap mesin
    do i = 1, num_jobs
        ! Cari mesin dengan waktu tersisa terbanyak
        j = 1
        do while (machines(j) < jobs(i))
            j = j + 1
            if (j > num_machines) then
                print *, 'Kapasitas mesin tidak mencukupi untuk pekerjaan ', trim(job_names(i))
                stop
            end if
        end do
        
        ! Jadwalkan pekerjaan i ke mesin j
        schedule(i) = j
        
        ! Kurangi kapasitas mesin j
        machines(j) = machines(j) - jobs(i)
    end do
    
    ! Hitung total waktu produksi
    total_time = 0
    do i = 1, num_machines
        if (machines(i) < 0) then
            total_time = total_time + abs(machines(i))
        end if
    end do
    
    ! Tampilkan jadwal
    print *, 'Jadwal Produksi:'
    print *, '----------------'
    do i = 1, num_jobs
        print *, 'Pekerjaan ', trim(job_names(i)), ' di Mesin ', schedule(i)
    end do
    print *, 'Total Waktu Produksi: ', total_time

    ! Deallocate arrays
    deallocate(job_names)
    deallocate(jobs)
    deallocate(schedule)
    deallocate(machines)
    
contains

    subroutine display_instructions()
        print *, '============================================='
        print *, '           Program Penjadwalan Produksi       '
        print *, '============================================='
        print *, 'Tata Cara Penggunaan:'
        print *, '1. Masukkan jumlah pekerjaan yang ingin dijadwalkan.'
        print *, '2. Masukkan jumlah mesin yang tersedia.'
        print *, '3. Untuk setiap pekerjaan, masukkan nama dan durasinya (dalam jam).'
        print *, '4. Untuk setiap mesin, masukkan kapasitasnya (dalam jam).'
        print *, 'Program akan menjadwalkan pekerjaan ke mesin secara otomatis'
        print *, 'dan menampilkan jadwal serta total waktu produksi.'
        print *, '---------------------------------------------'
        print *, 'Contoh Input:'
        print *, 'Jumlah pekerjaan: 5'
        print *, 'Jumlah mesin: 3'
        print *, 'Nama pekerjaan 1: Job A'
        print *, 'Durasi pekerjaan 1: 4'
        print *, 'Nama pekerjaan 2: Job B'
        print *, 'Durasi pekerjaan 2: 5'
        print *, 'Nama pekerjaan 3: Job C'
        print *, 'Durasi pekerjaan 3: 3'
        print *, 'Nama pekerjaan 4: Job D'
        print *, 'Durasi pekerjaan 4: 2'
        print *, 'Nama pekerjaan 5: Job E'
        print *, 'Durasi pekerjaan 5: 6'
        print *, 'Kapasitas mesin 1: 10'
        print *, 'Kapasitas mesin 2: 8'
        print *, 'Kapasitas mesin 3: 7'
        print *, '---------------------------------------------'
        print *, 'Tekan Enter untuk melanjutkan...'
        print *, '============================================='
        read(*,*)
    end subroutine display_instructions

end program ProductionScheduling
