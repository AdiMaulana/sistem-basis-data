1. select namaDosen, kampus, alamat from dosen;
2. select namaDosen, alamat from dosen where alamat like 'Dipatiukur%';
3. select * from dosen where namaDosen = 'Budi Marwah';
4. select * from matakuliah where jurusan = 'Informatika';
5. select * from matakuliah where idDosen in ('D01', 'D05');
6. select namaMatkul, jurusan from matakuliah order by namaMatkul, jurusan;
7. select namaMatkul, jurusan from matakuliah where jurusan in ('Informatika', 'Manajemen');
8. select count(*) as jumlahJurusan from matakuliah where jurusan = 'Industri';
9. select mk.namaMatkul, d.namaDosen, mk.jurusan, d.kampus 
from dosen d inner join matakuliah mk on mk.idDosen = d.idDosen;
10. select m.namaMahasiswa, mk.namaMatkul, m.usia, m.nilai
from mahasiswa m inner join matakuliah mk on mk.idMatkul = m.idMatkul;
11. select avg(nilai) as nilaiRata2 from mahasiswa;
12. select * from mahasiswa where usia between 15 and 18;
13. select mk.namaMatkul, m.namaMahasiswa, m.nilai 
from matakuliah mk inner join mahasiswa m on m.idMatkul = mk.idMatkul 
where m.nilai between 80 and 90;
14. select count(*) as jumlah 
from matakuliah mk inner join mahasiswa m on m.idMatkul = mk.idMatkul
where m.nilai between 85 and 90;
15. select mk.namaMatkul, m.namaMahasiswa, m.nilai
from matakuliah mk left join mahasiswa m on m.idMatkul = mk.idMatkul;
16. create view vNilaiMhs as
select mk.namaMatkul, d.namaDosen, m.namaMahasiswa, m.nilai
from dosen d left join matakuliah mk on mk.idDosen = d.idDosen
left join mahasiswa m on m.idMatkul = mk.idMatkul;

select namaMatkul, namaDosen, m.namaMahasiswa, m.nilai from vNilaiMhs ;
17.  create or replace procedure INPUTMHS (
   in p_idMatkul int,
   in p_namaMahasiswa varchar(100),
   in p_usia int,
   in p_nilai int
)
begin
   insert into mahasiswa (idMatkul, namaMahasiswa, usia, nilai)
   values (p_idMatkul, p_namaMahasiswa, p_usia, p_nilai);
end;

call INPUTMHS(7, 'Hilda', 21, 80);

18. create or replace procedure EDITMHS(
   in p_namaMahasiswa varchar(100),
   in p_namaMahasiswaBaru varchar(100)
)
begin
   update mahasiswa 
   set namaMahasiswa = p_namaMahasiswaBaru 
   where namaMahasiswa = p_namaMahasiswa;
end;

call EDITMHS('Hilda', 'Hildawati');

19. create or replace procedure DELETEMHS (
   in p_namaMahasiswa varchar(100)
)
begin
   delete from mahasiswa 
   where namaMahasiswa = p_namaMahasiswa;
end;

call DELETEMHS('Hildawati');

