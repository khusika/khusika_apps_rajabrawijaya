.class public Lcom/rb/cahaya/raja/global/DBAdapter;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBAdapter.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "da.sl"

.field private static final SCHEMA_VERSION:I = 0x1


# instance fields
.field public jum:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    const-string v0, "da.sl"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/rb/cahaya/raja/global/DBAdapter;->jum:I

    .line 29
    return-void
.end method


# virtual methods
.method public beginTransaction()V
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/rb/cahaya/raja/global/DBAdapter;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 55
    return-void
.end method

.method public endTransaction()V
    .locals 1

    .prologue
    .line 63
    :try_start_0
    invoke-virtual {p0}, Lcom/rb/cahaya/raja/global/DBAdapter;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getData(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "kat"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 98
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v1, "dataArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/Object;>;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/rb/cahaya/raja/global/DBAdapter;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SELECT * FROM oh_lkm WHERE KATEGORI_MINAT = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 102
    .local v0, "cur":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 103
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_1

    .line 105
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v2, "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-string v4, "ID_oh_lkm"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    const-string v4, "IMG_UTAMA"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    const-string v4, "JUDUL_UKM"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    const-string v4, "SUBJUDUL_UKM"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    .line 117
    .end local v0    # "cur":Landroid/database/Cursor;
    .end local v2    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_1
    :goto_0
    return-object v1

    .line 114
    :catch_0
    move-exception v3

    .line 115
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getDataDetail(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 123
    :try_start_0
    invoke-virtual {p0}, Lcom/rb/cahaya/raja/global/DBAdapter;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SELECT * FROM oh_lkm WHERE ID_oh_lkm = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 124
    .local v0, "cur":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 125
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_0

    .line 127
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v1, "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-string v4, "ID_oh_lkm"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    const-string v4, "IMG_UTAMA"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    const-string v4, "JUDUL_UKM"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    const-string v4, "SUBJUDUL_UKM"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    const-string v4, "IMG_DESKRIPSI"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    const-string v4, "DESKRIPSI_UKM"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    const-string v4, "PRESTASI_UKM"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    const-string v4, "PENDAFTARAN_UKM"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .end local v0    # "cur":Landroid/database/Cursor;
    .end local v1    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :goto_0
    return-object v1

    .line 140
    :catch_0
    move-exception v2

    .line 141
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    move-object v1, v3

    .line 143
    goto :goto_0
.end method

.method public getJum()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/rb/cahaya/raja/global/DBAdapter;->jum:I

    return v0
.end method

.method public get_id_oh_lkm(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "kategori"    # Ljava/lang/String;

    .prologue
    .line 151
    const-string v2, "kosong"

    .line 153
    .local v2, "status":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/rb/cahaya/raja/global/DBAdapter;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " SELECT ID_OH_LKM  FROM oh_lkm WHERE KATEGORI_MINAT = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 155
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 156
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 158
    :cond_0
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 159
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 165
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-object v2

    .line 162
    :catch_0
    move-exception v1

    .line 163
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "database"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method insertData(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 216
    const-string v0, " (\'1\',\'em.jpg\',\'EM\',\'Eksekutif Mahasiswa\',\'em_icon.jpg\',\'<p><p>Eksekutif Mahasiswa merupakan lembaga eksekutif kemahasiswaan dalam ruang lingkup universitas di Universitas Brawijaya. Tugas dan wewenang dari Eksekutif Mahasiswa meliputi advokasi mahasiswa, penyelenggara kegiatan kemahasiswaan, peningkatan soft skill, pengabdian masyarakat serta mengawal kebijakan pemerintah.</p><p><strong>CP : </strong></p> <p>085693992834 (Marwa)</p><p>&nbsp;</p><p><strong>Official Account :</strong></p><p>Twitter : @EM_UBofficial</p><p>Ig : @EM_ubofficial</p><p>Youtube : em ub official</p><p>Line : @em_ub</p><p>Web : em.ub.ac.id</p><p>&nbsp;</p>\',\'\',\'\'), (\'2\',\'dpm.jpg\',\'DPM\',\'Dewan Perwakilan Mahasiswa\',\'dpm_icon.jpg\',\'<p>Dewan Perwakilan Mahasiwa (DPM) merupakan lembaga tinggi legislatif di tingkat mahasiswa Universitas Brawijaya yang memiliki fungsi legislasi, advokasi, dan kontroling. DPM UB memiliki 3 komisi yakni Komisi Humas dan Kelembagaan, Komisi Undang-undang, dan Komisi advokasi.</p><p><strong>Cp :</strong></p><p>081263198271 (Yogi)</p><p><strong>Official Account :</strong></p><p>Line : @hxx4179g / DPM UB</p><p>IG : @dpmub</p>\',\'\',\'\'), (\'3\',\'kongresmahasiswa.jpg\',\'Kongres Mahasiswa\',\'Kongres Mahasiswa\',\'kongresmahasiswa_icon.jpg\',\'<p>Kongres Mahasiswa Universitas Brawijaya merupakan lembaga tertinggi dalam kehidupan kemahasiswaan di Kampus Universitas Brawijaya dengan sistem kerja Kolektif Kolegial. Salah satu tugas dan wewenang Kongres Mahasiswa Universitas Brawijaya adalah menetapkan AD/ART LKM UB, menetapkan Dewan Perwakilan Mahasiswa Universitas Brawijaya terpilih dan menetapkan presiden/wakil presiden Eksekutif Mahasiswa Universitas Brawijaya terpilih yang dilakukan dalam persidangan Kongres Mahasiswa Universitas Brawijaya.</p><p><strong>Cp :</strong></p><p>Irwan Syah Erlangga (087750564358)</p>\',\'\',\'\'), (\'4\',\'minat_kesejahteraanmahasiswa_uaki.jpg\',\'UAKI\',\'Unit Aktivitas Kerohanian Islam\',\'minat_kesejahteraanmahasiswa_uaki_icon.jpg\',\'<p>UAKI UB (Unit Aktivitas Kerohanian Islam Universitas Brawijaya) merupakan tempat berhimpunnya para mahasiswa universitas Brawijaya dari berbagai fakultas yang ingin mengaktualisasikan diri di bidang keIslaman, serta mewadahi mahasiswa muslim UB untuk berkontribusi dalam hal keagamaan islam. UAKI UB merupakan LDK (Lembaga Dakwah Kampus) yang terintegrasi se-Indonesia melalui FSLDK (Forum Silaturahmi Lembaga Dakwah Kampus). UAKI UB bertanggung jawab secara langsung terhadap mahasiswa muslim (melalui program peduli mahasiswa, agenda keislaman, dan pembinaan) maupun secara tidak langsung (melalui koordinasi dengan Lembaga Dakwah Fakultas). UAKI berdiri pada tahun 1988.</p><p>UAKI UB memiliki beberapa program kerja, yaitu:</p><ol><li>Brawijaya Muslim Week (BMW) : merupaka agenda terbesar dari UAKI UB. Kegiatannya berupa seminar nasional, lomba, dan bazaar buku, baju dan makanan.</li><li>Akatsuki (Asyiknya Kembangin Bakat Bersama UAKI): merupakan sarana untuk mengasah diri sesuai dengan passion yang dimiliki oleh mahasiswa brawijaya. Agenda ini memiliki beberapa kelas, yaitu TOEFL Class, Tahsin dan tahfiz, Kelas Bahasa, dan beberapa cabang olahraga.</li><li>Kasensor (Kajian Senin Sore): merupakan kajian tematik rutin yang dilakukan setiap senin bada maghrib di masjid raden patah universitas brawijaya.</li><li>Acara Kemuslimahan: merupakan acara khusus wanita muslim berupa kajian, latihan softskill, seminar, tutorial, dsb.</li><li>Mentoring: merupakan sarana untuk pembinaan karakter, pengontrolan ibadah dan menambah wawasan islam yang rutin dilakukan setiap minggu.</li></ol><p>Dan masih banyak lagi. Bangga jadi anak rohis! :)</p><p>#Amazing Breakthrough</p><p>&nbsp;</p><ul><li><strong>Alamat Sekret:</strong></li></ul><p>Komplek Gedung Kebudayaan Mahasiswa Universitas Brawijaya</p><p>Jalan MT. Haryono 161 A Malang 65141</p><p><strong>CP :</p></strong><p>085719272317 (Fadzar Djarkim Firdaus)</p><p>085656005569 (M. Fitrah Husfarandy)</p><p><strong>Perwakilan :</strong></p><p>081231486465 (Ubaidillah Hakim F)</p><p><strong>Website :</strong></p><p>http://uaki.ub.ac.id</p>\',\'<ul><li>Juara 1 MHQ Cabang 15 Juz MTQ UB 2016</li></ul>\',\'http://bit.ly/DaftarRohisUB\'), (\'4\',\'minat_kesejahteraanmahasiswa_uakk.jpg\',\'UAKK\',\'Unit Aktivitas Kerohanian Kristen\',\'minat_kesejahteraanmahasiswa_uakk_icon.jpg\',\'<li><p>UAKK adalah organisasi yang bergerak di bidang kerohanian Kristen dengan kegiatan yang berbasiskan pelayanan yang disalurkan melalui 3 departemen, yaitu Departemen Pembinaan, Departemen Penelitian dan Pengembangan, dan Departemen Pemberdayaan Sumber Daya dengan kegiatan antara lain :</p><ol><li>Live In (Misi Pelayanan)</li><li>PD (Persekutuan Doa) Gabungan</li><li>Natal Civitas</li><li>Paskah Civitas yang terdiri dari 3 rangkaian(Festival Akustik, Bakti Sosial, Ibadah Puncak)</li><li>Kamp Pembinaan Pelayan (KPP)</li><li>Penyambutan Mahasiswa Baru (PMB) UAKK</li><li>Pekan Olahraga UAKK (POU)</li><li>Seminar Pra Alumni (SPA)</li><li>Kompetisi Futsal Antar PMK (Persekutuan Mahasiswa Kristen) se Brawijaya</li><li>PK2MU dalam menyambut Mahasiswa Kristen</li></ol></li><li><p><strong>Alamat Sekret:</strong></p><p>Gedung UKM (Unit Kegiatan Mahasiswa) Baru&nbsp; lantai II no.7, Jalan M.T Haryono no. 169, Malang 65145</p></li><p><strong>CP :</strong></p><p>081332060656 (Belsazar Elgiborado Giovani Djoedir)</p><p><strong>Web :</strong></p><p>uakkbrawijaya@gmail.com</p><p><strong>Perwakilan :</strong></p><p>Eunike Debora Purba</p>\',\'<ul><li><p>Juara 1 Lomba Akustik Vocadfest tahun 2016</p></li></ul>\',\'\'), (\'4\',\'minat_kesejahteraanmahasiswa_uakkat.jpg\',\'UAKKat\',\'Unit Aktivitas Kerohanian Katolik \',\'minat_kesejahteraanmahasiswa_uakkat_icon.jpg\',\'<p>Perkenalan UAKKat, Perkenalan pengurus,dll, Promosi kegiatan.</p><p><strong>Alamat secret :</strong></p><p>Gedung UKM lt. 2 No 6</p><p><strong>CP : </strong></p><p>085655285521 (Ketua Umum)</p><p><strong>Perwakilan UKM :</strong></p><p>Maria Brigita Putri Hanyani, 085655285521</p><p><strong>Website:</strong></p><p>uakkatbrawijaya.blogspot.com</p>\',\'\',\'http://bit.ly/formmaba2016\'), (\'4\',\'minat_kesejahteraanmahasiswa_uakb.jpg\',\'UAKB\',\'Unit Aktivitas Kerohanian Buddhis\',\'minat_kesejahteraanmahasiswa_uakb_icon.jpg\',\'<p>UAKB UB merupakan organisasi keagamaan yang bertujuan<br /> menyelenggarakan kegiatan-kegiatan dalam lingkup ajaran Buddha<br /> Dhamma.<br /> Kegiatan UAKB:</p><p>- Dharmayatra</p><p>- BaktiSosial</p><p>- Perayaan Hari Besar Agama Buddha</p><strong>ALAMAT SEKRET:</strong><p>Gedung Sekber Unitas Universitas Brawijaya, Lt. II, No. 5</p><p><strong>CP : </strong></p><p>083834129898 (Deviany)</p>\',\'\',\'\'), (\'4\',\'minat_kesejahteraanmahasiswa_unikahidha.jpg\',\'UNIKAHIDHA\',\'Unit Kerohanian Hindu Dharma\',\'minat_kesejahteraanmahasiswa_unikahidha_icon.jpg\',\'<p>UNIKAHIDHA memiliki kegiatan untuk mengembangkan semangat keagamaan, intelektual, dan sosial anggota UNIKAHIDHA Universitas Brawijaya dalam rangka turut serta berperan aktif dalam pembangunan nasional.</p><ul><li><strong>Alamat Sekret</strong><strong>:</strong></li></ul><p>Sekretariat Sekber. Unitas. Lantai IV Jalan M.T. Haryono 169 Malang 65145</p><p><strong>CP :</strong></p> <p>082155861739 (Gotama)</p><p>083114509040 (Adi Suarya)</p><p>083114032723 (Rasti)</p><p><strong>Perwakilan :</strong></p> <p>081331269841(Gede Satria Harimanata)</p><p><strong>Website : </strong><p><p>http://unikahidha.ub.ac.id</p>\',\'\',\'https://goo.gl/forms/WB745ez6lU33D2NG3\'), (\'5\',\'minat_khusus_menwa.jpg\',\'Menwa\',\'Resimen Mahasiswa\',\'minat_khusus_menwa_icon.jpg\',\'<p>Berikut beberapa kegiatan Menwa yang dapat ikelompokkan kedalam dua klasifikasi besar, yaitu:</p><p><strong>KURSUS DAN PENDIDIKAN :</strong></p><p>- PENDIDIKAN DAN LATIHAN DASAR MENWA (DIKLATSAR)</p><p>- KURSUS KADER PELAKSANA (SUSKALAK)</p><p>- KURSUS KADER PEMIMPIN (SUSKAPIN)</p><p>- KURSUS PELATIH NASIONAL (SUSPELAT) NASIONAL</p><p>- KURSUS DAN PENDIDIKAN SCUBA DIVING</p><p>- KURSUS PEMBINAAN MENTAL (SUSKABINTAL)</p><p>- PENDIDIKAN PROVOOST</p><p>- PENDIDIKAN POLMEN (POLISI MENWA) NASIONAL</p><p>- KURSUS MANAGEMENT ORGANISASI DAN ADMINISTRASI</p><p>- KURSUS DAN PENDIDIKAN SURVIVAL</p><p>- KURSUS DAN PENDIDIKAN KESEHATAN</p><p><strong>LOMBA DAN LATIHAN :</strong></p><p>- LOMBA MENEMBAK</p><p>- BONGKAR PASANG SENJATA</p><p>- LATIHAN DAN LOMBA LEMPIKA (LEMPAR PISAU DAN KAPAK)</p><p>- PENEMPUHAN BARET GABUNGAN</p><p>- LOMBA NAPAK TILAS DAN LONG MARCH</p><p>- JASMANI MILITER</p><p>- YOUNG MODO (BELADIRI MILITER)</p><p>- JALAKAPARAGI</p><p>- KETERAMPILAN OUTBOUND: MOUNTAINERING, REPLING, DLL.</p><p>&nbsp;</p><p>Resimen Mahasiswa merupakan Unit Kegiatan Mahasiswa (UKM) yang tergolong minat bakat khusus. Menwa adalah suatu kegiatan yang berorientasi pada pembinaan fisik dan mental melalui berbagai macam kegiatan kursus dan pendidikan. Serta wadah dalam memupuk kemandirian yang kuat, jiwa patriotis nasionalis, religius, disiplin, serta pengabdian yang tiada batas dibawah Corps Baret Ungu, Resimen Mahasiswa Indonesia.</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Dalam pelatihan maupun penyelenggaraan pendidikan Menwa dipegang langsung oleh Pelatih yang unggul dari militer. Sehingga masing-masing individu dibentuk dan disiapkan menjadi pribadi yang bermental baja serta loyal terhadap instansi atau induknya. Menwa juga memiliki corps kebanggaan yang saling bekerja sama dalam melaksanakan kegiatan. Kekuatan utuh dari Resimen Mahasiswa adalah kekompakan dan jiwa kekeluargaan yang tinggi. Disamping itu kemampuan <em>soft skill</em> (misal: bakat, kemampuan administrasi, dll) juga dilatih secara bertahap dalam proses berorganisasi. Rasa toleransi dan hirarki adalah bekal dalam melaksanakan sistem organisasi yang dijunjung tinggi.</p><p>&nbsp;</p><p><strong>CP : </strong></p><p>085789920007 (WINDY EKA)</p><p><strong>Website :</strong></p><p>menwaub.ac.id / instagram: satmenwa803ub</p>\',\'<p>- Juara Harapan 1 Long March dan Lomba Napak Tilas Cirebon</p><p>- Juara Umum lomba essay Resimen Mahasiswa Indonesia 2015</p><p>- Juara Umum Lomba Napak Tilas dan Wisata Madura 2015</p><p>- Penyelenggara Kursus Pelatih Nasional Resimen Mahasiswa Indonesia</p><p>- Dll</p>\',\'http://menwa.ub.ac.id\'), (\'5\',\'minat_khusus_ksr.jpg\',\'KSR\',\'KORPS SUKARELA\',\'minat_khusus_ksr_icon.jpg\',\'<p>ORGANISASI YANG BERGERAK DI BIDANG SOSIAL KEMANUSIAAN DAN KEPALANGMERAHAN</p><p><strong>Alamat Sektret :</strong></p><p>Gedung UKM Kav 1 &ndash; 2 Universitas Brawijaya</p><p><strong>CP :</strong></p><p>(0341) 570161 (No Telp Sekretariat)</p><p>83834696011 (Nisa)</p><p><strong>Website :</strong></p><p>ksr.ub.ac.id</p>\',\'<ol><li>Juara 2 Photo Corner NVRCC 2016 Tingkat Nasional</li></ol>\',\'http://ksr.ub.ac.id\'),"

    .line 228
    .local v0, "data1":Ljava/lang/String;
    const-string v1, " (\'5\',\'minat_khusus_impala.jpg\',\'IMPALA\',\'Ikatan Mahasiswa Pencinta Alam Universitas Brawijaya \',\'minat_khusus_impala_icon.jpg\',\'<p>IMPALA UB bernaung dibawah panji Universitas Brawijaya mendasarkan kegiatan pada Tri Dharma Perguruan Tinggi, berwawasan almamater dan bersifat RESOSIL (Rekreasi, Olahraga, Sosial, Ilmiah).</p><p><strong>Rekreasi</strong></p><ol><li>Rekreasi adalah kegiatan yang dilakukan di luar kampus guna mengembangkan sikap kekeluargaan baik intern maupun ekstern antar sesame anggota dan masyarakat.</li><li>Memupuk rasa kecintaan terhadap lingkungan alam sebagai bagian integral dengan sesame manusia yang menimbulkan sikap ikut bertanggungjawab atas kelestariannya.</a></li></ol><p><strong>Olah Raga</strong></p><ol><li>Olah raga kepencintaalaman yang dilakukan di alambebas.</li><li>Meningkatkan mina berolahraga baik yang secara perorangan maupun kelompok guna memperoleh kekuatan fisik dan keterampilan dalam dunia kepencintaalaman.</li><li>Bentuk kegiatannya seperti : Navigasi, SAR, Rock Climbing, Caving dan Olahraga Arus Deras</li></ol><p><strong>Sosial</strong></p><ol><li>Anggota IMPALA UB sebagai makluk social diharapkan mempunyai sikap saling menghormati, menghargai, tolong-menolong, dan tenggang rasa antar sesame manusia guna memupuk rasa tanggungjawab kemanusiaan.</li><li>Bentuk kegiatan di bidang social tercakup dalam satu pola pengabdian masyarakat yaitu memberikan karya nyata dalam masyarakat, memberikan motivasi pada anggota untuk berperan serta dalam proses pembangunan bangsa melalui penyuluhan kesejahteraan rohani dan jasmani di kalangan masyarakat.</li></ol><p></a><strong>Ilmiah</strong></p><p>Bahwa anggota IMPALA UB sebagai insane akademis dituntut untuk bersifat edukatif dalam menghadapi permasalahan yang ada terutama di bidang kepencintaalaman danl ingkungan hidup.</p><ol><li>Diarahkan untuk mengembangkan penalaran anggota IMPALA UNIBRAW dalam menggunakan pendapat baik lisan maupun tulisan.</li><li>Bentuk kegiatan tersebut antara lain ceramah, diskusi, dan penelitian.</li></ol> <p><strong>Alamat Sekret : </strong><p>Jl. Veteran 06C Kav.B.01 Malang</p> <p><strong>CP : </strong></p><p>Fauzi Ahmad (081331697348) , Ayu Saputri (08566631080)</p><p><strong>Web : </strong><p>impalaub.or.id</p><p>Perwakilan :</strong></p><p> Fauzi Ahmad Y.</p>\',\'<p>IMPALA Universitas Brawijaya berdiri sejak tahun &nbsp;1976, dan merupakan Pencinta Alam mahasiswa tertua di kota Malang, dengan berbagai prestasi diantaranya:</p><p>- Penelusuran gua-gua di Indonesia dari Sabang sampai Merauke, termasuk gua terdalam di Indonesia, Leang Puteh sulawesi.</p><p>- Pemanjatan tebing dari Sabang sampai Merauke. Termasuktebing-tebing di Sabah, Malaysia dan salah satu tebing es 7 summits Cartenz Pyramid.</p><p>- Pengarungan sungai di Indonesia dan memiliki 2 set perahu karet.</p><p>- Mendaki gunung-gunung dalam maupun luar negeri.</p><p>- Studi maupun pengabdian masyarakat diberbagai pedalaman Indonesia, yang terbaru yaitu Penggunaan Biogas dan Pengolahan produk dodol susu di desa binaan Brau, Batu.</p><p><strong>Prestasi di bidang ilmiah meliputi:</strong></p><p>- Penelitian baik mengenail lingkungan sampai kepada inventarisasi fauna flora di berbagai lokasi di Indonesia.</p><p>- Jurnalistik yang telah mempunyai pengalaman 35 tahun.</p><p>- Manajemen organisasi IMPALA Universitas Brawijaya diakui di kalangan penggiat olahraga maupun pemerintahan.</p>\',\'https://docs.google.com/forms/d/e/1FAIpQLSflphzVvF-HS1bLHVv6sK5LDrkgy3qDERLqGuDtXBj4YpIK0g/viewform?c=0&w=1&usp=mail_form_link\'), (\'5\',\'minat_khusus_pramuka.jpg\',\'PRAMUKA\',\'PRAJA MUDA KARANA\',\'minat_khusus_pramuka_icon.jpg\',\'<p>Kegiatan Racana Brawijaya meliputi kegiatan rutin tahunan, kegiatan rutin periodik dan kegiatan terprogram hasil rapat kerja Racana Brawijaya. Kegiatan tersebut diputuskan pada setiap rapat kerja tahunan. Selain itu juga terdapat kegiatan-kegiatan insidental.</p><p>Kegiatan rutin tahunan Racana Brawijaya :<br /> 1. Musyawarah Pandega (MUSDEGA) Racana Brawijaya.<br /> 2. Rapat Kerja Racana Brawijaya.<br /> 3. Peringatan HUT Racana Brawijaya.<br /> 4. Pendidikan Dasar Kepramukaan (DIKSARPRAM) Racana Brawijaya.<br /> 5. Eduvacation<br /> 6. Kegiatan Bina Satuan.<br /> 7. Pengabdian Masyarakat.<br /> 8. Halal Bi Halal dan Temu Alumni.<br /> 9. Ekspedisi Gunung Rimba dan Fun Camp.</p><p>Kegiatan-kegiatan rutin periodik Racana Brawijaya.<br /> 1. Lomba Prestasi Kepramukaan (LOSIPRAM) SE-JAWA BALI<br /> 2. Lomba Prestasi Pramuka Penggalang (LOSIPRAGA)&nbsp;regional Jawa Timur<br /> 3. Lomba Siaga Terampil (LOSIPIL) Se-Malang Raya</p><p><strong>Alamat Sekret :</strong><p> Gedung UKM Universitas Brawijaya Kavling 02 Lantai 2 Jl. M.T. Haryono 169 Kota Malang 65145</p> <p><strong>CP : </strong></p><p>085736867269 (Rian Hermawan)</p> <p><strong>Perwakilan :</strong></p><p> 082331410372 (Durrotun Nihayah)</p><p><strong>Website : </strong></p><p>http://pramuka.ub.ac.id</p>\',\' \',\'http://pramuka.ub.ac.id\'), (\'5\',\'minat_khusus_tegazs.jpg\',\'TEGAZS\',\'Tim Penanggulangan Penyalahgunaan Napza dan HIV/AIDS\',\'minat_khusus_tegazs_icon.jpg\',\'<p>Tegazs merupakan sebuah Unit Kegiatan Mahasiswa yang bergerak di bidang pencegahan NAPZA dan HIV/AIDS. Untuk mencapai tujuannya ukm Tegazs bekerjasama dengan pihak-pihak yang berkaitan dengan NAPZA dan HIV/AIDS seperti : BNN, Kepolisian, LSM, komunitas, dan ukm atau satgas sejenis. Dengan bantuan dari pihak-pihak tersebut, ukm Tegazs melakukan beberapa kegiatan untuk mencegah penyalahgunaan NAPZA dan HIV/AIDS seperti penyuluhan, seminar, talkshow, dll. Dengan adanya kegiatan tersebut diharapkan para peserta dapat memiliki pengetahuan dan kesadaran akan dampak dari penyalahgunaan narkoba. Sehingga dapat mengurangi penggunaan penyalahgunaan narkoba di Indonesia khususnya di lingkungan Universitas Brawijaya dan kota Malang.</p><p><strong>&gt; MRAN (Malam Renungan AIDS Nusantara)</strong></p><p>Malam Renungan AIDS Nusantara atau sering disebut MRAN merupakan sebuah malam yang ditujukan untuk menyatukan semua orang dalam memikirkan dan merenungkan epidemi AIDS yang sudah banyak mengabil nyawa manusia di dunia. Dengan MRAN ini kita diajak juga untuk memberi dukungan kepada orang dengan HIV/AIDS (Odha) dan orang yang hidup dengan HIV/AIDS (Ohidha). Melalui renungan AIDS kita diajak bukan saja untuk peduli terhadap masalah AIDS tetapi melalui renungan kita diajak untuk mengambil langkah-langkah penanggulangan. Jadi MRAN bisa mengubah penderitaan menjadi tekad dan tindakan yang membawa perubahan.</p><p><strong>&gt; WNTD (World No Tobacco Day)</strong></p><p>World No Tobacco Day merupakan sebuah hari yang bebas dengan tembakau atau rokok. Tak seperti tahun lalu yang kita peringati dengan cara orasi keliling Universitas Brawijaya. Pada tahun ini kita memperingati WNTD dengan mengadakan penyuluhan di salah satu SMP di kota malang. Hal tersebut bertujuan untuk mensosialisasikan bahaya rokok kepada remaja-remaja smp yang biasanya pada umur seperti itulah mereka mulai untuk belajar merokok. Dengan adanya penyuluhan ini kami berharap remaja-remaja tersebut tidak mulai untuk merokok dan bisa menjadi generasi penerus bangsa yang bebas dengan asap rokok.</p><p><strong>&gt; HANI (Hari Anti Narkotika Internasional)</strong></p><p>Hari Anti Narkotika Internasional (HANI) merupakan sebuah hari untuk memperingati anti narkotika yang biasa diperingati pada tanggal 26 JUNI. Pada tahun ini tegazs memperingati HANI dengan cara mengadakan acara talkshow. Di acara tersebut kita mengundang 4 narasumber dari beberapa pihak yang berhubungan dengan narkotika yaitu BNN, Kepolisian, dan 2 dokter.</p><p><strong>Alamat sekret :</strong></p><p>Gedung B Rusunawa UB Lt. 1 No. 1 Jl. MT. Haryono No. 6C Kota Malang, Jawa Timur, Indonesia. 65145</p><p><strong>CP :</strong></p><p>Fajar (083851766816)</p><p>Yara (085784488857)</p><p><strong>Website :</strong></p><p>http://tegazs.ub.ac.id</p>\',\'\',\'https://docs.google.com/forms/d/e/1FAIpQLSdjzswyt31ZEecQDKIoGLAYrcrGJ9G7OfAKSutGic641exlqg/viewform\'), (\'6\',\'minat_keolahragaan_uabt.jpg\',\'UABT\',\'Unit Aktivitas Bulutangkis \',\'minat_keolahragaan_uabt_icon.jpg\',\'<p><strong>Latihan Rutin UABT</strong></p><p>Latihan diadakan setiap hari selasa &ndash; minggu pada jam berikut: Selasa dan Kamis untuk non atlet jam 18.00 &ndash; 22.00 WIB, Rabu dan Jumat unutuk atlet jam 18.00 &ndash; 22.00 WIB, Sabtu untuk atlet dan non atlet jam 14.00 &ndash; 18.00 WIB, Minggu untuk atlet dan non atlet jam 08.00 &ndash; 12.00 WIB.</p><p><strong>Refreshing UABT</strong></p><p>Refreshing diadakan untuk melepas kejenuhan selama kegiatan perkuliahan. Refresing ini diadakan setiap satu bulan sekali, kegiatannya yaitu jalan-jalan ke pantai atau ke gunung atau bisa juga ke tempat-tempat yang cocok untuk melepas kejenuhan dengan melihat alam yang masih alami.</p><p><strong>Buber dan SOTR (Sahur On The Road) UABT</strong></p><p>Kegiatan ini dilakukan pada bulan Ramadhan, sekali dalam satu bulan kegiatan buber dilakukan dirumah salah satu pengurus UABT dan mengundang seluruh anggota bahkan alumni UABT, sedangkan SOTR dilakukan pada waktu sahur jam 02.30 dengan membagian makanan untuk sahur ke orang-orang yang membutuhkan di pinggir-pinggir jalan, jalur pembagian makanan untuk SOTR akan dimusyawarahkan terlebih dahulu.</p><p><strong><em>Training Organization</em> (Pelatihan Organisasi)</strong></p><p>Kegiatan ini hanya untuk pengurus UABT. Tujuan diadakannya kegiatan ini adalah untuk mengakrabkan sesama pengurus UABT dan memudahkan pengurus untuk berkoordinasi dalam semua kegiatan di UABT. Kegiatan ini hanya dilakukan sekali selama satu periode kepengurusan UABT.&nbsp; Kegiatan ini juga mengundang pengurus dari periode sebelumnya untuk saling sharing pengalaman pada kepengurusan sebelumnya.</p><p><strong>Alamat Sekret :</strong></p><p>Jl. MT Haryono169 SEKBER Gedung UKM UB Lt. 3 No. 6 Malang 65145</p><p><strong>CP :</strong></p><p>085607532573</p><p><strong>Web :</strong></p><p>uabt.ub.ac.id</p><p><strong>Perwakilan :</strong></p><p>Rizal Suharmulyono</p>\',\'<p><strong><em>Tahun 2010 </em></strong></p><p>- &nbsp; Juara II Beregu Kejuaraan UPI Bandung</p><p>- &nbsp;Juara II Ganda Campuran UPI andung</p><p>- &nbsp;Juara II Beregu Putra Kejuaraan UNJ</p><p><strong><em> Tahun 2011 </em></strong></p><p>- &nbsp;Juara I Tunggal Putra Kejuaraan POMDA</p><p>- &nbsp;Juara II Tunggal Putra Kejuaraan POMDA</p><p>- &nbsp;Juara II Ganda Putra Kejuaraan POMDA</p><p><strong><em> Tahun 2012 </em></strong></p><p>- &nbsp;Juara I Ganda Putra Kejuaraan UNITRI CUP</p><p>- &nbsp;Juara II Ganda Putra Kejuaraan UNITRI CUP</p><p>- &nbsp;Juara III Ganda Putra Kejuaraan UNITRI CUP</p><p><strong><em>Tahun 2013 </em></strong></p><p>- &nbsp;Juara I Ganda Putra Kejuaraan UNITRI CUP</p><p>- &nbsp;Juara III Ganda Putra Kejuaraan UNITRI CUP</p><p>- &nbsp;Juara II Ganda Putri Kejuaraan UNITRI CUP</p><p><strong><em>Tahun 2014</em></strong></p><p>- &nbsp;Juara II Ganda Campuran Kejuaraan UNITRI CUP</p><p>- &nbsp;Juara I Beregu Kejuaraan ASTEC ITS OPEN</p><p>- &nbsp;Juara I Tunggal Putra Kejuaraan INSERSIO CUP</p><p><strong><em>Tahun 2015 </em></strong></p><p>- &nbsp;Juara III Beregu Putri Kejuaraan Liga Mahasiswa Bulutangkis 2015 Central Java and DIY Confrence</p><p>- &nbsp;Juara II Beregu Putra Kejuaraan Liga Mahasiswa Bulutangkis 2015 Central Java and DIY Confrence</p><p>- &nbsp;Juara III Beregu Putri Kejuaraan Liga Mahasiswa Bulutangkis Nasional</p>\',\'https://goo.gl/forms/SYVig7Tpc0QCGMbP2\'), (\'6\',\'minat_keolahragaan_uabb.jpg\',\'UABB\',\'Unit Aktivitas Bola Basket\',\'minat_keolahragaan_uabb_icon.jpg\',\'<p>Keberadaan Unit Aktivitas Bola Basket Universitas Brawijaya untuk mengakomodasikan bakat mahasiswa di cabang bola basket untuk menuju prestasi.</p><p><strong>CP :</strong></p><p> ejichalid (id line)</p>\',\'<p><strong>2004</strong></p><p>- &nbsp;Juara II Tim Putra danPutriKejuaraan Daerah (Kejurda) antarklubJawaTimur 2004</p><p><strong>2006</strong></p><p>- &nbsp;Juara I Tim Putra Ebes Sugiono Cup Malang 2006</p><p>- &nbsp;Juara II Tim Putra danPutri LIBAMA Regional JawaTimur 2006</p><p>- &nbsp;Juara II Tim Putri LIBAMA Nasional Wilayah Jawa-Bali 2006</p><p>- &nbsp;Peringkat III Tim PutriPialaPangdam V KodamBrawijaya Surabaya 2006</p><p><strong>2008</strong></p><p>- &nbsp;Juara II Tim Putri Road to Campus League Malang 2008</p><p>- &nbsp;Juara III Tim Putra Road to Campus League Malang 2008</p><p>- &nbsp;Juara III Tim Putra danPutri LIBAMA Regional JawaTimur 2008</p><p><strong>2009</strong></p><p>- &nbsp;Juara I Tim PutriTurnamenAntarKlub se-Malang Raya 2009</p><p>- &nbsp;Juara II Tim Putri Campus League Malang 2009</p><p>- &nbsp;Juara III Tim Putra danPutri LIBAMA Regional JATIM 2009</p><p>- &nbsp;Juara II Tim Putra LIBAMA KEJURNAS 2009</p><p><strong>2010</strong></p><p>- &nbsp;Juara I Tim Putra danPutri Campus League Malang 2010</p><p>- &nbsp;Juara I Tim Putra danPutri Campus League Malang 2011</p><p>- &nbsp;Juara II Tim Putri Campus League Nasional 2011</p><p>- &nbsp;Juara I Tim Putri Campus League Nasional 2012</p><p>- &nbsp;Juara II Tim PutriWilayah timur LIMA 2013</p><p>- &nbsp;Juara I Tim Putri Campus League Malang 2013</p><p>- &nbsp;Juara II Tim Putra LigaMahasiswa EJC 2014</p>\',\'\'), (\'6\',\'minat_keolahragaan_uabv.jpg\',\'UABV\',\'Unit Aktivitas Bola Voli\',\'minat_keolahragaan_uabv_icon.jpg\',\'<p>UKM Bola Voli memiliki jadwal latihan rutin setiap hari dari pukul 15.30 hingga selesai. Kami juga sering mengikuti ajang-ajang bergengsi yang membawa alamamater tercinta Brawijaya. Namun disini kita tidak hanya bermain voli tapi kita juga belajar berorganisasi dan memiliki kegiatan lainnya untuk meningkatkan kekeluargaan di UABV ini</p><p><strong>Alamat Sekret :</strong></p> <p>Kav. 26 Gedung UKM lt.3, Jl. M.T. Haryono 196, Malang</p><p><strong>CP :</strong></p><p> Tiwi (087849632155)</p><p><strong>Web :</strong></p><p> http://uabv-ub.blogspot.co.id/</p>\',\'<p><strong>2015</strong></p><p>- &nbsp;Juara 1 PTN/S sePulau Jawa di UGM 2015</p><p>- &nbsp;Juara 1 turnament UNPAD 2015</p>\',\'https://goo.gl/forms/5njCKEwWGMY3QeM53\'), (\'6\',\'minat_keolahragaan_uasb.jpg\',\'UASB\',\'Unit Aktivitas Sepak Bola\',\'minat_keolahragaan_uasb_icon.jpg\',\'<p>UKM UASB-UB atau Unit Aktivitas Sepak Bola Universitas Brawijaya merupakan UKM yang secara khusus bergerak dibidang Sepak Bola dan Futsal, dengan membantu menyalurkan dan meningkatkan skill seluruh mahasiswa dan mahasiswi Universitas Brawijaya, khususnya mereka yang berminat dibidang Sepak Bola dan Futsal. Dari masa kemasa, setiap event UASB selalu mencoba dan berusaha memberikan hasil yang terbaik untuk Universitas Brawijaya, baik dievent-event Lokal maupun Nasional. Adapun event yang pernah kami ikuti banyak sekali, beberapa diantaranya:</p><p>- Kejurnas BNFC (futsal),</p><p>- kejurnas BNC (sepak bola),</p><p>- POPDA UM (sepak bola),</p><p>- Kejurnas UI (sepak bola),</p><p>- MFL (futsal), Kejurnas UGM (futsal),</p><p>- Macung CUP, Dll.</p><p>Event-event tersebut hanya sebagian yang bisa kami sebutkan, namun ada banyak sekali event-event yang lain yang sering kami ikuti dan bahkan memperoleh Juara.</p><p>Tempat Latihan:</p><p>Latihan untuk Sepak bola di LapanganBaru UB Dieng (belakangPerumDiengEksklusif) dan Latihan Futsal di UBSC (belakang MX Jl. Veteran )</p><p>&nbsp;</p><p><strong>Alamat Sekret :</strong></p><p>GedungBaru UKM Lantai 1 No.8</p><p><strong>CP : </strong></p><p>085258455552 (ISNAINI)</p><p><strong>Official Account :</strong></p><p>Twitter : @UASB_UB</p><p>Instagram : UASBUB</p><p>LINE : @bkf6112y</p><p>FaceBook : UASB UB</p><p><strong>Perwakilan :</strong></p><p>ISNAINI (HUMAS UASB)</p>\',\'<p><strong>2011</strong></p><p>- &nbsp;Juara 3 Kejurnas LPI 2011</p><p><strong>2012</strong></p><p>- &nbsp;Juara 2 futsal putri POMDA 2012</p><p><strong>2013</strong></p><p>- &nbsp;Juara 4 Kejurnas ITB 2013</p><p><strong>2014</strong></p><p>- &nbsp;Juara 3 Kejurda UM se JATIM 2014</p><p>- &nbsp;Juara 3 Kejurnas UB 2014</p><p>- &nbsp;Juara 2 POPDA UM 2014</p><p>- &nbsp;Juara 1 Universitas MACUNG CUP 2014</p><p><strong>2015</strong></p><p>- &nbsp;Juara 1 Kejurnassepak bola UI 2015</p><p>- &nbsp;Juara 1 MFL 2015</p><p>- &nbsp;Juara 4 futsal putri Kejurnas UB 2015</p><p><strong>2016</strong></p><p>- &nbsp;Juara 2 Kejurnas UGM 2016 (futsal putri)</p><p>- &nbsp;Juara 4 Kejurnas UGM 2016 (futsal putra)</p>\',\'https://docs.google.com/forms/d/e/1FAIpQLSeWMO5xZIpVdpoEtOYT9Sw4KhNVz_fvlEnjjTJQMPfJD1ps3w/viewform\'), (\'6\',\'minat_keolahragaan_uatl.jpg\',\'UATL\',\'Unit Aktivitas Tenis Lapangan\',\'minat_keolahragaan_uatl_icon.jpg\',\'<ol><li>Diklat Anggota Baru (memperkenalkan anggota baru UATL UB kepada organisasi, anggota lainnya, dan kegiatan yang berlangsung di UATL UB).</li><li>Diklat Pengurus (memperkuat kerjasama tim anata pengurus UATL UB selama satu periode).</li><li>Brawijaya National Tennis Tournament (program kerja tahunan UATL UB untuk mengadakan pertandingan tenis lapangan tingat nasional di seluruh universitas Indonesia)</li><li>Pertandingan Persahabatan (untuk mengukur kemampuan atlit dan anggota UATL UB untuk mempersiapkan pertandingan dengan skala regional, nasional, dan internasional)</li><li>Mengikuti pertandingan skala Nasional yang diadakan Universitas di Indonesia, berikut Universitas yang mengadakan pertandingan skala Nasional :</li></ol><p>Universitas Negeri Yogyakarta</p><p>Universitas Airlangga</p><p>Universitas Indonesia</p><p>Universitas yang mengadakan pertandingan skala Regional :</p><ol><li>Sekolah Tinggi Ilmu Ekonomi Perbanas Surabaya</li></ol><p>&nbsp;</p><p><strong>Alamat Sekret : </strong></p><p>Gedung UKM Universitas Brawijaya Lantai 3 No 8, Malang</p><p><strong>CP : </strong></p><p>082110144591 Pandu Kurniawan (Ketua Umum)</p><p>083878522773 Natasha Astria (Bendahara)</p><p><strong>Website : </strong><p>uatl.ub.ac.id</p>\',\'<p><strong>Tahun 2014</strong></p><p><strong>Universitas Negeri Yogyakarta &ndash; Nasional</strong></p><p>- &nbsp;Juara 2 Beregu</p><p>- &nbsp;Juara 3 Ganda Campuran</p><p>- &nbsp;Juara 3 Ganda Putra</p><p><strong>Universitas Airlangga &ndash; Regional</strong></p><p>- &nbsp;Juara 1 Ganda Putra</p><p><strong>Brawijaya National Tennis Tournament &ndash; Nasional</strong></p><p>- &nbsp;Juara 1 Beregu</p><p>- &nbsp;Juara 1 Ganda Putra</p><p>- &nbsp;Juara 2 Ganda Campuran</p><p>- &nbsp;Juara 3 Ganda Putri</p><p><strong>Tahun 2015</strong></p><p><strong>Pekan Olahraga Mahasiswa Nasional </strong></p><p>- &nbsp;Juara 2 Ganda Campuran</p><p>- &nbsp;Juara 2 Ganda Putri</p><p><strong>Pekan Olahraga Mahasiswa Daerah</strong></p><p>- &nbsp;Juara 1 Tunggal Putri</p><p>- &nbsp;Juara 1 Ganda Putra</p><p>- &nbsp;Juara 2 Ganda Putri</p><p><strong>Universitas Negeri Yogyakarta &ndash; Nasional</strong></p><p>- &nbsp;Juara 2 Beregu</p><p>- &nbsp;Juara 3 Ganda Putra</p><p><strong>Universitas Airlangga- Nasional</strong></p><p>- &nbsp;Juara 1 Ganda Putra</p><p><strong>Brawijaya National Tennis Tournament &ndash; Nasional</strong></p><p>- &nbsp;Juara 1 Beregu</p><p>- &nbsp;Juara 2 Ganda Campuran</p><p>- &nbsp;Juara 2 Ganda Putra</p><p><strong>Tahun 2016</strong></p><p><strong>Perbanas Tennis Open &ndash; Regional </strong></p><p>- &nbsp;Juara 3 Ganda Putra</p>\',\'\'), (\'6\',\'minat_keolahragaan_ptm.jpg\',\'PTM\',\'UKM Tenis Meja\',\'minat_keolahragaan_ptm_icon.jpg\',\'<p>PTM UB adalah sebuah UKM yang mewadahi mahasiswa Universitas</p><p>Brawijaya yang memiliki bakat dan minat di bidang tenis meja.</p><p><strong>CP : </strong></p><p>082137712351 (ARIF)</p><p>082112656381 (LUQMAN)</p><p><strong>Perwakilan : </strong></p><p>FajarKhoirudin (FIB)</p><p><strong>Website :</strong></p> <p>PTM.UB.AC.ID</p>\',\'<p><strong>2011</strong></p><p>- &nbsp;Juara 1 Perwosi Cup Kota Malang 2011</p><p>- &nbsp;Juara 2 Perwosi Cup Kota Malang 2101</p><p>- &nbsp;Juara 3 Perwosi Cup Kota Malang 2011</p><p>- &nbsp;Juara 3 Perorangan Putra Jatim HUT Kota Malang ke-97</p><p><strong>2012</strong></p><p>- &nbsp;Juara 3 ITB Open 2012 Tingkat Nasional</p><p><strong>2013</strong></p><p>- &nbsp;Juara 2 Ganda Putri Pomda Jatim</p><p>- &nbsp;Juara 2 Ganda Putra Pomda Jatim</p><p>- &nbsp;Juara 4 Ganda Putri Pomda Jatim</p><p>- &nbsp;Juara 1 Junior Putra Batu Cup</p><p>- &nbsp;Juara 3 Junior Putri Batu Cup</p><p>- &nbsp;Juara 1 Umum Batu Cup</p><p>- &nbsp;Juara 2 Umum Batu Cup</p><p>- &nbsp;Juara 2 Tunggal Putri International UB Open</p><p>- &nbsp;Juara 3 Tunggal Putri International UB Open</p><p>- &nbsp;Juara 3 Beregu Campuran Mahasiswa International UB Open</p><p>- &nbsp;Juara 2 Beregu Putri POMNAS</p><p><strong>2014</strong></p><p>- &nbsp;Juara 3 umum uttra Gajayana Cu</p><p>- &nbsp;Juaa 3 umum putrra BTTC</p><p>- &nbsp;Juara 3 Mahasiswi Putri Kejurnas Mahasiswa UB</p><p><strong>2015</strong></p><p>- &nbsp;Juara 1 Tungga Putra Gajayana Britama Cup Divisi 4</p><p>- &nbsp;Juara 2 Beregu Campuran Umum BTTC Div. 4 Jawa Timur</p><p>- &nbsp;Juara 3 Tunggal Putra Junior BTTC Div. 4 Jawa Timur</p><p>- &nbsp;Juara 3 Tunggal Putri Mahasiswi UNHAS CUP XI NASIONAL</p><p>- &nbsp;Juara 1 Ganda Putri POMDA JATIM</p><p>- &nbsp;Juara 2 Ganda Putri POMDA JATIM</p><p>- &nbsp;Juara 3 Tunggal Putra POMDA JATIM</p><p>- &nbsp;Juara 3 Tunggal Putra Div. 4 TRISAKTI CUP SEJAWA &ndash; BALI</p><p>- &nbsp;Juara 1 Tunggal Putra Mahasiswa UNY Cup Nasional</p><p>- &nbsp;Juara 3 Beregu Campuran Mahasiswa UNY Cup Nasional</p><p><strong>2016</strong></p><p>- &nbsp;Juara 3 BersamaBeregu Malang</p><p>- &nbsp;Juara 2 Gajayana Cup</p>\',\'http://ptm.ub.ac.id\'), (\'6\',\'minat_keolahragaan_bsc.jpg\',\'BSC\',\'Basic Shooting Club\',\'minat_keolahragaan_bsc_icon.jpg\',\'<p><strong>BASIC SHOOTING CLUB </strong>adalah sebuah organisasi olahraga menembak yang memiliki dua kedudukanya itu sebagai club menembak di bawah PERBAKIN dan sebagai Unit Aktifitas Mahasiswa di lingkup Universitas Brawijaya. Dengan tujuan utama mewadahi minat dan bakat mahasiswa Universitas Brawijaya di bidang olahraga menembak pada khususnya dan pengembangan kualitas sumber daya manusia pada umumnya.</p><p>BASIC SHOOTING CLUB berdiri pada tanggal 15 Agustus 2005 dibentuk atas prakarsa Alex Roy Kurniawan Mahasiswa Fakultas Ekonomi Universitas Brawijaya.</p><p>Status BASIC SHOOTING CLUB resmi berdiri dibawah Perbakin Cabang Malang sejak dikeluarkannya Surat Keputusan Ketua Umum Pengcab Perbakin Malang Nomor : 044/SKET/WKC/PCML/V/2009 yang menerangkan bahwa BASIC SC-PCML adalah suatu Club Menembak Sasaran yang didirikan oleh Mahasiswa Universitas Brawijaya Malang dan resmi berada di bawah naungan Perbakin Cabang Malang. Status BASIC SC resmi menjadi Unit Kegiatan Mahasiswa (UKM) Universitas Brawijaya melalui Surat Keputusan Rektor Universitas Brawijaya Nomor : 347/SK/2011 tentang pembentukan Unit Aktivitas Menembak (BASIC SHOOTING CLUB) Universitas Brawijaya.</p><p>BASIC SHOOTING CLUB merupakan club menembak prestasi, dimana pada kegiatannya berkonsentrasi pada bidang tembak sasaran dan tembak reaksi (IPSC). Untuk lokasi latihan menembak Field Target bertempat di Lapangan Tembak Kampus II Universitas Brawijaya di Dieng. Sedangkan untuk latihan Air Pistol/Rifle Match bertempat di Lapangan Tembak mini BASIC SC di area sekretariat.</p><p><strong>Alamat Sekret : </strong></p><p>Gedung Sekretariat Bersama UKM Lantai 2 UniversitasBrawijaya Jl. Veteran Malang 65145</p><p><strong>CP : </strong></p><p>081336652782 (Muhammad Hasbi Assidiqi)</p><p><strong>Website&nbsp;:</strong></p><p>basicsc.ub.ac.id</p><p><strong>Email&nbsp;:</strong></p><p>basicsc@ub.ac.id</p>\',\'<p>UKM Menembak BASIC SHOOTING CLUB dalam sejarahnya telah mengharumkan nama Universitas Brawijaya dalam berbagai ajang kejuaraan menembak baik di tingkat regional, nasional dan internasional. Berikut adalah prestasi yang pernah diraiholeh BASIC SC, antaralain :</p><p>- &nbsp;JUARA III AIR PISTOL PUTRA 10 METER KEJURDA MENEMBAK PERBAKIN JATIM 2010</p><p>- &nbsp;JUARA III AIR PISTOL PUTRA 10 METER KEJURDA MENEMBAK HUT BANK JATIM 2011</p><p>- &nbsp;JUARA I AIR PISTOL PUTRA 10 METER KEJURDA MENEMBAK PERBAKIN MALANG 2011</p><p>- &nbsp;JUARA I AIR PISTOL PUTRI 10 METER KEJURDA MENEMBAK PERBAKIN MALANG 2011</p><p>- &nbsp;JUARA III AIR PISTOL PUTRI 10 METER KEJURDA MENEMBAK PERBAKIN MALANG 2011</p><p>- &nbsp;JUARA I, II &amp; III AIR RIFLE HUNTING PUTRI 10 M KEJURDA BAST 2012</p><p>- &nbsp;JUARA I, II &amp; III AIR RIFLE HUNTING PUTRA 10 M KEJURDA BAST 2012</p><p>- &nbsp;JUARA I, II &amp; III AIR RIFLE HUNTING PUTRI 10 M KEJURDA BAST 2013</p><p>- &nbsp;JUARA I, II &amp; III AIR RIFLE HUNTING PUTRA 10 M KEJURDA BAST 2013</p><p>- &nbsp;JUARA III AIR PISTOL PUTRI 10 METER BEREGU KEJURNAS MENEMBAK SURABAYA 2013</p><p>- &nbsp;JUARA III AIR RIFLE HUNTING PUTRA 10 METER KEJURDA BAST 2014</p><p>- &nbsp;JUARA II &amp; III AIR RIFLE HUNTING PUTRI 10 METER KEJURDA BAST 2014</p><p>- &nbsp;JUARA III CENTER FIRE PISTOL PUTRI 25 METER SOUTH ASIA SHOOTING ASSOCIATION CHAMPIONSHIP (SEASA) 2015</p><p>- &nbsp;JUARA III AIR RIFLE MATCH PUTRI 10 METER PIALA KONI KOTA SURABAYA 2015</p>\',\'http://basicsc.ub.ac.id\'),"

    .line 240
    .local v1, "data2":Ljava/lang/String;
    const-string v2, " (\'6\',\'minat_keolahragaan_bcc.jpg\',\'BCC\',\'Brawijaya Chess Club\',\'minat_keolahragaan_bcc_icon.jpg\',\'<p>Unit Kegiatan Mahasiswa Catur Universitas Brawijaya, bisa dikenal dengan sebutan <strong>Brawijaya Chess Club</strong> (BCC). Berdiri sejak 21 Februari 2011. UKM BCC juga telah resmi menjadi Anggota Klub Catur Malang Kota dan bersertifikat.</p><p>Slogan BCC:&nbsp; Be ChessMaster with BCC</p><p>Slogan Catur: Gens Una Sumus (Kita Satu Keluarga)</p><p>&nbsp;</p><p><strong>Alamat Sekretariat :</strong></p><p> UKM Brawijaya Chess Club, Ged. UKM Lt. 3.9 Universitas Brawijaya. Jln Veteran, Kec. Lowokwaru, Malang 65145.</p><p><strong>CP : </strong></p><p>Reiza Indri Lestari : 085742086303 / id line : Reiza_indri)</p><p><strong>Email :</strong></p> <p>bcc@ub.ac.id</p><p><strong>Official Account = </strong></p><p>Twitter: @bcc_ub</p><p>OA line: trm9176m</p><p><strong>Website: </strong></p><p>bcc.ub.ac.id</p>\',\'<p>2015</p><p>-Juara 1 Catur Beregu Cepat&nbsp;Mall Ciputra World, Surabaya</p><p>-Juara 5 Catur Beregu Cepat&nbsp;Mall Ciputra World, Surabaya</p><p>-Peringkat 6 Catur Beregu Cepat&nbsp;Gedung UKM UGM, Yogyakarta</p><p>-Juara 1 Catur Klasik Putri&nbsp;Gedung Soetardjo, Universitas Jember</p><p>-Juara 3 Catur Klasik Putri&nbsp;Gedung Soetardjo, Universitas Jember</p><p>-Juara 3 Catur Klasik Putra Gedung Soetardjo, Universitas Jember</p><p>-Peringkat 4 Catur Klasik Putra Gedung Soetardjo, Universitas Jember&nbsp;</p><p>-Peringkat 6 Catur Klasik Putri&nbsp;Gedung Soetardjo, Universitas Jember</p><p>-Juara 3 Catur Beregu Cepat&nbsp;Gedung Pendopo Agung, Politeknik Negeri Bandung</p><p>-Juara 1 Catur Beregu Cepat&nbsp;Gedung Olahraga Pertamina, Universitas Brawijaya</p><p>-Juara 3 Catur Beregu Cepat&nbsp;Gedung Olahraga Pertamina, Universitas Brawijaya</p><p>-Juara 1 Catur Beregu Kilat Putri&nbsp;Universitas Syiah Kuala, Nanggro Aceh Darussalam</p><p>-Juara 3 Catur Beregu Klasik Putri&nbsp;Universitas Syiah Kuala, Nanggro Aceh Darussalam</p><p>-Juara 3 Catur Beregu Kilat Putra&nbsp;Universitas Syiah Kuala, Nanggro Aceh Darussalam</p><p>-Juara 2 Catur Beregu Klasik Putra&nbsp;Universitas Syiah Kuala, Nanggro Aceh Darussalam</p><p>-Juara 2 Catur Beregu Klasik&nbsp;Base Camp Klub Catur</p><p>2016</p><p>-Juara 3 Catur Beregu Cepat&nbsp;Grand City Mall, Surabaya</p><p>-Juara 1 Perorangan&nbsp;Grand City Mall, Surabaya</p><p>-Peringkat 4 Perorangan&nbsp;Grand City Mall, Surabaya</p><p>&nbsp;</p>\',\'http://bit.ly/OpenRecruitmentBCC2016\'), (\'6\',\'minat_keolahragaan_taekwondo.jpg\',\'TI\',\'Taekwondo Indonesia Universitas Brawijaya\',\'minat_keolahragaan_taekwondo_icon.jpg\',\'<p>Taekwondo Indonesia Universitas Brawijaya atau disingkat TI-UB merupakan komunitas beladiri taekwondo untuk Mahasiswa Universitas Brawijaya. Dalam TI-UB, anggota tidak hanya dididik soal skill, tapi juga fisik dan mental seorang FIGHTER. Tidak hanya itu, TI-UB juga mengajarkan soal kedisiplinan, empati dan pembentukan karakter yang kuat di masyarakat. TI-UB sendiri juga memiliki ranting-ranting yang ada di beberapa sekolah di Malang untuk dapat menjadi generasi penerus pengharum nama Universitas Brawijaya melalui Taekwondo. Taekwondo Indonesia Universitas Brawijaya!!! Masuk-Main-Menang!!!</p><strong>Alamat Sekret :</strong></p><p>Gedung UKM UB lantai 4 ruang 1</p><p><strong>CP :</strong></p><p>081233467463 (Farizi)</p><p>081249698980 (Adhinta)</p><p>082225203932 (Nanda)</p><p><strong>Website : </strong></p><p> http://taekwondobrawijaya.blogspot.co.id</p> <p>https://www.facebook.com/Taekwondo.Indonesia.Universitas.Brawijaya</p><p><p><strong>Perwakilan :</strong></p> <p>Rifan Darmawan</p>\',\'<p><strong>Kejurprov Malang 25-26 April 2015</strong></p><p>-&nbsp;3 Emas, 1 Perak, 4 Perunggu</p><p><strong>Kejurprov Surabaya 2-4 Oktober 2015</strong></p><p>-&nbsp;1 Emas, 2 Perak, 1 Perunggu</p><p><strong>Kejurmanas FEUI CUP 27-30 April 2015</strong></p><p>-&nbsp;3 perak</p><p><strong>Porprov Jatim V</strong></p><p>-&nbsp; 1 Emas, 1 Perak, 2 Perunggu</p><p><strong>Kejurprov Gresik 25-27 Maret 2016</strong></p><p><strong><p>-&nbsp; 1 Emas, 3 Perak, 2 Perunggu</p><p><strong>Kejurmanas FEUI CUP 20-21 April 2016</strong></p><p>-&nbsp; 6 Emas, 1 Perak, 3 Perunggu</p>\',\'http://bit.ly/formspab\'), (\'6\',\'minat_keolahragaan_inkai.jpg\',\'INKAI\',\'Unit Aktivitas Karate-Do Indonesia\',\'minat_keolahragaan_inkai_icon.jpg\',\'<p>Unit Aktivitas Karate-Do Indonesia (INKAI) Universitas Brawijaya merupakan salah satu dari organisasi kemahasiswaan yang ada di Universitas Brawijaya yang bergerak di bidang keolahragaan. Organisasi ini bertujuan untuk menyalurkan dan mangembangkan minat dan bakat dalam bidang olah raga beladiri karate dengan system pembinaan yang berkesinambungan secara terarah dan terorganisir.</p><p>Sejarah dari Unitas INKAI UniversitasBrawijaya dimulai padatahun 1980 dan resmi menjadi Unit KegiatanMahasiswa pada tanggal 18 Maret 1982 yang diresmikan oleh Bapak A. Masyur Efendi, SH selaku ketua Badan Koordinasi Kemahasiswaan Universitas Brawijaya melaluisurat keputusan No. 003/SK/BKK/1982. Ketua umum INKAI-UB pertama adalah Djati Pamungkas dari Fakultas Teknik. Sedangkan untuk tahun 2011, ketua umum dijabat oleh Lalmihadin dari FakultasPertanian.</p><p><strong>CP : </strong></p><p>Panji Tiara Kusuma / 085346237363</p><p>TrisilliaIndirahayu / 085768498045</p><p><strong>Website :</strong></p><p>inkai.ub.ac.id</p>\',\'<p><strong>Tahun 2013</strong></p><p>-&nbsp;Juara III Kata Perorangan Senior Putri Kejurnas Karate Piala Susilo Bambang Yudhoyono ke-X Tahun 2013</p><p>-&nbsp;Juara III Kata Perorangan Senior Putri Kejurnas Karate Piala Susilo Bambang Yudhoyono ke-X Tahun 2013</p><p>-&nbsp;Juara II Kata Beregu Senior Putri Kejurnas Karate Piala Susilo Bambang Yudhoyono ke-X Tahun 2013</p><p>-&nbsp;Juara I Kumite 75 kg Senior Putra Kejurnas Karate Piala Susilo Bambang Yudhoyono ke-X Tahun 2013</p><p>-&nbsp;Juara II Kumite -70 kg Senior Putra Kejurnas Karate Piala Susilo Bambang Yudhoyono ke-X Tahun 2013</p><p>-&nbsp;Juara II Kumite Beregu Senior Putra Kejurnas Karate Piala Susilo Bambang Yudhoyono ke-X Tahun 2013</p><p>-&nbsp;Juara III Kumite -61 Kg Putri Kejurnas Karate UNS Cup VIII Tahun 2013</p><p>-&nbsp;Juara I Kumite -61 Kg Senior Putri Kejuaraan Piala Walikota Kediri IV</p><p>-&nbsp;Juara II Kumite -50 Kg Senior Putri Kejuaraan Piala Walikota Kediri IV</p><p>-&nbsp;Juara III Kumite -52 Kg Under Putri Kejuaraan Piala Walikota Kediri IV</p><p>-&nbsp;Juara III Kumite -61 Kg Under Putra Kejuaraan Piala Walikota Kediri IV</p><p>-&nbsp;Juara III Kumite -61 Kg Senior Putra Kejuaraan Piala Walikota Kediri IV</p><p>-&nbsp;Juara II Kumite 68 Kg Senior Putri IPB Cup V</p><p>-&nbsp;Juara II Kumite -75 Kg Senior Putra IPB Cup V</p><p>-&nbsp;Juara III Kumite -61 Kg Senior Putri IPB Cup V</p><p>-&nbsp;Juara III Kumite -68 Kg Senior Putri IPB Cup V</p><p>-&nbsp;Juara III Kumite -84 Kg Senior Putra IPB Cup V</p><p>-&nbsp;Juara III Kumite -55 Kg Senior Putra IPB Cup V</p><p>-&nbsp;Juara III Kumite -84 kg putra PORPROV IV Jawa Timur</p><p>-&nbsp;Juara III Kumite -55 kg putra PORPROV IV Jawa Timur</p><p>-&nbsp;Juara III Kumite -68 kg putri senior Kejurnas INKAI 2013</p><p>-&nbsp;Juara III Kumite -61 kg putri senior UNSADA Cup 2013</p><p>-&nbsp;Juara II Kumite 68 kg putri senior Kejurnas Karate Maesa Cup th 2013</p><p>-&nbsp;Juara III Kumite -61 kg putri senior Kejurnas Karate Maesa Cup th 2013</p><p>-&nbsp;Juara III Kumite -50 kg putri senior Kejurnas Karate Maesa Cup th 2013</p><p>-&nbsp;Juara III Kumite -55 kg putri senior Kejurnas Karate Maesa Cup th 2013</p><p>-&nbsp;Juara III Kata beregu putra senior Kejurnas Karate Maesa Cup th 2013</p><p>-&nbsp;Juara III Kata beregu putri senior Kejurnas Karate Maesa Cup th 2013</p><p>-&nbsp;Juara III Kumite -60 kg Under 21 Kejuaraan Daerah FORKI Jawa Timur 2013</p><p>-&nbsp;Juara I Kata Beregu putri POMDA Jatim 2013</p><p>-&nbsp;Juara I Kata Beregu putra POMDA Jatim 2013</p><p>-&nbsp;Juara I Kumite -61 kg putri POMDA Jatim 2013</p><p>-&nbsp;Juara I Kumite 68 kg putri POMDA Jatim 2013</p><p>-&nbsp;Juara I Kumite -67 kg putra POMDA Jatim 2013</p><p>-&nbsp;Juara I Kumite -84 kg putra POMDA Jatim 2013</p><p>-&nbsp;Juara II Kata Beregu putra POMDA Jatim 2013</p><p>-&nbsp;Juara II Kumite 68 kg putri POMDA Jatim 2013</p><p>-&nbsp;Juara III Kumite -55 kg putra POMDA Jatim 2013</p><p>-&nbsp;Juara III Kumite -75 kg putra POMDA Jatim 2013</p><p>-&nbsp;Juara III Kumite -84 kg putra POMDA Jatim 2013</p><p>-&nbsp;Juara III Kumite -55 kg putri POMDA Jatim 2013</p><p>-&nbsp;Juara III Kumite 84 kg putra POMDA Jatim 2013</p><p>-&nbsp;Juara III Kumite -68 kg putri POMDA Jatim 2013</p><p>-&nbsp;Juara III Kata perorangan putra POMDA Jatim 2013</p><p>-&nbsp;Juara II Kumite -61 Kg senior putri Kejuaraan Nasional Jombang Open 2013</p><p><strong>Tahun 2014</strong></p><p>-&nbsp;Juara I Kata Beregu Senior Putra KejuaranPialaSusiloBambangYudhoyono 2014</p><p>-&nbsp;Juara I Kumite Beregu Senior PutriKejuaranPialaSusiloBambangYudhoyono 2014</p><p>-&nbsp;Juara II Kumite -67 kg senior putra Kejuaran Piala Susilo Bambang Yudhoyono 2014</p><p>-&nbsp;Juara III Kumite Beregu senior Putra KejuaranPialaSusiloBambangYudhoyono 2014</p><p>-&nbsp;Juara III Kata Perorangan Senior Putra KejuaranPialaSusiloBambangYudhoyono 2014</p><p>-&nbsp;Juara III Kumite -60 kg Senior PutriKejuaranPialaSusiloBambangYudhoyono 2014</p><p>-&nbsp;Juara III Kumite 60 kg Senior PutriKejuaranPialaSusiloBambangYudhoyono 2014</p><p>-&nbsp;Juara III Kumite -61 kg Junior PutriKejuaranPialaSusiloBambangYudhoyono 2014</p><p>-&nbsp;Juara III Kumite -80 kg Senior Putra KejuaranPialaSusiloBambangYudhoyono 2014</p><p>-&nbsp;Juara 1 Kumite -68 kg Senior PutriKejuaraan Karate Nasional Terbuka</p><p>-&nbsp;Solo Cup VI tahun 2014</p><p>-&nbsp;Juara 2 Kumite -61 kg Junior Putra Kejuaraan Karate Nasional Terbuka Solo Cup VI Tahun 2014</p><p>-&nbsp;Juara 3 Kumite -68 kg Senior PutriKejuaraan Karate Nasional Terbuka Solo Cup VI Tahun 2014</p><p>-&nbsp;Juara 3 Kumite -68 kg Senior PutriKejuaraan Karate Nasional Terbuka Solo Cup VI Tahun 2014</p><p>-&nbsp;Juara 3 Kumite -75 kg Senior Putra Kejuaraan Karate Nasional Terbuka Solo Cup VI Tahun 2014</p><p>-&nbsp;Juara 3 Kumite -60 kg Senior Putra Kejuaraan Karate Nasional Terbuka Solo Cup VI Tahun 2014</p><p>-&nbsp;Juara I Kumite 84 kg Senior Putra Kejuaraan Nasional Karate UIN SunanKalijaga Cup IX Tahun 2014</p><p>-&nbsp;Juara II Kumite -75 kg Senior Putra Kejuaraan Nasional Karate UIN SunanKalijaga Cup IX Tahun 2014</p><p>-&nbsp;Juara III Kumite -68 kg Senior PutriKejuaraan Nasional Karate UIN SunanKalijaga Cup IX Tahun 2014</p><p>-&nbsp;Juara III Kumite -55 kg Senior PutriKejuaraan Nasional Karate UIN SunanKalijaga Cup IX Tahun 2014</p><p>-&nbsp;Juara III Kata Perorangan senior putraKejuaraan Nasional Karate UIN SunanKalijaga Cup IX Tahun 2014</p><p><strong>Tahun 2015</strong></p><p>-&nbsp;Juara I Kumite 60 Kg Senior PutriKejuaraan Nasional Karate SusiloBambangYudhoyono Cup XII 2015</p><p>-&nbsp;Juara I Kumite -80 Kg Senior Putra Kejuaraan Nasional Karate SusiloBambangYudhoyono Cup XII 2015</p><p>-&nbsp;Juara I Kumite -71 Kg Senior PutraKejuaraan Nasional Karate SusiloBambangYudhoyono Cup XII 2015</p><p>-&nbsp;Juara I Kumite -60 Kg Senior PutriKejuaraan Nasional Karate SusiloBambangYudhoyono Cup XII 2015</p><p>p&gt;Juara I Kata Beregu Senior PutraKejuaraan Nasional Karate SusiloBambangYudhoyono Cup XII 2015</p><p>-&nbsp;Juara I Kata Beregu Senior PutriKejuaraan Nasional Karate SusiloBambangYudhoyono Cup XII 2015</p><p>-&nbsp;Juara I Kumite Beregu Senior Putra Kejuaraan Nasional Karate SusiloBambangYudhoyono Cup XII 2015</p><p>-&nbsp;Juara II Kumite 60 Kg Senior PutriKejuaraan Nasional Karate SusiloBambangYudhoyono Cup XII 2015</p><p>-&nbsp;Juara II Kumite -60 Kg Senior PutriKejuaraan Nasional Karate SusiloBambangYudhoyono Cup XII 2015</p><p>-&nbsp;Juara II Kumite -75 Kg Senior Putra Kejuaraan Nasional Karate SusiloBambangYudhoyono Cup XII 2015</p><p>-&nbsp;Juara II Kumite -67 Kg Senior Putra Kejuaraan Nasional Karate SusiloBambangYudhoyono Cup XII 2015</p><p>-&nbsp;Juara II Kumite -61 Kg Junior Putra Kejuaraan Nasional Karate SusiloBambangYudhoyono Cup XII 2015</p><p>-&nbsp;Juara II Kumite Beregu Senior PutraKejuaraan Nasional Karate SusiloBambangYudhoyono Cup XII 2015</p><p>-&nbsp;Juara III Kumite Beregu Senior PutriKejuaraan Nasional Karate SusiloBambangYudhoyono Cup XII 2015</p><p>-&nbsp;Juara III Kumite 61 Kg Junior PutriKejuaraan Nasional Karate SusiloBambangYudhoyono Cup XII 2015</p><p>-&nbsp;Juara III Kumite 61 Kg Junior PutriKejuaraan Nasional Karate SusiloBambangYudhoyono Cup XII 2015</p><p>-&nbsp;Juara III Kumite -55 Kg Senior Putra Kejuaraan Nasional Karate SusiloBambangYudhoyono Cup XII 2015</p><p>-&nbsp;Juara III Kumite Beregu Senior PutriKejuaraan Nasional Karate SusiloBambangYudhoyono Cup XII 2015</p><p>-&nbsp;Juara III Kumite 68 Kg PutriSouth East Asian University Karate Championship SebelasMaret Cup IX 2015</p><p>-&nbsp;Juara I Kata BereguPutriSouth East Asian University Karate Championship SebelasMaret Cup IX 2015</p><p>-&nbsp;Juara I Kumite -75 Kg Putra Kejuaraan Karate AntarMahasiswa Daerah JawaTimur ITS CUP 2015</p><p>-&nbsp;Juara I Kumite -60 Kg Putra Kejuaraan Karate AntarMahasiswa Daerah JawaTimur ITS CUP 2015</p><p>-&nbsp;Juara I Kumite Beregu Putra Kejuaraan Karate AntarMahasiswa Daerah JawaTimur ITS CUP 2015</p><p>-&nbsp;Juara I Kata Beregu Putra Kejuaraan Karate AntarMahasiswa Daerah JawaTimur</p><p>-&nbsp;ITS CUP 2015</p><p>-&nbsp;Juara II Kata Perorangan Putra Kejuaraan Karate AntarMahasiswa Daerah JawaTimur ITS CUP 2015</p><p>-&nbsp;Juara II Kumite -84 Kg Putra Kejuaraan Karate AntarMahasiswa Daerah JawaTimur ITS CUP 2015</p><p>-&nbsp;Juara II Kumite -61 Kg PutriKejuaraan Karate AntarMahasiswa Daerah JawaTimur ITS CUP 2015</p><p>-&nbsp;Juara II Kata BereguPutriKejuaraan Karate AntarMahasiswa Daerah JawaTimur ITS CUP 2015</p><p>-&nbsp;Juara III Kumite 60 Kg PutriKejuaraan Karate AntarMahasiswa Daerah JawaTimur ITS CUP 2015</p><p>-&nbsp;Juara III Kumite -55 Kg PutriKejuaraan Karate AntarMahasiswa Daerah JawaTimur ITS CUP 2015</p><p>-&nbsp;Juara III Kata PeroranganPutriKejuaraan Karate AntarMahasiswa Daerah JawaTimur ITS CUP 2015</p><p>-&nbsp;Juara III Kumite BereguPutriKejuaraan Karate AntarMahasiswa Daerah JawaTimur ITS CUP 2015</p><p>-&nbsp;Juara III Kumite BereguPutriKejuaraan Karate AntarMahasiswa Daerah JawaTimur ITS CUP 2015</p><p>-&nbsp;Juara I Kata PeroranganPutri Senior Kejuaraan Karate Daerah INKAI JawaTimurPiala Honda IX Tahun 2015</p><p>-&nbsp;Juara II Kata PeroranganPutri Senior Kejuaraan Karate Daerah INKAI JawaTimurPiala Honda IX Tahun 2015</p><p>-&nbsp;Juara III Kata PeroranganPutri Senior Kejuaraan Karate Daerah INKAI JawaTimurPiala Honda IX Tahun 2015</p><p>-&nbsp;Juara III Kata Perorangan Putra U-21 Kejuaraan Karate Daerah INKAI JawaTimurPiala Honda IX Tahun 2015</p><p>-&nbsp;Juara II Kumite -55 Kg Senior PutriKejuaraan Karate Daerah INKAI JawaTimurPiala Honda IX Tahun 2015</p><p>-&nbsp;Juara III Kumite -55 Kg Senior PutriKejuaraan Karate Daerah INKAI JawaTimurPiala Honda IX Tahun 2015</p><p>-&nbsp;Juara III Kumite 68 Kg Senior PutriKejuaraan Karate Daerah INKAI JawaTimurPiala Honda IX Tahun 2015</p><p>-&nbsp;Juara III Kumite 68 Kg Senior PutriKejuaraan Karate Daerah INKAI JawaTimurPiala Honda IX Tahun 2015</p><p>-&nbsp;Juara II Kumite -60 Kg Senior Putra Kejuaraan Karate Daerah INKAI JawaTimurPiala Honda IX Tahun 2015</p><p>-&nbsp;Juara I Kumite -55 Kg Senior Putra Kejuaraan Karate Daerah INKAI JawaTimurPiala Honda IX Tahun 2015</p><p>-&nbsp;Juara III Kumite 68&nbsp; Kg U-21 PutriKejuaraan Karate Daerah INKAI JawaTimurPiala Honda IX Tahun 2015</p><p><strong>Tahun 2016</strong></p><p>-&nbsp;Juara I Kumite Perorangan 84 kg U-21 PutraKejuaraan Nasional Karate Terbuka AntarPelajar &ldquo;5th Dekan Cup Open Karate Championship All Students- 2016&ldquo;</p><p>-&nbsp;Juara I KataPerorangan U-21 Putra&nbsp; KejuaraanNasional Karate Terbuka AntarPelajar &ldquo;5th Dekan Cup Open Karate Championship All Students- 2016&ldquo;</p><p>-&nbsp;Juara II Kata BereguU-21 PutraKejuaraan Nasional Karate Terbuka AntarPelajar &ldquo;5th Dekan Cup Open Karate Championship All Students- 2016&ldquo;</p><p>-&nbsp;Juara II Kumite Perorangan -68 kg U-21Putri Kejuaraan Nasional Karate Terbuka AntarPelajar &ldquo;5th Dekan Cup Open Karate Championship All Students- 2016&ldquo;</p><p>-&nbsp;Juara III Kata Perorangan U-21 PutraKejuaraan Nasional Karate Terbuka AntarPelajar &ldquo;5th Dekan Cup Open Karate Championship All Students- 2016&ldquo;</p><p>-&nbsp;Juara II Kumite Perorangan -55 kg Senior PutraKejuaraan Nasional Karate &ldquo;SunanKalijaga Cup X&rdquo;</p><p>-&nbsp;Juara II Kumite Perorangan -60 kg Senior PutraKejuaraan Nasional Karate &ldquo;SunanKalijaga Cup X&rdquo;</p><p>-&nbsp;Juara III Kata Perorangan Senior PutraKejuaraan Nasional Karate &ldquo;SunanKalijaga Cup X&rdquo;</p><p>-&nbsp;Juara III Kumite Perorangan 84kg Senior PutraKejuaraan Nasional Karate &ldquo;SunanKalijaga Cup X&rdquo;</p><p>-&nbsp;Juara III Kumite Perorangan -61kg Senior PutriKejuaraan Nasional Karate &ldquo;SunanKalijaga Cup X&rdquo;</p>\',\'https://docs.google.com/forms/d/e/1FAIpQLSe4-G-77FvEA8CBFaAdIC5IiqB8YURCCDRbPZc4IpERTFKbcA/viewform\'), (\'6\',\'minat_keolahragaan_tapaksuci.jpg\',\'UKM TAPAK SUCI\',\'Tapak Suci\',\'minat_keolahragaan_tapaksuci_icon.jpg\',\'<p>Perguruan Seni Beladiri Indonesia Tapak Suci merupakan salah satu perguruan legendaris di Indonesia. Cikal Bakal Tapak Suci dimulai sejak tahun 1872 di pesantren KH.Syuhada dan atas rahmat dan ridho Allah SWT maka pada tanggal 31 Juli 1963 atau 10 Robiulawal 1383 H, lahirlah Perguruan Tapak Suci secara resmi yang berpusat di Yogyakarta. Tapak Suci telah tersebar di kawasan Asia, Eropa, dan di berbagai negara lainnya. PSBI Tapak Suci menggunakan metode pembelajaran yang metodis, selalu berkembang dan rasional. Materi beladiri berupa teknik praktis, senjata, hindaran, serangan, tangkisan, bantingan, permainan langkah dan seni beladiri yang menggunakan seluruh anggota badan. Dalam jenjang pendidikiannya ada tiga tingkatan yaitu siswa, kader dan pendekar. Masing-masing tingkatan mempunyai lima jenjang tingkatan. Sebagai anggota Tapak Suci dilarang keras melakukan kegiatan syirik dan dalam beladiri sangat dilarang menggunakan atau mempelajari ilmu sesat yang dilarang agama.</p><p>Di lingkungan Universitas Brawijaya Malang PSBI Tapak Suci telah dirintis olehBapak Ismail Navianto,SH. , BapakIr.SholehHadi P. MS. , Ir.Imam Bukhori dan Bapak Drs.Sukarno serta para perintis lainnya sejak tahun 1979. Dan resmi berdiri sejak tanggal 2 November 1982 dengan Surat Keputusan Rektor No. 09/SK/BKK/1982 tanggal 1 November 1982. Keberadaan Tapak Suci Universitas Brawijaya tidak lain adalah untuk mendidik dan membina para anggotanya untuk hidup sehat, bermental sehat, jujur, penuh sportivitas, rendah hati, bertanggungjawab serta bertaqwa kepada Allah SWT.</p><p>&ldquo;Dengan Iman dan Akhlak Kita Menjadi Kuat. Tanpa Iman dan Akhlak Kita menjadi Lemah.&rdquo;</p>  <p><strong>Alamat Sekret :</strong></p><p>GedungRusunawa B kav 1</p><p><strong>CP :</strong></p><p>Burhaanuddin081937124947 (ketua)</p><p>RevitaCarolina&nbsp; 085649966149 (humas)</p><p><strong>Perwakilan :</strong><p><p>Revita Carolina</p> <p><strong>Website</strong> :</p><p>tapaksuci.ub.ac.id</p>\',\'<p><strong>2011</strong></p><p>-&nbsp;Juara III kelas E PutriKejurnas IPSI</p><p>-&nbsp;JuaraUmum I KejurdaTapakSuci Se-Malang Raya</p><p>-&nbsp;Juara III kelas B, C, E Putra dan Juara III kelas C PutriKejurnas IPSI UPN POMDA</p><p><strong>2012</strong></p><p>-&nbsp;JuaraUmum II Kejuaraan Tapak Suci di Universitas Airlangga</p><p>-&nbsp;Juara III kelas D Putra Kejurnas IPSI Universitas Hasanudin</p><p>-&nbsp;JuaraUmum II Kejurda Tapak Suci Se-Malang Raya</p><p>-&nbsp;JuaraUmum I Tapak Suci of Brawijaya University International Open</p><p>-&nbsp;Salah satu pelatih menjadi atlet SEA GAMES</p><p><strong>2013</strong></p><p>-&nbsp;Juara II dan III Seni Ganda POMDA di Universitas Negri Malang</p><p>-&nbsp;JuaraUmum II Kejurda Tapak Suci Se-Malang Raya</p><p><strong>2014</strong></p><p>-&nbsp;Juara III padaKejurnas Tapak Suci di Universitas Muhammadiyah Malang</p><p>-&nbsp;JuaraUmum II Kejurda Tapak Suci Se-Malang Raya</p><p>-&nbsp;JuaraUmum II Tapak Suci of Brawijaya University International Open II</p><p><strong>2015</strong></p><p>-&nbsp;JuaraUmum I Kejuaraan Antar Perti Tapak Suci Se-Jawa Bali di Universitas Muhammadiyah Jember</p><p>-&nbsp;Juara I kelas H Putra, Juara II BebasBeregu Putra pada Kejuaraan Tapak Suci Antar Perti 1 Universitas Sebelas Maret Surakarta</p><p>-&nbsp;Juara I kelas H Putra, Juara II dan III Seni Beregu IPSI di POMDA</p><p>-&nbsp;JuaraUmum II Kejurda Tapak Suci Se-Malang Raya</p><p>-&nbsp;JuaraUmum II Tapak Suci Jember University 2<sup>nd</sup> Open Championship di UNEJ</p>\',\'http://tapaksuci.ub.ac.id\'), (\'6\',\'minat_keolahragaan_perisaidiri.jpg\',\'UKM Perisai Diri\',\'Perisai Diri\',\'minat_keolahragaan_perisaidiri_icon.jpg\',\'<p>Keluarga Silat Nasional (Kelatnas) Indonesia Perisai Diri ini merupakan salah satu anggota IPSI (Ikatan Pencak Silat Indonesia.</p><p>Perisai Diri didirikan secara resmi pada tanggal 2 Juli 1955 di Surabaya, Jawa Timur oleh almarhum RM Soebandiman Dirdjoatmodjo, putra bangsawan keraton paku alam. Keponakan dari Ki Hajar Dewantara.</p><p>Teknik silat Perisai Diri mengandung unsur 156 aliran silat dari berbagai daerah di Indonesia ditambah dengan aliran Shaolin (Siauw Liem) dari negeri Tiongkok. Pesilat diajarkan teknik beladiri yang efektif dan efisien, baik tangan kosong maupun dengan senjata. Metode praktis dalam Perisai Diri adalah latihan Serang Hindar yang mana menghasilkan motto &ldquo;Pandai Silat Tanpa Cedera&rdquo;.</p><p>&nbsp;</p><p><strong>Alamat Sekret :</strong></p><p>Gedung UKM lantai 3, no : 10</p><p><strong>CP :</strong></p><p>Ketua : 089627046797</p><p>Humas : 089696092648</p><p><strong>Official Account:</strong></p><p><strong>Website :</strong></p><p> perisaidiri.ub.ac.id</p><p>Line : @GQE9044T&nbsp;</p><p>IG : perisaidiri_ub</p><p>FB : facebook.com/PerisaiDiriUB</p><p>Twitter : @PerisaiDiriUB</p><p>Youtube: PerisaiDiriUB</p><p><strong>Perwakilan :</strong></p><p>Viyan Fitra Nugraha</p>\',\'<p><strong>Prestasi Tahun 2012-2015</strong></p><p>-&nbsp;Juara Umum 3 Satria Airlangga Cup se Jawa Bali 2012</p><p>-&nbsp;Juara Umum 2 UNESA Open Cup se Jawa Bali 2013</p><p>-&nbsp;Juara 2 Kerapian Teknik &amp; Juara 2 Fight IPSI Kejurnas 2013</p><p>-&nbsp;Juara Umum 3 Kejurda Antar Ranting se Jawa Timur UM Cup II 2014</p><p>-&nbsp;Juara 1 Berpasangan Tangan Kosong Kejurnas PD Antar Perti XXV 2015</p><p>-&nbsp;Juara 2 Kerapian Teknik Kombinasi Beregu Kejurnas PD Antar Perti XXV 2015</p><p>-&nbsp;Juara 3 Seni Tunggal IPSI Kejurnas PD Antar Perti XXV 2015</p><p>-&nbsp;Juara 3 Serang Hindar Kejurnas PD Antar Perti XXV 2015</p><p>-&nbsp;Juara 3 Fight Bebas Khusus Kejurnas PD Antar Perti XXV 2015</p>\',\'https://docs.google.com/forms/d/e/1FAIpQLSeIKTd_zYl5s70uLaUlUn92eNAAedTy4xM5Xoc2t109NuhXzw/viewform?c=0&w=1\'), (\'6\',\'minat_keolahragaan_merpatiputih.jpg\',\'PPS Betako Merpati Putih\',\'Pencak Silat\',\'minat_keolahragaan_merpatiputih_icon.jpg\',\'<p>UKM ini bergerak dibidang pencak silat, tiap tahun ukm merpati putih juga rutin mengikuti kejuaraan-kejuaraan yang diselenggarakan, baik di lingkup merpati putih ataupun lingkup dari ipsi (campuran semua pencak silat). Beberapa prestasi juga telah diraih ukm ini dan disebutkan dibawah. Selain rutin mengikuti kejuaraan, ukm merpati putih juga tidak lupa untuk melakukan kegiatan sosial.</p><ul><li><p><strong>Alamat sekret: </strong></p><p>Gedung Baru UKM lt.1 ruang I-7 Univ. Brawijaya, Malang</p><p><strong>CP : </strong></p><p>Ketum : 083848456629 (reza)</p><p>Humas : 085784682335 (putut)</p><p> 081239367045 (fariz)</p><p><strong>Perwakilan UKM :</strong></p><p>Reza Firmansyah L.P</p><p><strong>Website :</strong><p>http://merpatiputihub.blogspot.co.id/</p>\',\'<p><strong>2012</strong></p><p>-&nbsp;Juara 1 Walikota Cup Kelas B Putra Pesilat Terbaik ( Mas Adi Hartawan)</p><p>-&nbsp;Juara 1 Walikota Cup Kelas B Putri&nbsp; (Mbak Alfiana Dwi C)</p><p>-&nbsp;Juara 2 Olimpiade Brawijaya Kelas B Putra (Mas Adi Hartawan)</p><p>-&nbsp;Juara 2 Pomda Jatim kelas E putra.</p><p>&nbsp;<strong>2013</strong></p><p>-&nbsp;Juara 1 Pra Porprov Kota Batu Kelas D Putra (Mas Thoif Kafabih)</p><p>-&nbsp;Juara 1 Pra Porprov Kota Batu Kelas B Putri (Mbak Alfiana Dwi C)</p><p>-&nbsp;Juara 1 Selekcab Malang Raya Kelas B Putri (Mbak Alfiana Dwi C)</p><p>-&nbsp;Juara 1 Selekcab Malang Raya Kelas C Putra&nbsp; (Mas Haris Fawanis)</p><p>-&nbsp;Juara 1 Selekcab Malang Raya Kelas D Putra (Mas Adin Hanindia)</p><p>-&nbsp;Juara 1 Selekcab Malang Raya Kelas E Putra (Mas Thoif Kafabih)</p><p>-&nbsp;Juara 3 Selekcab Malang Raya Kelas B Putra (Mas Adi Hartawan)</p><p>-&nbsp;Juara 1 Selekda Jatim Kelas B Putri (Mbak Alfiana Dwi C )</p><p>-&nbsp;Juara 1 Selekda Jatim Kelas B Putra (Mas Haris Fawanis)</p><p>-&nbsp;Juara 1 Selekda Jatim Kelas D Putra (Mas Adin Hanindia)</p><p>-&nbsp;Juara 1 Selekda Jatim Kelas E Putra (Mas Thoif Kafabih)</p><p>-&nbsp;Juara 1 Selekda Jatim Kelas H Putra (Mas Reza Firmansyah LP)</p><p>-&nbsp;Juara 3 World Championship MP Lokawulung Kelas B Putra (Mas Haris Fawanis)</p><p>-&nbsp;Juara 2 Pra POMDA Jatim Kelas B Putri (Mbak Alfiana Dwi C)</p><p>-&nbsp;Juara 2 Pra POMDA Jatim Kelas D Putra (Mas Thoif Kafabih)</p><p>-&nbsp;Juara 2 POMDA Jatim Kelas D Putra (Mas Thoif Kafabih)</p><p>-&nbsp;Juara 2 Olimpiade Brawijaya Kelas B Putri (MbakAlfiana Dwi C)</p><p>-&nbsp;Juara 2 Olimpiade Brawijaya Kelas B Putra (Mas Haris fawanis)</p><p>-&nbsp;Juara 3 Olimpiade Brawijaya Kelas A Putra (Mas Abid Hidayat)</p><p>-&nbsp;Juara 3 Olimpiade Brawijaya Kelas E Putra (Mas Resha Winandra)</p><p>-&nbsp;juara 3 kelas D Putra olimpiade brawijaya (Mas Fikri)</p><p>-&nbsp;Juara 3, Kejurnas IPSI UGM kelas H putra.</p><p><strong>2014</strong><strong>&nbsp;</strong></p><p>-&nbsp;Juara 1 Seleksi Kejurnas Antar Perti Kelas B Putra (Mas Haris Fawanis)</p><p>-&nbsp;>Juara 1 Seleksi Kejurnas Antar Perti Kelas D Putra (Mas Thoif Kafabih)</p><p>-&nbsp;Juara 1 Seleksi Kejurnas Antar Perti Kelas G Putra (Mas Reza Firmansyah LP)</p><p>-&nbsp;Juara 2 Seleksi Kejurnas Antar Perti Kelas A Putra (Mas Syaiful)</p><p>-&nbsp;Juara 2 Seleksi Kejurnas Antar Perti Kelas B Putra (Mas Afian)</p><p>-&nbsp;Juara Umum-2 kejurnas MP IPB open (2 emas,1 perunggu).</p><p><strong>2015</strong></p><p>-&nbsp;Juara 2 Kejurnas IPSI UPN, kelas H putra.</p><p>-&nbsp;Juara umum 3 kejurnas MP Atmajaya</p>\',\'http://Bit.ly/formukmmpub\'), (\'6\',\'minat_keolahragaan_psht.jpg\',\'PSHT\',\'Persaudaraan Setia Hati Terate \',\'minat_keolahragaan_psht_icon.jpg\',\'<p><strong>Persaudaraan Setia Hati Terate (PSHT)</strong> atau yang dikenal dengan&nbsp;<strong>SH Terate</strong> adalah suatu persaudaraan perguruan silat yang bertujuan mendidik dan membentuk manusia berbudi luhur,tahu benar dan salah, bertakwa kepada Tuhan Yang Maha Esa, mengajarkan kesetiaan pada hati sanubari sendiri serta mengutamakan persaudaraan antar warga (anggota) dan berbentuk sebuah organisasi yang merupakan rumpun/aliran Persaudaraan Setia Hati (PSH). SH Terate termasuk salah satu 10 perguruan silat yang turut mendirikan Ikatan Pencak Silat Indonesia (IPSI). Cabang SH Terate tersebar di 200 kota/kabupaten di Indonesia dan komisariat luar negeri di Malaysia, Belanda, Rusia (Moskow), Timor Leste, Hongkong, Korea Selatan, Jepang, Belgia dan Perancis dengan keanggotaan (disebut Warga) mencapai 8 juta orang. PSHT komisariat Universitas Brawijaya juga turut aktif membangun nama Organisasi maupun Almamater, baik meliputi pembangunan ornasisasi maupun prestasi, kegiatan latihan rutin dilaksanakan pada:</p><p>Hari: Senin, Rabu, Jum&rsquo;at</p><p>Tempat: Lapangan Rektorat Universitas Brawijaya</p><p>Waktu: 19.00</p><p>Untuk pengambilan form pendaftaran bisa diambil di sekret kami atau menghubungi CP kami.</p><p><strong>Alamat Sekret :<strong></p><p>Gedung UKM Universitas Brawijaya Lantai 3 no 4</p><p><strong>CP :</storng></p><p>Winda (085735904922)</p><p>Anja ( 085730246506)</p><p>Mila (081946037511)</p><p><strong>Perwakilan :</strong></p><p>Muhammad Riduwan</p><p><strong>Website :</strong></p><p>www.psht.ub.ac.id</p>\',\'<p><strong>Prestasi Tahun 2012-2016</strong></p><p>-&nbsp;Juara Umum International cup UNS Solo 2016</p><p>-&nbsp;Juara Umum 3 UM cup 2016</p><p>-&nbsp;Juara Umum 2 UM Cup 2015</p><p>-&nbsp;Juara Umum Pomda 2015</p><p>-&nbsp;Juara Umum UNEJ cup 2012</p>\',\'http://psht.ub.ac.id\'), (\'6\',\'minat_keolahragaan_kempo.jpg\',\'UKM SHORINJI KEMPO\',\'Shorinji Kempo\',\'minat_keolahragaan_kempo_icon.jpg\',\'<p>Shorinji Kempo ditemukan di Jepang pada tahun 1947 oleh Doshin So. Tetapi awal mula sejarahnya dapat di pastikan bermula dari India sekitar 5000 tahun yang lalu, dimana tehnik beladir fisik berkembang dan menyebar bersama ajaran Budha yang saat itu masuk ke daratan Cina, dan mengakar di Biara Shaolin.</p><p>Tehnik Kempo mulai dipelajari dan dipakai oleh para pendeta di Shaolin untuk melatih tehnik beladiri dan juga dipakai untuk melatih mereka secara spiritual.</p><p>Di Indonesia Kempo mulai dikenal pada tahun 1966, dimana pada saat itu tiga orang pemuda Indonesia baru kembali dari menimba ilmu di Jepang. Ketiga pemuda itu adalah Ginanjar Kartasasmita, Indra Kartasasmita dan Uthin Syahraz (alm.) Kemudian ketiga pemuda ini mendirikan organisasi yang diberi nama PERKEMI (Persaudaraan Beladiri Kempo Indonesia) sebagai wadah perkumpulan seni beladiri Kempo secara nasional.</p><p>Di Univ. Brawijaya sendiri terdapat Unit Kegiatan Mahasiswa yang bernama Shorinji Kempo. Disini para kenshi berlatih dengan disiplin sesuai jadwal yang telah ditentukan, yaitu pada hari Rabu, Jum&rsquo;at, dan Minggu. Disini kenshi tidak hanya berlatih untuk beladiri saja,namun juga sebagai wadah untuk kenshi yang berpotensi untuk berprestasi di tingkat regional ataupun Internasional.</p><p><strong>Alamat Sekret :</strong></p><p>Gedung UKM Lt. 1 (Ruangan I.5) Universitas Brawijaya</p><p><strong>CP:</strong></p><p>Galih (085604014247) / Dian (085755956884)</p><p><strong>Official Account:</strong></p><p>Instagram @kempoub</p><p>Twitter @KempoBrawijaya</p><p>Facebook &ldquo;Perkemi Dojo Universitas Brawijaya Malang&rdquo;</p><p><strong>Website :</strong></p><p>www.kempo.ub.ac.id</p>\',\'<p>2015</p><p>-Juara 1&nbsp;Pekan Olahraga Provinsi V Jawa Timur&nbsp;Randori Putra kelas 70 kg</p><p>-Juara 3&nbsp;Pekan Olahraga Provinsi V Jawa Timur&nbsp;Embu Beregu Campuran</p><p>-Juara 2&nbsp;Pekan Olahraga Provinsi V Jawa Timur&nbsp;Embu Berpasangan Putri Kyu 2</p><p>2016</p><p>-Juara Umum 1 Kejuaraan Antar Mahasiswa Se-Asia Tenggara</p><p>-Juara 1&nbsp;Kejuaraan Antar Mahasiswa Se-Asia Tenggara&nbsp;Randori Beregu Putra</p><p>-Juara 2&nbsp;Kejuaraan Antar Mahasiswa Se-Asia Tenggara&nbsp;Randori Putri Kelas 50 kg</p><p>-Juara 2&nbsp;Kejuaraan Antar Mahasiswa Se-Asia Tenggara&nbsp;Randori Putri Kelas 60 kg</p><p>-Juara 1&nbsp;Kejuaraan Antar Mahasiswa Se-Asia Tenggara&nbsp;Embu Beregu Putra Kyukenshi</p><p>-Juara 3&nbsp;Kejuaraan Antar Mahasiswa Se-Asia Tenggara&nbsp;Embu Beregu Putri Kyukenshi</p><p>-Juara 1&nbsp;Kejuaraan Antar Mahasiswa Se-Asia Tenggara&nbsp;Embu Beregu Putra Yudansha</p><p>-Juara 2&nbsp;Kejuaraan Antar Mahasiswa Se-Asia Tenggara&nbsp;Embu Beregu Campuran Kyukenshi</p><p>-Juara 3&nbsp;Kejuaraan Antar Mahasiswa Se-Asia Tenggara&nbsp;Embu Beregu Campuran Yudansha</p><p>-Juara 2&nbsp;Kejuaraan Antar Mahasiswa Se-Asia Tenggara&nbsp;Embu Pasangan Campuran Yudansha</p>\',\'https://docs.google.com/forms/d/e/1FAIpQLSc2uegjlIfKIcIq1PDuAMrN2giY7MuIR7moQVmkKfGAu5VIRQ/viewform\'), (\'6\',\'minat_keolahragaan_ukmr.jpg\',\'UKMR\',\'UKM Renang\',\'minat_keolahragaan_ukmr_icon.jpg\',\'<p>kegiatan ukm renang akan mengadakan latian bersama paling tidak sebulan 2x</p><p><strong>CP: </strong></p><p>Anang Mufid - 0822 44447996</p><ul><li><strong>Perwakilan UKM :</strong></li></ul><p>Nugky Dyah - 085648008633</p>\',\'<ul><li>Juara umum Liga Mahasiswa Renang tahun2014</li><li>Runner Up Liga Mahasiswa tahun 2015</li></ul>\',\'http://renang.ub.ac.id\'), (\'6\',\'minat_keolahragaan_bridge_icon.jpg\',\'UKM BRIDGE\',\'Brawijaya Bridge Community\',\'minat_keolahragaan_bridge_icon.jpg\',\'<p>Bridge merupakan salah satu jenis olahraga (permainan kartu) yang mengandalkan kemampuan berpikir dan bertanding yang dimainkan secara berpasangan. Bridge adalah olahraga otak yang mampu meningkatkan kecerdasan IQ (Intelligence Quotient), SQ (Spiritual Quotient), kecerdasan emosional (EQ), kecerdasan komunikasi (CQ) dan kecerdasan-kecerdasan lainnya. Selain itu, Bridge adalah cabang olah raga yang merupakan gabungan dari ilmu sains, sosial, psikologi dan ilmu terapan yang mampu meningkatkan kompetensi mahasiswa dalam life skill. Olahraga Bridge merupakan terapan dari berbagai disiplin ilmu termasuk didalamnya; matematika, manajemen, sosial dan, psikologi. Terapan matematika dalam permainan Bridge, karena mengandung unsur perhitungan prosentase / peluang dalam perhitungan distribusi lembar kartu. Sedangkan aspek manajemen yang terkandung didalamnya, melatih pemain untuk selalu memperhitungkan dan mengatur langkah-langkah permainan yang akan dilakukan.</p><p>UKM Bridge di UB sendiri berdiri pada tanggal 15 Nopember 2011. Walaupun terbilang masih sangat cukup muda, tapi UKM Bridge UB telah menyumbang berbagai macam prestasi baik lokal, nasional, maupun internasional. Sampai saat sekarang anggota aktif di UKM bridge UB mencapai &plusmn;60 orang, yang anggotanya terdiri dari angkatan 2010-2015.</p><p><strong>Alamat Sekret :</strong></p><p>Gedung UKM Baru Lantai 3 No. 3.7</p><p><strong>CP :</strong></p><p>082217611044 (Agung Nurjaya)</p><p>085755989078 (Sekretaris)</p><p><strong>Website :</strong></p><p>@brawijayabridge</p>\',\'<p><strong>Prestasi Tahun 2011-2015</strong></p><p>-&nbsp;Juara Junior Terbaik Piala Pahlawan yang merupakan even tingkat nasional,</p><p>-&nbsp;Junior Terbaik di Piala Walikota Batu dan Lumajang</p><p>-&nbsp;Juara 2 Piala Walikota Kediri, Juara 2 Piala KONI Surabaya</p><p>-&nbsp;Medali Emas Pasangan Putri pada Pekan Olahraga Provinsi II Jatim</p><p>-&nbsp;Pasangan Mix dan 2 Medali Perunggu Pasangan Mix dan Team Putri dalam Pekan Olahraga Provinsi III Jatim Tahun 2011</p><p>-&nbsp;Medali Perunggu Kejuaraan Provinsi Jatim Tahun 2011</p><p>-&nbsp;Medali Perak dan Perunggu pada Kejurnas ke-49 di Kota Jogjakarta Tahun 2011</p><p>-&nbsp;Medali Perak Mahasiswa dan Mahasiswi Kejurnas ke 14 di Jakarta 2012</p><p>-&nbsp;Medali Perak Airlangga Cup 2013</p><p>-&nbsp;Medali perak di Kejurnas Mahasiswa dan Pelajar di Yogyakarta 2013</p><p>-&nbsp;Dan tidak lupa juga 2 pasang pemain Bridge Brawijaya yang masuk dalam PELATNAS Junior tahun 2013 dan satu pasang menjadi Tim Nasional Yunior U-21 yang bertanding di Wuhan, China</p><p>-&nbsp;Juara 1 Tim Mahasiswa pada Kejurprov Jatim di Surabaya</p><p>-&nbsp;Juara 1 Tim Mahasiswa pada Rektor Cup UB III</p><p>-&nbsp;Juara 1 Kejurnas Mahasiswa tahun 2014</p><p>-&nbsp;Juara 1 Piala Walikota Surabaya tahun 2015</p><p>-&nbsp;Juara 2 Yunior terbaik di UNAIR Cup</p><p>-&nbsp;Medali emas PORPROV 2015 di Banyuwangi</p><p>-&nbsp;Medali Perunggu pada PORPROV 2015Mempertahankan gelar Juara Umum pada Kejuaraan Nasional Mahasiswadengan kembali meraih Medaliemas kategori beregu mahasiswa tahun 2015</p><p>-&nbsp;Medali emas kategori pasangan campuran Kejurnas Bridge Mahasiswa tahun 2015</p><p>-&nbsp;Medali perak kategori pasangan campuran Kejurnas Bridge Mahasiswa tahun 2015</p><p>-&nbsp;Medali perak kategori pasangan mahasiswi Kejurnas Bridge Mahasiswa tahun 2015</p><p>-&nbsp;Juara harapan 1 kategori pasangan mahasiswi Kejurnas Bridge Mahasiswa tahun 2015</p>\',\'http://bit.ly/2cAINxH \'),"

    .line 252
    .local v2, "data3":Ljava/lang/String;
    const-string v3, " (\'6\',\'minat_keolahragaan_baseball.jpg\',\'BSB\',\'Baseball Softball Brawijaya\',\'minat_keolahragaan_baseball_icon.jpg\',\'Baseball Softball Brawijaya atau yang biasa disingkat BSB dalam 1 tahun biasanya menyelenggarakan diklat untuk penerimaan anggota baru dan diesnatalis di villa dengan acara menginap. Acara ini biasanya dilakukan selama 2 hari 1 malam yang diisi dengan kegiatan mengenai baseball softball dasar baik secara materi maupun turun kelapangan dan diisi dengan berbagai macam game. Acara diklat tidak hanya untuk memperkenalkan calon anggota BSB mengenai olahraga baseball dan softball tetapi juga sebagai wadah untuk mendekatkan sesame para calon anggota dan dengan senior. Selain itu dalam 1 tahun, BSB biasanya mengikuti kejuaraan nasional Telkom Cup di Bandung baik putra maupun putri. Dalam 1 minggu, BSB biasa melakukan latihan di lapangan rektorat minimal 3x dalam seminggu dengan latihan wajib pada Sabtu dan Minggu pagi pukul 09.00. Selain berolahraga, anggota BSB juga sering jalan-jalan atau sekedar nongkrong bareng agar kekeluargaan anggota tetap terjaga.<p>&nbsp;</p><p><strong>Alamat Sekret :</strong></p><p>Gedung UKM lt.4 ruang 5</p><p><strong>CP :</strong></p><p>081331685685 / line: elisatya (Elistya)</p><p>085222945013 / line: nobitaniaa (Tania)</p><p><strong>Perwakilan :</strong></p> <p>FienaQurrota</p>\',\'<p><strong>Prestasi Baseball<p>-&nbsp;Peserta UGM cup 2012</p><p>-&nbsp;Peserta Telkom cup 2015</p><p>-&nbsp;Peserta UGM cup 2016</p>\',\'http://goo.gl/forms/g29ZNcKFMf\'), (\'6\',\'minat_keolahragaan_bumerang.jpg\',\'BUMERANG BRAWIJAYA\',\'Bumerang Brawijaya\',\'minat_keolahragaan_bumerang_icon.jpg\',\'<p><strong>Latihan</strong></p><p>Latihan adalah upaya sadar yang dilakukan secara berkelanjutan dan sistematis untuk meningkatkan kemampuan fungsional raga yang sesuai dengan tuntutan penampilan cabang olahraga Bumerang, untuk dapat menampilkan mutu tinggi cabang olahraga Bumerang baik pada aspek kemampuan dasar (latihan fisik) maupun pada aspek kemampuan keterampilannya (latihan teknik). Pada kegiatani ni, sering sekali di datangkan pelatih khusus yang sudah berpengalaman, pengadaan alat pelatihan fisik serta latihan rutin dan latihan tanding sekaligus juga terdapat reward.</p><p><strong>Pembinaan</strong></p><p>Pembinaan adalah segala usaha dan tujuan kegiatan perencanaan, pengorganisasian, penggunaan dan pemeliharaan anggota dengan maksud untuk mampu melaksanakan tugas organisasi dengan efektif dan efisien. Pembinaan dilakukan untuk menghasilkan anggota yang bermutu dan berkualitas yang berdaya guna dan berhasil guna, yang dilakukan secara sistematis dan pemanfaatan potensi dan kemampuan sesuai dengan kebutuhan organisasi. Pada kegiatan ini terdapat pelatihan organisasi dan project.</p><p><strong>Karya Cipta</strong></p><p>Karya Cipta merupakan kegiatan dimana anggota di ajarkan untuk membuat boomerang berdasarkan kataegori bumerang yang di lombakan maupun boomerang hias. Kegiatan ini mencakup pembuatan boomerang dasar yang meliputi cara menentukan sudut bumerang, menentukan kemampuan daya tolak angin dari bumerang, penentuan airfoil dan pemilihan bahan yang baik, juga terdapat pembuatan boomerang seni yang mempunyai bentuk lebih unik dari boomerang dasar. Terdapat juga pembuatan boomerang turnamen yang lebih diutamakan dalam penentuan radius jangkau boomerang, kecepatan kembali boomerang dan pemilihan bahan yang tepat.</p><p><strong>Wirausaha</strong></p><p>Bentuk kegiatan wirausaha yang akan dilkakukan meliputi penjualan dan pembelian boomerang hasil karya cipta anggota UKM Bumerang dan pembukaan stan-stan bazar dalam beberapa event.</p><p><strong>Perlombaan</strong></p><p>Perlombaan merupakan serangkaian kegiatan kejuaraan yang akan diselenggarakan oleh UKM Bumerang Brawijaya. Selaku UKM boomerang pertama di Indonesia, dengan mengadakan perlombaan, UKM Bumerang Brawijaya bias menginspirasi dan mempelopori tumbuhnya olahraga bumerang di kalangan mahasiswa, baik di Universitas Brawijaya sendiri maupun di Universitas atau sekolah tinggi lainnya.</p><p><strong>Kejuaraan</strong></p><p>Kejuaraan boomerang adalah ajang untuk saling mengadu keahlian melempar bumerang yang ditujukan pada seluruh atlit bumerang di Indonesia. Melalui kejuaraan-kejuaraan ini para atlit boomerang mendapatkan apresiasi. Kejuaraan dibagi menjadi beberapa macam kategori, yaitu <em>Fast Catch</em>, <em>Aussy Round</em>,<em> Maximum Time Aloft</em>, <em>Long Distant</em>, <em>Trick Catch</em>, <em>Endurance</em>, dan <em>Accuracy</em>.</p><p><strong>Alamat Sekret :</strong></p><p>Jl. Mayjen Panjaitan Rusunawa UB B Lt.1</p><p><strong>CP :</strong></p><p>08977445949 (Manda)</p><p><strong>Perwakilan :</strong></p><p>Andri Rachmadian</p>\',\'<p><strong>Prestasi Bumerang</strong></p><p>-&nbsp;Tuan Rumah TUNASBUMI (Turnamen Nasional Bumerang Indonesia) yang pertama.</p><p>-&nbsp;Juara 1 dan 3 kategori aussy round, Juara 1 kategori Fast Catch dan Juara 3 kategori Accuracy pada TUNASBUMI 2 di Bandung.</p><p>-&nbsp;Juara 1 Fast Catch, Juara 1 Endurance dan Juara Umum Best Performance oleh Haikal Harkasyi pada Subang Open.</p><p>-&nbsp;Juara 3 kategori Maximum Time Aloft dan Best Thrower Women oleh Wulandari pada TUNASBUMI 3.</p><p>-&nbsp;Best Thrower Women oleh Juwita Nirmala Sari pada TUNASBUMI 4.</p><p>-&nbsp;Pelopor Unit Kegiatan Mahasiswa cabang olahraga Bumerang di Indonesia.</p>\',\'http://bit.ly/bmrbrw\'), (\'6\',\'minat_keolahragaan_panahan.jpg\',\'UAP\',\'Unit Aktivitas Panahan\',\'minat_keolahragaan_panahan_icon.jpg\',\'<p>UKM Panahan merupakan salah satu ukm dalam bidang olahraga yang ada di Universitas Brawijaya. Dalam olahraga panahan tidak hanya melatih teknik dan fokus namun juga fisik dan disiplin. Latihan rutin UKM Panahan dilakukan 2 kali seminggu yaitu hari sabtu dan minggu pukul 09.00 pagi dilapangan dekat gazebo FK. Latihan yang dilakukan untuk pemula yaitu pengenalan tentang panahan, latihan teknik, dan latihan fisik. Tujuan ukm Panahan adalah sebagai wadah untuk menaungi mahasiswa yang memiliki minat,bakat, dan prestasi dalam olahraga panahan.</p><p><strong>Alamat Sekret : </strong></p><p>Gedung UKM lt.3 ruang 2</p><p><strong>CP :</strong></p><p>Sebastian hadinata / 08563536799 / line: sebastiannata (sebastian hadinata)</p><p>line: gusriadnan (Gusri adnan)</p><p><strong>Official Account :</strong></p><p>Line@: @jzt1748d</p>\',\'<p><strong>2015:</strong></p><p>-&nbsp;Ganesha Open: Medali emas, perak dan medali perak menpora</p><p>-&nbsp;Pomda: 2 Medali Perunggu</p><p>-&nbsp;Pomnas 2015: 2 Medali emas, 1 perak</p>\',\'https://drive.google.com/open?id=0B8gxhaYX2RCfLVFjWWs5NndIbjRtVmRGZTh1WG05UGhjUVpn\'), (\'7\',\'minat_penalaran_formasi.jpg\',\'FORMASI\',\'Forum Mahasiswa Studi Bahasa Inggris\',\'minat_penalaran_formasi_icon.jpg\',\'<p>FORMASI stands for Forum Mahasiswa Studi Bahasa Inggris in Brawijaya University. Becoming legal student activities since 1986. Formasi necessarily represent Brawijaya University in many occasion such as; Debate Competition, Speech Competition, Story Telling Competition, Invited Speaker in English Seminar, Newscast Competition, and many more. One of the oldest and largest legal student activities in Brawijaya University. We recruits over 800 new members (rookies) each year.</p><p><strong>Alamat Sekret :</strong></p><p>Headquartered in Rusunawa Building B 1st floor, Brawijaya University, Malang. Jl. MT Haryono, Malang</p><p><strong>CP :</strong></p><p>087859866500 / line: nisablimcs (Khoirunnisa)</p><p>089693644268 / line: annisarizqik (Annisa Rizqi)</p><p><strong>Official Account :</strong></p><p>line: @dvg1960c</p><p>Instagram : formasiUB</p><p>Website : formasi.ub.ac.id </p><p>Twitter:  @formasiUB </p><p>facebook: FormasiUniversitasBrawijaya </p><p><strong>Perwakilan :</strong></p><p>Hafidz Aulia</p><p><strong>Website :</strong></p><p> http://formasi.ub.ac.id/ </p>\',\'<p><strong>2016</strong></p><p>-&nbsp;2<sup>nd</sup> Runner Up EFL category on World University Debating Championship 2016</p><p>-&nbsp;OctofinalistIndonesia Varsity English Debate 2016</p><p>-&nbsp;SemifinalistJogja Debating Forum Open 2016</p><p>-&nbsp;QuarterfinalistAkuUntukIndonesiaku 2016</p><p>-&nbsp;1<sup>st</sup> Runner UpSMASH Open 2016</p><p>-&nbsp;1<sup>st </sup>Runner Up English Fiesta 2016</p><p>-&nbsp;Top 10 Best Speaker English Fiesta 2016</p><p>-&nbsp;Quarterfinalist ATMA Open 2016</p><p>-&nbsp;Champion NUDC Kopertis VII 2016</p><p>-&nbsp;Best Speaker NUDC Kopertis VII 2016</p><p>-&nbsp;Octofinalist Debate ALSA UI 2016</p><p>-&nbsp;Semifinalist Speech ALSA UI 2016</p><p>-&nbsp;Semifinalist News Casting ALSA UI 2016</p><p>-&nbsp;Octofinalist News Casting Asian English Olympic 2016</p><p>-&nbsp;Grandfinalist News Casting EMTEK Goes to Campus 2016</p><p>-&nbsp;GrandfinalistNews Casting FESTKA 2016</p><p>-&nbsp;1<sup>st</sup> and 2<sup>nd</sup> Runner Up News Casting UNISMA 2016</p><p>-&nbsp;2<sup>nd</sup> Runner Up News Casting Commolympic 2016</p><p><strong>2015</strong></p><p>-&nbsp;Champion of Speech ALSA UI 2015</p><p>-&nbsp;Grandfinalis Story Telling ALSA UI 2015</p><p>-&nbsp;Champion and Best Speaker Hasanudin BP 2015</p><p>-&nbsp;Grandfinalis NUDC 2015</p><p>-&nbsp;Champion NUDC Kopertis VII</p><p>-&nbsp;Best Speaker NUDC Kopertis VII</p><p>-&nbsp;Semifinalis Speech Asian English Olympic 2015</p><p>-&nbsp;Semifinalis Debate Asian English Olympic 2015</p><p>-&nbsp;Best Joker Speech Asian English Olympic 2015</p><p>-&nbsp;Octofinalis Story Telling Asian English Olympic 2015</p><p>-&nbsp;Top Ten Best Speaker NUDC 2015</p><p>-&nbsp;Semifinalis English Fiesta 2015</p><p>-&nbsp;SemifinalisPadjajaran Debate Competition 2015</p><p>-&nbsp;Top Ten Best Speaker PDC 2015</p><p>-&nbsp;Quarterfinalist AUI 2015</p><p>-&nbsp;Quarterfinalist ATMA Open</p><p>-&nbsp;Octofinalist JOVED 2015</p><p><strong>2014</strong></p><p>-&nbsp;Octofinalist Speech of AEO 2014</p><p>-&nbsp;Octofinalist and Quarter Strorytelling of AEO 2014</p><p>-&nbsp;Quarter finalist AEO 2014</p><p>-&nbsp;1st Runner Up JOVED 2014</p><p>-&nbsp;1st Runner Up English Fiesta 2014</p><p>-&nbsp;1st Runner Up NUDC Jatim 2014</p><p>-&nbsp;2nd Runner Up and Quarter Finalist AUI 2014</p><p>-&nbsp;Champion, 1st Runner Up, and Quarter FInalist of SMASH 2014</p><p>-&nbsp;3rd Runner Up of English Parade 2014</p><p>-&nbsp;3rd Runner Up od DNPI 2014</p><p>-&nbsp;Champion, 2nd Runner Up, and 3rd Runner Up of MEDC 2014</p><p>-&nbsp;Champion of EODC 2014</p><p>-&nbsp;Champion, 1st Runner Up, and 2nd Runner Up ESC FIB UB 2014</p><p>-&nbsp;Semi Finalist NUDC 2014</p><p>-&nbsp;Quarter Finalist ALSA UI 2014</p><p>-&nbsp;Octo Finalist IVED 2014</p><p>-&nbsp;Octo Finalist GMDT 2014</p><p>-&nbsp;Pre-Semi Finalist Petrogas 2014</p><p>-&nbsp;Semi Finalist NNDC 2014</p><p>-&nbsp;Best Speaker EF 2014</p><p>-&nbsp;Best Speaker SMASH 2014</p><p>-&nbsp;Best Speaker MEDC 2014</p><p>-&nbsp;Best Speaker EODC 2014</p><p>-&nbsp;Best Speaker ESC 2014</p><p>-&nbsp;>1st Runner Up of Festka 2014 (News Casting)</p><p>-&nbsp;Champion and 1st Runner Up Unisma Broadcasting Competition</p><p>&nbsp;</p><p><strong>2013</strong></p><p>-&nbsp;Champion and Top 5 Best Speaker of Hasanudin BP 2013</p><p>-&nbsp;Champion, Runner Up and Best Speaker &nbsp;of English Students Competition 2013</p><p>-&nbsp;Champion of ESPDC 2013</p><p>-&nbsp;Champion, Best Speaker, Top 10 Best Speaker and Quarterfinalist of of English Fiesta 2013</p><p>-&nbsp;Semifinalist and Top 1o Best Speaker of NUDC 2013</p><p>-&nbsp;2nd Runner Up &nbsp;and Top 10 Best Speaker of AUI UK Petra 2013</p><p>-&nbsp;2nd Runner Up of IVED 2013</p><p>-&nbsp;Runner Up of Main, Novice and Top 2nd Best Speaker of SODC 2013</p><p>-&nbsp;Runner Up and 2nd Runner Up of SMASH 2013</p><p>-&nbsp;Semifinalist and Top 10 Best Speaker of NNDC 2013</p><p>-&nbsp;Semifinalist and Top 10 Best Speaker of ATMA IV 2013</p><p>-&nbsp;Runner Up and Best Speaker of NUDC Kopertis VII 2013</p><p>-&nbsp;Quarterfinalist of JOVED 2013</p><p>-&nbsp;Champion English Debate MTQ UB 2013</p><p>-&nbsp;Runner Up National IHL 2013</p><p>-&nbsp;Semifinalist of English Parade 2013</p><p>-&nbsp;Quarterfinalist of News Reading Competition 2013</p><p>-&nbsp;Finalist and Semifinalist of EJWEF 2013</p><p>-&nbsp;Semifinalist of Anchor Vista Communication Festival 2013</p><p>-&nbsp;2nd Runner Up of NDC UNPAD 2013</p><p>-&nbsp;Champion, Runner Up, Best Speaker, Top 10 Best Speaker, and Best N1 of ESC FIB UB 2013</p><p>-&nbsp;Champion, 2nd Runner Up, Best Speaker, Top 10 Best Speaker, and Best N1 of Farmers IV 2013</p><p>-&nbsp;Runner Up of News Casting Farmers 2013</p><p>-&nbsp;Runner Up, Co-Best Speaker, Quarterfinalist of EJVED 2013</p><p>-&nbsp;Champion, Best Speaker and 2nd Runnerp Up of MNDC 2013</p><p><strong>2012</strong></p><p>-&nbsp;Octofinalist of IVED 2012</p><p>-&nbsp;Champion, Best Speaker, Semifinalist and Quarterfinalist of Ma Chung International</p><p>-&nbsp;Semifinalist and Quarterfinalist of ITS Open 2012</p><p>-&nbsp;Champion, 2nd Runner Up and Best Speaker of SMASH 2012</p><p>-&nbsp;2nd Runner Up of Storytelling ALSA UI 2012</p><p>-&nbsp;Octofinalist of Debate ALSA UI 2012</p><p>-&nbsp;Octofinalist of NDC UNPAD 2012</p><p>-&nbsp;Runner Up and Best Speaker of National IHL UGM 2012</p><p>-&nbsp;Champion and Best Speaker of Let&rsquo;s Do It Jogja 2012</p><p>-&nbsp;2nd Runner Up and Best Speaker of NUEDC Kopertis VII 2012</p><p>-&nbsp;Champion English Debate MTQ UB 2012</p><p>-&nbsp;2nd Runner Up, Semifinalist and Top 10 Best Speaker of AUI UK Petra 2012</p><p>-&nbsp;Semifinalist, Quarterfinalist and Top 10 Best Speaker of NNDC UNY 2012</p><p>-&nbsp;Quarterfinalist and Top 10 Best Speaker of JOVED 2012</p><p>-&nbsp;Champion of Novice Bawor Cup 2012</p><p>-&nbsp;Quarterfinalist of Bawor Cup 2012</p><p>-&nbsp;Semifinalist of NUEDC 2012</p><p>-&nbsp;Champion, 2nd Runner Up and Best Speaker of EJVED 2012</p>\',\'http://formasi.ub.ac.id\'), (\'7\',\'minat_penalaran_fordimapelar.jpg\',\'FORDI MAPELAR\',\'Forum Studi Mahasiswa Pengembang Penalaran\',\'minat_penalaran_fordimapelar_icon.jpg\',\'<p>Fordi Mapelar UB adalah Unit Kegiatan Mahasiswa di bidang Penalaran, secara umum Fordi Mapelar UB meningkatkan kemampuan semua anggota nya sehingga mampu mengembangkan metode ilmiah dalam menyikapi kondisi sosial sekitar. Berpikir kritis untuk menanggapi persoalan, Menyampaikan pemikiran dalam berdiskusi menjadi kegiatan pokok yang menjadi nafas dalam organisasi ini.</p><p>Hasil Diskusi tersebut kemudian dapat diteruskan dalam pembuatan karya tulis dan diterbitkan dalam buletin.</p><p>Semua anggota Fordi Mapelar UB juga memiliki wadah untuk melatih retorika melalui pelatihan Debat dan Diskusi Publik. Selain menyalurkan dalam penulisan dan retorika, Fordi Mapelar UB juga memberikan karya nyata bagi masyarakat melalui pengabdian masyarakat yaitu PHBD dan Gapura.</p><p>Fordi Mapelar UB juga dipercaya untuk menjadi poros dalam kegiatan penalaran nasional, dibuktikan dengan Penyelenggaraan acara Ganesa, lomba karya ilmiah dan debat tingkat nasional dan menjadi tuan rumah kegiatan Kongres ILP2MI.</p><p>Semua kegiatan yang ada di Fordi Mapelar UB membuat semua anggotanya tidak hanya menjadi sekedar siswa di dunia perkuliahan, lebih dari itu kegiatan Fordi Mapelar UB selalu dijiwai oleh semangat penalaran yang mengarah pada pengejawantahan idealisme kemahasiswaan dalam memenuhi tanggung jawab sosial nya.</p><p><strong>Alamat Sekret :</strong></p><p>Gedung UKM lt. 4 ruang IV-7</p><p><strong>Perwakilan :</strong></p><p>Haniful Fakhrur Razi</p><p><strong>CP :</strong></p><p>082244329323 (andra)</p><p>081336052485 (i&rsquo;it)</p><p><strong>Website :</strong></p><p>http://fordimapelar.ub.ac.id/</p>\',\'<p><strong>Prestasi Organisasi</strong></p><p>-&nbsp;Sekretaris Jendral ILP2MI (2010 &ndash; 2011, 2015 &ndash; sekarang)</p><p>-&nbsp;Koordinator Regional 4 ILP2MI (2011 &ndash; 2012, 2013 &ndash; 2015)</p><p>-&nbsp;PHBD Dikti (2013, 2015)</p><p>-&nbsp;Program Pengmas kerjasama dengan CSRTelkom (2014)</p><p><strong> Prestasi Individu</strong></p><ul><p>-&nbsp;Regina Yolanda Sukotjo, Gold Medal International Innovation and Invention,Taipei 2015</p><p>-&nbsp;Nugrahanti Khairani Aisyah, Duta Muda Sabudarta Indonesia 2015</p><p>-&nbsp;Agung D.P,Alif Haidir A, Adhi Jatmiko, Finalis Sociepreneur International Singapore Foundation 2015</p>\',\'http://bit.ly/fordimapelarub\'), (\'7\',\'minat_penalaran_uapkm.jpg\',\'UAPKM\',\'Unit Aktivitas Pers Kampus Mahasiswa\',\'minat_penalaran_uapkm_icon.jpg\',\'<p>UAPKM (Unit Aktivitas Pers Kampus Mahasiswa) adalah lembaga yang bergerak di bidang Jurnalistik. Lebih dikenal dengan nama Kavling 10. Struktur organisasi UAPKM terdiri dari empat departemen, yaitu Depatemen Media, Manajemen Sumber Daya Manusia (MSDM), Penelitian dan Pengembangan (Litbang), dan Eksternal. Dalam kesehariannya, UAPKM melakukan kegiatan jurnalistik dibidang reportase, sastra fotografi, layout, dan lain-lain.</p><p><strong>Alamat Sekret :</strong></p><p>Gedung UKM Lt 2 No. 4, Universitas Brawijaya, Jln. Mt Haryono, Malang.</p><p><strong>CP :</strong></p><p>Pemimpin Umum : 0857848067632 (Bunga Astana)</p><p>Eksternal : 085261162097 (Asry Sihombing)</p><p><strong>Perwakilan :</strong></p><p>Ainun Syahida Atsari (085334197043)</p><p><strong>Official Account:</strong></p><p>Email : onlinekavling10@gmail.com</p><p>Website : www.kavling10.com</p><p>Twitter: @uapkm_ub</p><p>Instagram : @uapkm_ub</p><p>Facebook: Lpm Kavling Sepuluh</p><p>Line official account: @TAZ3417Q</p>\',\'\',\'http://kavling10.com/\'), (\'7\',\'minat_penalaran_iaas.jpg\',\'IAAS\',\'International Association of Students in Agricultural Related Science\',\'minat_penalaran_iaas_icon.jpg\',\'<p><em>International Association of Students in Agricultural and Related Sciences</em> (IAAS) adalah sebuah organisasi mahasiswa pertanian seluruh dunia yang didirikan pada tahun 1957 dan bermarkas besar di Leuven&ndash;Belgium. Sampai saat ini, IAAS tersebar di lebih dari 40 negara, termasuk Indonesia. Organisasi ini tidak terikat pada pemerintah negara, badan-badan internasional manapun dan tidak dicampuri masalah politik. Di dalam PBB, IAAS dikenal sebagai NGO (<em>Non Governmental&nbsp; Organization</em>). Organisasi ini memfasilitasi pertukaran informasi bagi mahasiswa dari berbagai negara.</p><p>Tujuan utama IAAS adalah memfasilitasi minat mahasiswa untuk mendalami disiplin ilmunya, mengasah profesionalisme dan menggalang kerjasama dengan mahasiswa lain. Jika dijabarkan terdapat beberapa tujuan seperti :</p><ol><li>Mendorong pertukaran gagasan dalam pendidikan pertanian dan pelaksanaan sistem pertanian.</li><li>Mendorong timbulnya kerjasama dan saling pengertian di antara mahasiswa pertanian sedunia.</li><li>Menyiapkan mahasiswa Agrokomplek dan ilmu yang terkait untuk dapat memecahkan masalah pertanian yang dihadapi.</li><li>Mendorong perkumpulan mahasiswa pertanian nasional untuk mengorganisir kegiatan tingkat nasional dan internasional.</li></ol><p>Ide dasar kelahiran IAAS Indonesia adalah atas dasar tujuan peningkatan kualitas mahasiswa Agrokompleks dan ilmu yang terkait di Indonesia dalam upaya pengembangan diri dan pengabdian masyarakat melalui partisipasi pembangunan nasional dan kerjasama antar mahasiswa pertanian internasional. Indonesia bergabung dengan IAAS pada tahun 1991. Partisipasi pertama kalinya adalah di&nbsp; IAAS <em>34<sup>th </sup>&nbsp;World Congress</em>, Juli 1991 di Thailand. Partisipasi ini berawal dari undangan IAAS kepada Institut Pertanian Bogor.</p><p>Saat ini IAAS Indonesia memiliki <em>L</em><em>ocal Committee</em> (LC) aktif, yaitu LC Universitas Brawijaya (Malang), LC Institut Pertanian Bogor (Bogor), LC Universitas Padjajaran (Bandung), LC Universitas Diponegoro (Semarang), LC Universitas Mataram (Mataram), Universitas Gadjah Mada (UGM) dan LC Universitas Sebelas Maret (Surakarta).</p><p>&nbsp;</p><p><strong>Alamat sekret: </strong></p><p>Sekretariat Bersama Unit Kegiatan Mahasiswa, Lt.2 C1 Universitas Brawijaya Jl. MT. Haryono 16 Malang 65145</p><p><strong>CP :</strong></p><p>0852-3300-4294 (Aqil)</p><p><strong>Perwakilan UKM:</strong></p><p>Ahmad Aqillah Prawira</p><p><strong>Website :</strong></p><p>ub.iaas.or.id</p>\',\'<p><strong>Prestasi Organisasi</strong></p><p>-&nbsp;Lolos pendanaan Program Hibah Bina Desa (PHBD) Dikti sebanyak dua kali berturut-turut pada tahun 2015 dan 2016</p><p>-&nbsp;Meloloskan puluhan peserta dalam program exchange international di berbagai negara (Switzerland, Belgium, Slovenia, German, Italia, dan lain-lain)</p>\',\'http://www.iaas-lcub.org/?m=0#contactus\'), (\'7\',\'minat_penalaran_aisec.jpg\',\'AIESEC\',\'Association Internationale des Etudiants en Sciences Economiques et Commerciales\',\'minat_penalaran_aisec_icon.jpg\',\'<ul><li><p>AIESEC is a global platform for young people to explore and develop their leadership potential. We are a non-political, independent, not-for-profit organisation run by students and recent graduates of institutions of higher education. Its members are interested in world issues, leadership and management. AIESEC does not discriminate on the basis of ethnicity, gender, sexual orientation, religion or national / social origin.</p><p>Since we were founded,&nbsp;we have engaged and developed&nbsp;over&nbsp;1,000,000 young people&nbsp;who have been through an AIESEC experience. The impact of our organisation can be seen through our alumni who represent business, NGO&nbsp;and world leaders, including one Nobel Peace Prize laureate, Martti Atisaari of Finland.It is every young person&rsquo;s responsibility to take a positive role shaping the future of our planet.We believe every young person deserves the chance, and tools, to&nbsp;fulfil their potential.We provide young people with self-driven, practical, global experiences. We enable them to&nbsp;see the world, make a real difference and discover what trulymatters to them.</p></li><p><strong>Alamat Sekret :</strong></p><p>Gedung UKM Universitas Brawijaya lt. 4 No. 08, Universitas Brawijaya, Jl. MT. Haryono no. 169, Malang 65145</p><p><strong>CP :</strong></p><p>082130056219/ line: zinnia19 (Inge Zinnia)</p><p>zinnia.inge@aiesec.net</p><p><strong>Perwakilan :</strong></p><p>Inge Ade Zinnia</p>\',\'<p><strong>Prestasi Organisasi</strong></p><p>-&nbsp;The Best Business Development AIESEC in Indonesia</p><p>-&nbsp;The Most Impactful Project AIESEC in Indonesia</p><p>-&nbsp;The Most Media Appearance AIESEC in Indonesia</p><p>-&nbsp;The Best Telemarketing Incoming Global Intenrship Project AIESEC in Indonesia</p><p>-&nbsp;The Best Local Committee in quarter 1 and quarter 2 for Medium Cluster AIESEC in Indonesia</p><p>-&nbsp;The Best Finance and Governance AIESEC in Indonesia</p><p>-&nbsp;The Best Vice President Finance and Governance AIESEC in Indonesia</p><p>-&nbsp;The best Global Citizen Sales AIESEC in Indonesia</p><p>-&nbsp;The Best Global Talent Marketing AIESEC in Indonesia</p>\',\'http://Bit.ly/RegistGlobalLeader\'), (\'7\',\'minat_penalaran_rkim.jpg\',\'RKIM\',\'Risetdan Karya Ilmiah Mahasiswa\',\'minat_penalaran_rkim_icon.jpg\',\'<p>UKM ini bergerak di bidang riset dan karya tulis ilmiah. di UKM ini, anggota dan staf akan dilatih secara intensif untuk membuat sebuah penelitian, riset, dan karya ilmiah. Selain itu, RKIM juga menjadi pelopor dan coordinator lembaga riset se- UB dan malang kota. Sederet prestasi telah diraih baik di bidang sains, entrepeneur, dan sosial. RKIM menjadi sebuah klub perkumpulan mahasiswa yang memiliki passion di bidang karya ilmiah serta menjadi penggerak berbagai kegiatan keilmiahan dan kompetisi di UB.</p><p><strong>Alamat Sekret : </strong></p><p>Gedung UKM barulantai 3 nomor 5</p><p><strong>CP :</strong></p><p>Tama (085708437180) </p><p><strong>Official Account :</strong></p><p>Twitter: @rkim_ub,</p><p>Instagram: @rkim_ub,</p><p>facebook: RkimUniversitasBrawijaya,</p><p>line: @igj2203o</p><p><strong>Perwakilan:</strong></p><p>Tama (085708437180)</p><p><strong>Website :</strong></p><p>rkim.ub.ac.id</p></li></ul>\',\'<p><strong>Prestasi Organisasi</strong></p><p>-&nbsp;Harvard National Model United Nation delegate di Harvard Unversity2016</p><p>-&nbsp;Gold medal essay competition GIA TURKIE di Istanbul 2014</p><p>-&nbsp;TOP 5 SOI Asia Bussnes Plan Contest di jepang2013</p><p>-&nbsp;Paper competition on CASA Hiroshima finalist di jepang</p><p>-&nbsp;Runner up on Thought For Food Competiton 2016 di Swiss</p><p>-&nbsp;Juara 2 LKTI nasional MARSS uny 2015</p><p>-&nbsp;Juara 3 LKTI Nasinal ICON UNY 2015</p><p>-&nbsp;Juara 1 kompetisi Essay MenujuDayaSaing Asia 2015</p><p>-&nbsp;Juara 1 LombaMnulissuratuntukperempuan 2015</p><p>-&nbsp;Juara 1 kompetisibisnis plan UIN Jakarta 2014</p><p>-&nbsp;Lolos pendanaan PKM DIKTI dan mendapat juara setiap tahunnya</p>\',\'https://docs.google.com/forms/d/e/1FAIpQLSdTYwQX2EephedKaL2hglGqg6qd6XLCvzeqa9rpQ8bw0Dc6LQ/viewform\'), (\'7\',\'minat_penalaran_mw.jpg\',\'UKM MW\',\'UKM Mahasiswa Wirausaha\',\'minat_penalaran_mw_icon.jpg\',\'<p>Unit Kegiatan Mahasiswa - Mahasiswa Wirausaha merupakan Organisasi yang mewadahi mahasiswa dalam bidang Entrepreneur atau kewirausahaan di Universitas Brawijaya. Organisasi ini didirikan pada tanggal 20 Oktober 2013. Awal mula, organisasi yang lebih dikenal dengan nama MW Brawijaya ini bernamaYES dan vakum selama beberapa tahun dan kemudian dibangkitkan kembali oleh para perintis yang berjumlah 7 orang dan diketuai oleh Aditya Laksana pada tahun 2012 - 2013. Dalam organisasi ini dibagi menjadi tiga department yaitu Human Research Development (HRD), Bussiness Strategy Development (BSD) dan Networking Department (ND). Department tersebut memiliki tugas masing - masing. Human Research Development (HRD) merupakan department pengembangan anggota dan merupakan department yang mnegurusi internal UKM seperti, program keakraban dan menjaga keutuhan anggota MW melalui berbagai program menarik. Business Strategy Development (BSD) bertugas untuk memfasilitasi, mengembangkan dan menciptakan strategi untuk memperkuat bisnis dari anggota dan organisasi MW Brawijaya. Networking Department (ND) merupakan departmet yang mengurusi dan membangun jaringan - jaringan dan hubungan dengan pebisnis luar dan unit bisnis di internal Brawijaya maupun luar Universitas Brawijaya.</p><p>&nbsp;</p><p><strong>TUJUAN</strong><br /> Mahasiswa Wirausaha merupakan organisasi yang mewadahi mahasiswa dalam bidang entrepreneur atau kewirausahaan di Universitas Brawijaya. Organisasi yang masih baru di lingkungan Unit Aktifitas Mahasiswa memiliki misi untuk memberikan ruang serta memberdayakan gerakan berwirausaha dari dini. Untuk itu diperlukan program kerja yang terarah serta tepat sasaran dalam pelaksanaan setiap periode. Tujuan MW sendiri sebagai suatu upayauntuk memberikan hard skill dan soft skill mengenai ilmu kewirausahaan terhadap semua anggota MW-UB dan menciptakan wirausaha muda yang kreatif, inovatif, mandiri dan berdaya saing bagi kemajuan bangsa dan negara.</p><p><strong>Alamat Sekret:</strong></p><p>Gedung UKM UB Lantai 4, No. 6, Jalan Veteran 06 C, 65145.</p><p><strong>CP :</strong></p><p>Aditya Prasetya 6281296054436</p><p><strong>Perwakilan :</strong></p><p>Zaneta Azzahra Izdihar</p><p><strong>Website :</strong></p><p>http://mw.ub.ac.id/</p></li></ul>\',\'<p><strong>Prestasi Organisasi</strong><p>-&nbsp;Juara II KTI Nasional Accounting Society in Versality (UNS) - 2013</p><p>-&nbsp;Juara II Technopreneur Competition (UNDIP) - 2014</p><p>-&nbsp;Finalis Inovasi Teknologi Pemkot Malang 2016</p><p>-&nbsp;Lolos pendanaan Dikti PKM-K, Peserta expo PMW Award wirausaha nasional (Jember) - 2014</p><p>-&nbsp;Lolos pendanaan GKN</p><p>-&nbsp;Lolos pendanaan PMW</p><p>-&nbsp;Peserta Expo KMI Ambon 2015</p><p>-&nbsp;Levia (Mwer) represent as Mahasiswa Muda Mandiri</p>\',\'http://bit.ly/OPRECMW2016\'),"

    .line 264
    .local v3, "data4":Ljava/lang/String;
    const-string v4, " (\'8\',\'minat_kesenian_uab.jpg\',\'UAB\',\'Unit Aktivitas Band\',\'minat_kesenian_uab_icon.jpg\',\'<p>Unit Aktivitas Band (UAB) UB adalah salah satu organisasi dalam bidang seni yang bergerak di bidang music dan manajemen organisasi. Selain bermusik, UAB juga memiliki beberapa program kerja yang bertujuan untuk menambah pengalaman dan meningkatkan kemampuan anggota, serta sebagai sarana bagi mahasiswa UB yang menyukai music atau belajar membuat event.</p><p><strong>Alamat Sekret:</strong></p><p>Jalan Veteran 06 C, 169 Sekber UNITAS Kav. B3-B4 Malang 65145</p><p><strong>CP :</strong></p><p>081217987053 (Khaeru Alfin Wirandana)</p><p><strong>Perwakilan:</strong></p><p>M.Rizqtsany</p><p><strong>Website:</strong></p><p>http://homeband.ub.ac.id</p>\',\'<p><strong>Prestasi Organisasi</strong><p>-&nbsp;Pengisiacara Java Jazz On The Move 2015 Malang</p><p>-&nbsp;Pengisiacara ARCT16 Anthem with Naif</p><p>-&nbsp;Pengisiacara Weekend Play UB TV</p><p>-&nbsp;Pengisiacara Food Carnival 2015 FKG UB</p><p>-&nbsp;Band pengiringLombaMenyanyi Pop OlimpiadeBrawijaya</p><p>-&nbsp;Semifinalis Jazz Competition Goes to Jazz Traffic Surabaya</p><p>-&nbsp;Event UlangTahun UKM SeniUniversitasBrawijaya ke-33</p><p>-&nbsp;Event UlangTahun UKM SeniUniversitasBrawijaya ke-34</p><p>-&nbsp;Event UlangTahun UKM SeniUniversitasBrawijaya ke-35</p><p>-&nbsp;Event The 16<sup>th</sup>KharismaBrawijaya Jazz Festival</p><p>-&nbsp;Event The 17<sup>th</sup>KharismaBrawijaya Jazz Festival</p><p>-&nbsp;Event The 18<sup>th</sup>KharismaBrawijaya Jazz Festival</p><p>-&nbsp;Event The 19<sup>th</sup>KharismaBrawijaya Jazz Festival</p><p>-&nbsp;Event The 20<sup>th</sup>KharismaBrawijaya Jazz Festival</p><p>-&nbsp;Band Pembuka The Finger Java Tour</p><p>-&nbsp;PengisiacarapembukaandanpenutupanOlimpiadeBrawijaya</p><p>-&nbsp;PengisiacaraKontesJembatan Indonesia IX</p><p>-&nbsp;Event Unity in Diversity IKABAMA UNMUH</p><p>-&nbsp;Event Road to Jak Jazz</p><p>-&nbsp;Event KampungCempluk</p><p>-&nbsp;Event Road Side with Jazz Top Coffee</p><p>-&nbsp;Event GalaksiPoltek</p><p>-&nbsp;Event MusikKampus Malang</p>\',\'http://homeband.ub.ac.id\'), (\'8\',\'minat_kesenian_psm.jpg\',\'PSM\',\'Paduan Suara Mahasiswa \',\'minat_kesenian_psm_icon.jpg\',\'<p>Unit Aktivitas Paduan Suara Universitas Brawijaya lahir pada 12 Maret 1986. UAPSM UB yang juga dikenal sebagai Brawijaya University Student Choir (BUSC) bertugas dalam berbagai acara Universitas Brawijaya, khususnya yang bersifat seremonial, misalnya Wisuda Sarjana, Pengukuhan Guru besar, Upacara Bendera dan lain lain. Sebagai suatu organisasi mahasiswa di bidang minat dan bakat, tentunya tidak hanya belajar bernyanyi, namun juga belajar berorganisasi. Saat ini UAPSM UB juga telah berhasil menunjukkan eksistensinya di tingkat nasional dan internasional dengan berbagai prestasi yang telah diraih di berbagai kompetisi nasional. Kaya ragam, kaya warna, demikianlah UAPSM UB yang memiliki berbagai macam anggota dan latar belakang yang berbeda, namun sebagai Tim Paduan Suara Mahasiswa, keragaman merupakan khasanah dan batu pijakan untuk mewujudkan kesatuan warna dalam ber-Paduan Suara.</p><p><strong>Alamat sekret:</strong></p><p>UAPSM Universitas Brawijaya Gedung UKM Lt. 4 Kav.3 Jl. MT. Haryono 169</p><p><strong>CP :</strong></p><p>085641290841 (Nanda)</p><p><strong>Official Account :</strong></p><p>line: http://line.me/ti/p/%40sxh5770z</p><p>instagram: http://www.instagram.com/psm_brawijaya</p><p>website: http://psm-brawijaya.ub.ac.id/</p><p><strong>Perwakilan :</strong></p><p>Irenius D&rsquo;Lyon R. P.</p>\',\'<p><strong>2015</strong></p><p>-&nbsp;1st Place of Free Song Category in 2nd ITB International Choir Competition 2015</p><p>-&nbsp;Best Performance of Folksong Category in 2nd ITB International Choir Competition 2015.</p><p>-&nbsp;1st Place of Mixed Youth Category in 3rd Karangturi Choir Gmaes 2015.</p><p><strong>2014</strong></p><p>-&nbsp;Juara 1 kategori Mixed Choir dalam Lomba Paduan Suara Universitas Airlangga 2014, Surabaya &ndash; Indonesia.</p><p><strong>2013</strong></p><p>-&nbsp;4 th champion in 25 th Grand Prix Seghizzi, Gorizia &ndash; Italy.</p><p>-&nbsp;Best interpretation for 20&deg; Century Category in 52&deg; ConcorsoInternationale Di Canto CoraleSeghizzi,Gorizia &ndash; Italy.</p><p>-&nbsp;Best Costum in 52&deg; ConcorsoInternationale Di Canto CoraleSeghizzi, Gorizia &ndash; Italy.</p><p>-&nbsp;Winner of 5 (Five) gold medals and 2 (two) silver medals in 52&deg; ConcorsoInternationale Di Canto CoraleSeghizzi, Gorizia &ndash; Italy.</p><p>-&nbsp;Sacred Concert in 11 th Festival InternationaleSeghizzinregione, Tricesimo Friuli Venezia Giulia &ndash; Italy.</p><p><strong>2012</strong></p><p>-&nbsp;Juara 1 (Gold Medal) kategori Perti/Umum dalam FPS ITB XXIII tingkat Nasional, Bandung &ndash; Indonesia.</p><p>-&nbsp;Juara 2 (Gold Medal) kategori Lagu Rakyat Indonesia dalam FPS ITB XXIII tingkat Nasional, Bandung &ndash; Indonesia.</p><p>-&nbsp;Juara Favorite kategori Perti/Umum dalam FPS ITB XXIII tingkat Nasional, Bandung &ndash; Indonesia.</p><p>-&nbsp;Juara 1 kategori Mixed Choir dalam Lomba Paduan Suara Universitas Airlangga 2012, Surabaya &ndash; Indonesia.</p><p><strong>2011</strong></p><p>-&nbsp;2 nd Champion for Folksong Category (Volksliedbewerb) in 48 th Internationaler Chorwettbewerb 2011, Spittal &ndash; Austria.</p><p>-&nbsp;4 th place for Mixed Category (Kuntsliedbewerb) in 48 th Internationaler Chorwettbewerb 2011, Spittal &ndash; Austria.</p>\',\'http://psm-brawijaya.ub.ac.id/\'), (\'8\',\'minat_kesenian_unitantri.jpg\',\'UNITANTRI\',\'Unit Aktivitas Karawitan dan Tari\',\'minat_kesenian_unitantri_icon.jpg\',\'<p>UNITANTRI adalah Unit Kegiatan Kemahasiswaan yang menitik beratkan pada kegiatan Karawitan dan Tari yang berorientasi pada seni tradisional, kegiatannya berupa pelatihan dan pementasan karawitan serta tari, mengembangkan dan melestarikan kesenian tradisional serta Meningkatkan potensi sumber daya keanggotaan menjadi insan akademika yang profesional. UNITANTRI dibentuk oleh mahasiswa Universitas Brawijaya dan berdiri dalam wadah unit kegiatan mahasiswa di Universitas Brawijaya.</p><p><strong>Alamat:</strong></p><p>Sekretariat Gedung UKM Universitas Brawijaya Lt.IV no 2. Jln Mayor Jendral Haryono Malang</p><p><strong>CP :</strong></p><p>087859528636 Erwin Hidayat (Ketua Umum Unitantri)</p><p>085233654941 Aditya Wibowo (Eksternal Unitantri)</p><p><strong>Facebook:</strong></p><p>Unitantri Universitas Brawijaya</p><p><strong>Instagram &amp; Twitter:</strong></p><p>@UnitantriUB</p><p><strong>Line Official:</strong></p><p>@mly9233z</p><p><strong>Perwakilan:</strong></p><p>Bagas Andaryanto/155150200111005/FILKOM (T.Informatika)</p><p><strong>Website :</strong></p><p>Unitantri.ub.ac.id</p>\',\'<p><strong>Prestasi Organisasi</strong></p><p>-&nbsp;Juara 3 Peksiminal (Pekan Seni Mahasiswa Regional) 2010 Tingkat Provinsi Jawa Timur</p><p>-&nbsp;Juara 2 Peksiminal (Pekan Seni Mahasiswa Regional) 2012 Tingkat Provinsi Jawa Timur</p><p>-&nbsp;Juara 1 GFT (Gebyar Festival Tari) 2010 Tingkat Provinsi</p><p>-&nbsp;10 Penyaji Terbaik FKT (Festival Karyatari) 2010</p><p>-&nbsp;Juara 3 FOT (Festival Olahraga Traditional) 2013 Tingkat Provinsi</p><p>-&nbsp;Dancing Perfomence At APOC 11 In Okinawa Jepang</p><p>-&nbsp;Lomba Gamelan dalam Festival Wayang di Universitas Indonesia 2015</p><p>-&nbsp;Juara 2 dalam FRN (Festival Reyog Nasional) 2015</p><p>-&nbsp;Penata Tari Terbaik Non Ranking dalam (Festival Reyog Nasional) 2015</p><p>-&nbsp;Juara 2 PEKSIMIDA (Pekan Seni Mahasiswa Daerah) cabang tari Tingkat Regional Jawa Timur 2016</p>\',\'https://docs.google.com/forms/d/e/1FAIpQLScxCJahYPJ03r8swLviiYmRnNODlc8tawgsr20osZ2lcd3fmQ/viewform?c=0&w=1&fbzx=3494115157555216400\'), (\'8\',\'minat_kesenian_teaterkutub.jpg\',\'UATM\',\'Unit Aktivitas Teater Mahasiswa\',\'minat_kesenian_teaterkutub_icon.jpg\',\'<p>UATM sempat proses&nbsp;Dag Dig Dug&nbsp;(karya Putu Wijaya) tahun 1998. Kemudian tahun 1999 terjadi pergantian nama menjadi UATM Teater Atas Nama sebagai wadak kreativitas dan koordinasi. UATM Teater Atas Nama diketuai oleh&nbsp;Andri Zulharmen (Teater Cowboy-Fapet). Pada tahun 1999 diadakan pertama kali Parade Teater Se-UB bertempat di gedung Student Center.</p><p>Terjadi fraksi antara UATM dan komunitas teater fakultas.&nbsp;Salah satu cara menghilangkan friksi tersebut&nbsp;adalah diadakan penggarapan naskah&nbsp;Kisah Cinta Dan Lain-Lain&nbsp;(Arifin C. Noer). Proses pementasan inilah yang menjadi embrio KUTUB. Pada 30 Maret 2002 secara resmi dibentuklah KUTUB (Komunitas Teater UB). Konsep komunitas dirasa lebih cocok dengan kultur kekeluargaan Teater UB. Berbeda dengan Unit Aktivitas Mahasiswa yang lain yang bergerak secara mandiri, KUTUB bertugas juga mengkoordinir sanggar teater fakultas.</p><p>Ketua pertama KUTUB adalah&nbsp;Deddy Nugroho (Deddy Grandong), waktu itu sempat membuat pertunjukan&nbsp;Sri Panggung&nbsp;di Samantha Krida. Pertunjukannya itu memadukan unsur tari, gerak dan teater.</p><p>Pada tahun 2003 diadakan Parade Teater se-UB saat diketuai oleh&nbsp;Totok Widodo&nbsp;(Teater Cowboy-Fapet). Selama kepengurusan Totok, KUTUB mengadakan Parade Teater UB dan untuk pertama kalinya KUTUB merekrut anggota secara terbuka. Pada kepengurusan tersebut KUTUB memiliki tanggung jawab penuh untuk mempersiapkan PEKSIMINAL baik mulai dari seleksi sampai pelatihan dan pemberangkatan kontingen UB, tanpa intervensi Universitas. Pada tahun-tahun tersebut pula teater fakultas mengalami masa kejayaan.</p><p>Kemudian pada tahun 2007 KUTUB dipimpin oleh&nbsp;Hendri Leo&nbsp;(Teater Arca-FIA). Pada periode pengurusan tersebut sempat kedatangan tamu dari Teater Fajar (Universitas Muhammadiyah, Magelang).</p><p>Pada tahun 2009 dibentuk pengurus baru KUTUB yang diketuai oleh Aan Sukoco&nbsp;(Teater Cowboy-Fapet). Pada tahun 2010 diadakan Lomba Drama Lawak Dosen Karyawan Se-UB. Kursi ketua umum pada tahun 2010 diamanatkan kepada&nbsp;Moh. Tohir&nbsp;(MT) (Fakultas Pertanian). Pada tahun 2011&nbsp;Fikri Dani&nbsp;(Fakultas Teknik) diangkat menjadi ketua umum dan dilaksanakan Gebyar Festival Teater antar Fakultas untuk pertama kalinya.</p><p>Pada tahun 2013 dibawah kepemimpinan&nbsp;Iqbal Rochmansyah&nbsp;(Fakultas Perikanan &amp; Ilmu Kelautan) diadakan Pentas Tunggal dengan tajuk&nbsp;Opera Susila&nbsp;(saduran naskah Sidang Susila karya Agus Noor dan Ayu Utami) dengan sutradara Rifqi Alcaf (Kucing, FIA). Pentas Tunggal tersebut diadakan sekaligus sebagai ajang penampilan seni fakultas. Pada tahun yang sama juga digelar FESTAWIJAYA (Festival Teater Brawijaya) yang merupakan metamorfosis dari Gebyar Festival Teater antar Fakultas se-UB.</p><p>Masih di bawah kepemimpinan Iqbal Rohmansyah, pada tahun 2014 diadakan Pentas Tunggal berjudul Sang Rajapatni&nbsp;(bagian pertama Trilogi Opera Brawijaya) karya dan sutradara oleh Ekwan Wiratno (FMIPA). Di tahun yang sama juga digelar FESTAWIJAYA 2 2014 antar fakultas se-UB dan antar SMA/SMK se-Malang Raya.</p><p>Pada tahun 2015 ketua umum Teater KUTUB yaitu Putri Nur Fadila, dimana pada tahun 2015 ini telah terealisasinya Pentas Tunggal dengan naskah &ldquo;Presiden Kita Tercinta&rdquo; dan bekerja sama dengan beberapa teater fakultas untuk mengikuti Kurasi Festival Teater Mahasiswa Nasional dengan naskah &ldquo;Rindu Kentut Semar&rdquo;.</p><p>Pergantian jabatan dilakukan pada akhir tahun 2015, pada tahun 2016 kepemimpinan Teater KUTUB dipegang oleh Ramanto Lukman Yassar, pada awal tahun telah mementaskan naskah berjudul &ldquo;Terdampar&rdquo; dan langsung dilanjut dengan FESTAWIJAYA III (Festival Teater Brawijaya) se-Jawa Timur.</p><p><strong>Alamat:</strong></p><p>Gedung UKM Lantai 3.1 Jl. M.T Haryono 169 Malang 65145</p><p><strong>CP :</strong></p><p>089677602493 (Ikhda Eskapraja)</p><p><strong>Website :</strong></p><p>kutub.ub.ac.id</p><p><strong>Perwakilan :</strong></p><p>Chikal Ayunisa</p>\',\'<p><strong>Prestasi Organisasi</strong><p>-&nbsp;Pentas unggal Opera Susila (2012),</p><p>-&nbsp;Pentas Tunggal Sang Rajapatni (2014)</p><p>-&nbsp;Pentas Tunggal Presiden Kita Tercinta (2015)</p><p>-&nbsp;Kurasi FESTAMASIO (Festival Teater Mahasiswa Nasional) (2015)</p>\',\'http://kutub.ub.ac.id/open-recruitment-kutub-2016/\'), (\'8\',\'minat_kesenian_marchingband.jpg\',\'MARCHING BAND\',\'Marching Band Ekalavya Suara Brawijaya\',\'minat_kesenian_marchingband_icon.jpg\',\'<p>&nbsp;</p><p>Deskripsi Kegiatan:</p><p>Marching Band adalah sekelompok barisan orang yang memainkan satu atau beberapa lagu dengan menggunakan sejumlah kombinasi alat musik (tiup, perkusi, dan sejumlah instrumen pit) secara bersama-sama. Penampilan Marching Band merupakan kombinasi dari permainan musik (tiup, dan perkusi) serta aksi baris-berbaris dari pemainnya. Umumnya, penampilan Marching Band dipimpin oleh satu atau dua orang Komandan Lapangan (Field Commander) dan dilakukan baik di lapangan terbuka maupun lapangan tertutup dalam barisan yang membentuk formasi dengan pola yang senantiasa berubah-ubah sesuai dengan alur koreografi terhadap lagu yang dimainkan, dan diiringi pula dengan aksi tarian yang dilakukan oleh sejumlah pemain bendera (Color Guard).</p> <p><strong>Alamat Sekret:</strong></p> <p>Gedung UKM baru Lantai 2 Ruang 3-8</p> <p><strong>CP :</strong></p> <p>0856 4500 0252 (Farah Saksita A.N.)</p> <p><strong>Website:</strong></p> <p>mbesb.ub.ac.id</p> <p><strong>Perwakilan:</strong></p> <p>Mokh. Pungky Fadhli (082231544995)</p> <p>&nbsp;</p>\',\'<p><strong>Prestasi Organisasi</strong><p>-&nbsp;Juara Umum Blast Open Marching Competition 2010 di GOR Ken Arok, Malang, Jawa Timur.</p> <p>-&nbsp;Best Costumes, Best Field Commander, Best Showmanship BOMC 2010</p><p>-&nbsp;Juara 1 Color Guard Contest Indonesia Ekspresi, Jakarta Pusat, DKI Jakarta.</p><p>-&nbsp;Best Equipment Analysys Indonesia Ekspresi 2012.</p><p>-&nbsp;Peringkat 5 Brass Concert Bandung Marching Band Championship International, Bandung, Jawa Barat.</p><p>-&nbsp;Third Rank Audience Favourite Show of Sound Sation 2012, Malang, Jawa Timur.</p> <p>-&nbsp;4 Kali Juara 1 Male Individual Color Guard show di Jakarta, Sidoarjo, Gresik 2012.</p> <p>-&nbsp;1 Kali Juara 1 Duet Color Guard show di Jakarta 2012.</p> <p>-&nbsp;1 Kali Juara 1 Female Color Guard show di Gresik 2012.</p> <p>-&nbsp;Juara 1 Duet Color Guard pada Delta Marching Open Festival 2013, Sidoarjo.</p><p>-&nbsp;Juara 1 Solo Hornline pada Delta Marching Open Festival 2013, Sidoarjo.</p> <p>-&nbsp;Juara 1 Brass Ensemble pada Delta Marching Open Festival 2013, Sidoarjo.</p><p>-&nbsp;Juara 1 Solo Quint Tom Senior pada Delta Marching Open Festival 2013, Sidoarjo.</p><p>-&nbsp;Juara 1 Solo Color Guard Male Senior pada Delta Marching Open Festival 2013, Sidoarjo.</p><p>-&nbsp;Juara 1 Solo Golor Guard Female Senior pada Delta Marching Open Festival 2013, Sidoarjo.</p><p>-&nbsp;Peringkat 7 divisi utama Grand Prix Marching Band 2013</p><p>-&nbsp;Juara 4 Brass Concert Bandung Marching Band Champhionship International 2014</p><p>-&nbsp;Juara 1 Color Guard Contest Bandung Marching Band Champhionship International 2014</p><p>-&nbsp;Juara 4 Drum Battle Bandung Marching Band Champhionship International 2014</p> <p>-&nbsp;Juara 2 Street Parade Bandung Marching Band Champhionship International 2014</p><p>-&nbsp;Juara 1 Solo Hornline pada Delta Marching Open Festival 2015, Sidoarjo.</p><p>-&nbsp;Juara 2 Solo Hornline pada Delta Marching Open Festival 2015, Sidoarjo.</p><p>-&nbsp;Juara 3 Solo Hornline pada Delta Marching Open Festival 2015, Sidoarjo.</p><p>-&nbsp;Juara 1 Solo Quint Tom Senior pada Delta Marching Open Festival 2016, Sidoarjo.</p><p>-&nbsp;Juara 2 Solo Snare Senior pada Delta Marching Open Festival 2015, Sidoarjo.</p><p>-&nbsp;Juara 1 Solo Pit Instrument pada Delta Marching Open Festival 2015, Sidoarjo.</li> <p><strong>Prestasi Organisasi</strong><p>-&nbsp;Juara Umum Blast Open Marching Competition 2010 di GOR Ken Arok, Malang, Jawa Timur.</p> <p>-&nbsp;Best Costumes, Best Field Commander, Best Showmanship BOMC 2010</p><p>-&nbsp;Juara 1 Color Guard Contest Indonesia Ekspresi, Jakarta Pusat, DKI Jakarta.</p><p>-&nbsp;Best Equipment Analysys Indonesia Ekspresi 2012.</p><p>-&nbsp;Peringkat 5 Brass Concert Bandung Marching Band Championship International, Bandung, Jawa Barat.</p><p>-&nbsp;Third Rank Audience Favourite Show of Sound Sation 2012, Malang, Jawa Timur.</p> <p>-&nbsp;4 Kali Juara 1 Male Individual Color Guard show di Jakarta, Sidoarjo, Gresik 2012.</p> <p>-&nbsp;1 Kali Juara 1 Duet Color Guard show di Jakarta 2012.</p> <p>-&nbsp;1 Kali Juara 1 Female Color Guard show di Gresik 2012.</p> <p>-&nbsp;Juara 1 Duet Color Guard pada Delta Marching Open Festival 2013, Sidoarjo.</p><p>-&nbsp;Juara 1 Solo Hornline pada Delta Marching Open Festival 2013, Sidoarjo.</p> <p>-&nbsp;Juara 1 Brass Ensemble pada Delta Marching Open Festival 2013, Sidoarjo.</p><p>-&nbsp;Juara 1 Solo Quint Tom Senior pada Delta Marching Open Festival 2013, Sidoarjo.</p><p>-&nbsp;Juara 1 Solo Color Guard Male Senior pada Delta Marching Open Festival 2013, Sidoarjo.</p><p>-&nbsp;Juara 1 Solo Golor Guard Female Senior pada Delta Marching Open Festival 2013, Sidoarjo.</p><p>-&nbsp;Peringkat 7 divisi utama Grand Prix Marching Band 2013</p><p>-&nbsp;Juara 4 Brass Concert Bandung Marching Band Champhionship International 2014</p><p>-&nbsp;Juara 1 Color Guard Contest Bandung Marching Band Champhionship International 2014</p><p>-&nbsp;Juara 4 Drum Battle Bandung Marching Band Champhionship International 2014</p> <p>-&nbsp;Juara 2 Street Parade Bandung Marching Band Champhionship International 2014</p><p>-&nbsp;Juara 1 Solo Hornline pada Delta Marching Open Festival 2015, Sidoarjo.</p><p>-&nbsp;Juara 2 Solo Hornline pada Delta Marching Open Festival 2015, Sidoarjo.</p><p>-&nbsp;Juara 3 Solo Hornline pada Delta Marching Open Festival 2015, Sidoarjo.</p><p>-&nbsp;Juara 1 Solo Quint Tom Senior pada Delta Marching Open Festival 2016, Sidoarjo.</p><p>-&nbsp;Juara 2 Solo Snare Senior pada Delta Marching Open Festival 2015, Sidoarjo.</p><p>-&nbsp;Juara 1 Solo Pit Instrument pada Delta Marching Open Festival 2015, Sidoarjo.</p><p>-&nbsp; Juara 2 Solo Pit Instrument pada Delta Marching Open Festival 2015, Sidoarjo.</p> <p>-&nbsp;Juara 2 Solo Color Guard Female pada Delta Marching Open Festival 2015, Sidoarjo.</p><p>-&nbsp;Juara 1 Duet Color Guard pada Delta Marching Open Festival 2015, Sidoarjo.</p><p>-&nbsp;Juara 1 Brass Ensamble pada Delta Marching Open Festival 2015, Sidoarjo.</p><p>-&nbsp;Juara 1 Drum Battle pada Delta Marching Open Festival 2015, Sidoarjo.</p><p>-&nbsp;Peringkat 9 divisi utama Grand Prix Marching Band 2015</p><p>-&nbsp;Juara 1 Solo Hornline pada Delta Marching Open Festival 2016, Sidoarjo.</p><p>-&nbsp;Juara 2 Solo Hornline pada Delta Marching Open Festival 2016, Sidoarjo.</p><p>-&nbsp;Juara 3 Solo Hornline pada Delta Marching Open Festival 2016, Sidoarjo.</p><p>-&nbsp;Juara 2 Solo Quint Tom Senior pada Delta Marching Open Festival 2016, Sidoarjo.</p><p>-&nbsp;Juara 3 Solo Quint Tom Senior pada Delta Marching Open Festival 2016, Sidoarjo.</p><p>-&nbsp;Juara 2 Solo Snare Senior pada Delta Marching Open Festival 2016, Sidoarjo.</p><p>-&nbsp;Juara 2 Solo Pit Instrument pada Delta Marching Open Festival 2016, Sidoarjo.</p><p>-&nbsp;Juara 3 Solo Pit Instrument pada Delta Marching Open Festival 2016, Sidoarjo.</p><p>-&nbsp;Juara 1 Solo Color Guard Female pada Delta Marching Open Festival 2016, Sidoarjo.</p><p>-&nbsp;Juara 1 Brass Ensamble pada Delta Marching Open Festival 2016, Sidoarjo.</p><p>-&nbsp;Juara 1 Drum Battle pada Delta Marching Open Festival 2016, Sidoarjo.</p><p>-&nbsp;Juara 2 Solo Pit Instrument pada Delta Marching Open Festival 2015, Sidoarjo.</p><p>-&nbsp;Juara 2 Solo Color Guard Female pada Delta Marching Open Festival 2015, Sidoarjo.</p> <p>-&nbsp;Juara 1 Duet Color Guard pada Delta Marching Open Festival 2015, Sidoarjo.</p><p>-&nbsp;Juara 1 Brass Ensamble pada Delta Marching Open Festival 2015, Sidoarjo.</p><p>-&nbsp;Juara 1 Drum Battle pada Delta Marching Open Festival 2015, Sidoarjo.</p><p>-&nbsp;Peringkat 9 divisi utama Grand Prix Marching Band 2015</p><p>-&nbsp;Juara 1 Solo Hornline pada Delta Marching Open Festival 2016, Sidoarjo.</p><p>-&nbsp;Juara 2 Solo Hornline pada Delta Marching Open Festival 2016, Sidoarjo.</p> <p>-&nbsp;Juara 3 Solo Hornline pada Delta Marching Open Festival 2016, Sidoarjo.</p><p>-&nbsp;Juara 2 Solo Quint Tom Senior pada Delta Marching Open Festival 2016, Sidoarjo.</p><p>-&nbsp;Juara 3 Solo Quint Tom Senior pada Delta Marching Open Festival 2016, Sidoarjo.</p><p>-&nbsp;Juara 2 Solo Snare Senior pada Delta Marching Open Festival 2016, Sidoarjo.</p> <p>-&nbsp;Juara 2 Solo Pit Instrument pada Delta Marching Open Festival 2016, Sidoarjo.</p><p>-&nbsp;Juara 3 Solo Pit Instrument pada Delta Marching Open Festival 2016, Sidoarjo.</p><p>-&nbsp;Juara 1 Solo Color Guard Female pada Delta Marching Open Festival 2016, Sidoarjo.</p> <p>-&nbsp;Juara 1 Brass Ensamble pada Delta Marching Open Festival 2016, Sidoarjo.</p><p>-&nbsp;Juara 1 Drum Battle pada Delta Marching Open Festival 2016, Sidoarjo.</p>\',\'https://goo.gl/forms/dZhO72K47yZ9h9hM2\'), (\'8\',\'minat_kesenian_nolderajat.jpg\',\'NOL DERAJAT FILM\',\'Nol Derajat Film\',\'minat_kesenian_nolderajat_icon.jpg\',\'<p>&nbsp;</p><p>Deskripsi Kegiatan : Unit Kegiatan Mahasiswa Universitas Brawijaya&nbsp; Malang yang bergerak di bidang seni sinematografi, Sinematografi adalah penggabungan antara film dan fotografi. It is closely related to the art of still photography . Sudut kreatifitas sinematografi mahasiswa Universitas Brawijaya, Malang. Dari sudut Nol derajat kami mengawali semuanya untuk merubah dunia. Berawal dari komunitas, hingga akhirnya menjadi 1 keluarga. Mengenali, Memahami, Melengkapi.</p> <p><strong>Alamat sekret :</strong></p> <p>Rusunawa UKM UB Lt. 1 Jl. MT. Haryono 169 Malang 65145</p> <p><strong>CP :</strong></p> <p>0822-3332-8331 / Line : fendraiskandar28 (Fendra)</p> <p><strong>Website :</strong></p><p>nolderajatfilm.ub.ac.id</p>\',\'<p><strong>Prestasi Organisasi</strong></p><p>-&nbsp;Film Hadiah Terakhir. Sutradara: Angga Sukmara, (2011)</p><p>-&nbsp;Project Film Profil Teaser Basic Shooting Club Universitas Brawijaya, (2012) </p><p>-&nbsp;Editing Project HMJM FEB UB Management Days 2012 (2012)</p><p>-&nbsp;Project Film Profil Panitia PDD HMJM FEB UB Management Days 2012 (2012) </p><p>-&nbsp;Documentation Film MIPA UB jurusan Biologi. Pelestarian Flora &amp; Fauna. (2012)</p><p>-&nbsp;Finalis Pesta Film Airlangga (2013)</p><p>-&nbsp;Screening Psychology Film Festival (2014)</p><p>-&nbsp;50 Besar Eagle Awards (2015)</p><p>-&nbsp;15 Besar Art Festival Averland , Sampoerna (2016)</p>\',\'http://bit.ly/FormNDF5\'), (\'8\',\'minat_kesenian_senireligi.png\',\'UKM SENI RELIGI\',\'Seni Religi\',\'minat_kesenian_senireligi_icon.png\',\'<p>Seni Religi merupakan salah satu Unit Kegiatan Mahasiswadi Universitas Brawijaya yang untuk menaungi beberapa kegiatan seni islam seperti <strong>Al-Banjari</strong>, <strong>Musik Islami Kontemporer</strong>, Musabaqah Tilawatil Qur&rsquo;an, Kaligrafi, Musabaqah Syarhil Qur&rsquo;an, Musabaqah Hifdzil Qur&rsquo;an, Karya Tulis Islam dan kegiatan seni islami lainnya. UKM Seni Religi lebih fokus kepada pembinaan dini secara umum bagi mahasiswa Universitas Brawijaya baik di bidang seni maupun untuk beberapa cabang MTQ yang direkomendasikan kemahasiswaan pusat untuk menjadi bagian dari UKM ini. UKM Seni Religi berkomitmen untuk mendidik dan membina teman-teman mulai dari nol untuk menjadi mengerti dan bisa sehingga dalam pembinaannya terbuka lebar bagi mahasiswa yang ingin bergabung di dalamnya.</p><p>&nbsp;</p><ul><li><strong>Alamat Sekret: </strong></li> </ul> <p>Gedung UKM Universitas Brawijaya Lantai 1 no.6</p> <p><strong>CP :</strong></p> <p>Arin Zahra &ndash; 081233648879</p> <p><strong>Perwakilan UKM:</strong></p> <p>Fasti Surya &ndash; 089602989877</p> <p><strong>Website :</strong></p> <p>senireligiub.blogspot.co.id</p>\',\'<p><strong>Prestasi Organisasi</strong></p><p>-&nbsp;Juara 1 MTQ Putri tingkat Nasional di UNJ</p><p>-&nbsp;Juara 1 MTQ Putri tingkat Jawa Timur di UINSA</p><p>-&nbsp;Juara 1 MHQ Putri 5 Juz se-Jawa di UNS</p><p>-&nbsp;Juara 1 MHQ Putri 1 Juz se-Jawa di UNS</p><p>-&nbsp;Juara 2 Tilawah Putri se Jawa Timur di Tambak Beras, Jombang</p><p>-&nbsp;Juara 2 Nasyid se Malang Raya di UIN Maliki Malang</p><p>-&nbsp;Juara 2 MTQ Putri se-Jawa di UNS</p><p>-&nbsp;Juara 2 MTQ Putra RRI Malang</p><p>-&nbsp;Juara 2 CCQ RRI Malang</p><p>-&nbsp;Juara 3 Festival Banjari Gresik tingkat Jawa Timur</p> <p>-&nbsp;Juara 3 MHQ Putri 10 Juz se-Jawa di UNS</p><p>-&nbsp;Juara 3 MTQ Putri RRI Malang</p><p>-&nbsp;Juara harapan 1 Banjari PPRS tingkat Jawa Timur</p><p>-&nbsp;J4uara Harapan 1 Festival Banjari Pemkot Batu</p> <p>-&nbsp;Juara Harapan 3 Tilawah Putra se-Jawa di UNS</p><p>-&nbsp;Juara Harapan 3 Tartil Putri se-Jawa di UNS</p><p>-&nbsp;Juara Harapan 5 MSQ tingkat Nasional di UIN Syarif Hidayatullah Jakarta</p>\',\'http://senireligi.ub.ac.id/formulir-pendaftaran-anggota-ukm-seni-religi-ub-2016/\')"

    .line 274
    .local v4, "data5":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INSERT INTO oh_lkm (KATEGORI_MINAT, IMG_UTAMA,JUDUL_UKM,SUBJUDUL_UKM,IMG_DESKRIPSI,DESKRIPSI_UKM,PRESTASI_UKM,PENDAFTARAN_UKM) values"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method public insertMinatKhusus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 5
    .param p1, "IMG_UTAMA"    # Ljava/lang/String;
    .param p2, "JUDUL_UKM"    # Ljava/lang/String;
    .param p3, "SUBJUDUL_UKM"    # Ljava/lang/String;
    .param p4, "IMG_DESKRIPSI"    # Ljava/lang/String;
    .param p5, "DESKRIPSI_UKM"    # Ljava/lang/String;
    .param p6, "PRESTASI_UKM"    # Ljava/lang/String;
    .param p7, "PENDAFTARAN_UKM"    # Ljava/lang/String;

    .prologue
    .line 79
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 80
    .local v1, "initialValues":Landroid/content/ContentValues;
    const-string v2, "IMG_UTAMA"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v2, "JUDUL_UKM"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v2, "SUBJUDUL_UKM"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v2, "IMG_DESKRIPSI"

    invoke-virtual {v1, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v2, "DESKRIPSI_UKM"

    invoke-virtual {v1, v2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v2, "PRESTASI_UKM"

    invoke-virtual {v1, v2, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v2, "PENDAFTARAN_UKM"

    invoke-virtual {v1, v2, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :try_start_0
    invoke-virtual {p0}, Lcom/rb/cahaya/raja/global/DBAdapter;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "oh_lkm"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 93
    :goto_0
    return-wide v2

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 33
    const-string v0, "CREATE TABLE oh_lkm (ID_oh_lkm integer primary key autoincrement, KATEGORI_MINAT INTEGER DEFAULT (0),IMG_UTAMA VARCHAR DEFAULT (0),JUDUL_UKM VARCHAR DEFAULT (0),SUBJUDUL_UKM VARCHAR DEFAULT (0),IMG_DESKRIPSI VARCHAR DEFAULT (0),DESKRIPSI_UKM TEXT DEFAULT (0),PRESTASI_UKM TEXT DEFAULT (0),PENDAFTARAN_UKM VARCHAR DEFAULT (0));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0, p1}, Lcom/rb/cahaya/raja/global/DBAdapter;->insertData(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 45
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldversion"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 51
    return-void
.end method

.method public setJum(I)V
    .locals 0
    .param p1, "jum"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/rb/cahaya/raja/global/DBAdapter;->jum:I

    .line 25
    return-void
.end method

.method public setTransactionSuccessful()V
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/rb/cahaya/raja/global/DBAdapter;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 59
    return-void
.end method
