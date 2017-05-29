.class public Lcom/rb/cahaya/raja/OH_LKM/OH_LKM_Activity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "OH_LKM_Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field DPM:Landroid/widget/ImageView;

.field EM:Landroid/widget/ImageView;

.field Kongres_mahasiswa:Landroid/widget/ImageView;

.field db:Lcom/rb/cahaya/raja/global/DBAdapter;

.field minat_keolahragaan:Landroid/widget/ImageView;

.field minat_kesejahteraan_mahasiswa:Landroid/widget/ImageView;

.field minat_kesenian:Landroid/widget/ImageView;

.field minat_khusus:Landroid/widget/ImageView;

.field minat_penalaran:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 129
    :goto_0
    :pswitch_0
    return-void

    .line 75
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/rb/cahaya/raja/OH_LKM/detail_minat;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "kategori"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    const-string v1, "id_minat"

    iget-object v2, p0, Lcom/rb/cahaya/raja/OH_LKM/OH_LKM_Activity;->db:Lcom/rb/cahaya/raja/global/DBAdapter;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Lcom/rb/cahaya/raja/global/DBAdapter;->get_id_oh_lkm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    invoke-virtual {p0, v0}, Lcom/rb/cahaya/raja/OH_LKM/OH_LKM_Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 81
    .end local v0    # "i":Landroid/content/Intent;
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/rb/cahaya/raja/OH_LKM/detail_minat;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    .restart local v0    # "i":Landroid/content/Intent;
    const-string v1, "kategori"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const-string v1, "id_minat"

    iget-object v2, p0, Lcom/rb/cahaya/raja/OH_LKM/OH_LKM_Activity;->db:Lcom/rb/cahaya/raja/global/DBAdapter;

    const-string v3, "2"

    invoke-virtual {v2, v3}, Lcom/rb/cahaya/raja/global/DBAdapter;->get_id_oh_lkm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    invoke-virtual {p0, v0}, Lcom/rb/cahaya/raja/OH_LKM/OH_LKM_Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 87
    .end local v0    # "i":Landroid/content/Intent;
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/rb/cahaya/raja/OH_LKM/detail_minat;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    .restart local v0    # "i":Landroid/content/Intent;
    const-string v1, "kategori"

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const-string v1, "id_minat"

    iget-object v2, p0, Lcom/rb/cahaya/raja/OH_LKM/OH_LKM_Activity;->db:Lcom/rb/cahaya/raja/global/DBAdapter;

    const-string v3, "3"

    invoke-virtual {v2, v3}, Lcom/rb/cahaya/raja/global/DBAdapter;->get_id_oh_lkm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    invoke-virtual {p0, v0}, Lcom/rb/cahaya/raja/OH_LKM/OH_LKM_Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 93
    .end local v0    # "i":Landroid/content/Intent;
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/rb/cahaya/raja/OH_LKM/list_pilihan_minat;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    .restart local v0    # "i":Landroid/content/Intent;
    const-string v1, "kategori"

    const-string v2, "4"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const-string v1, "id_minat"

    iget-object v2, p0, Lcom/rb/cahaya/raja/OH_LKM/OH_LKM_Activity;->db:Lcom/rb/cahaya/raja/global/DBAdapter;

    const-string v3, "4"

    invoke-virtual {v2, v3}, Lcom/rb/cahaya/raja/global/DBAdapter;->get_id_oh_lkm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const-string v1, "tittle"

    const-string v2, "Minat Kesejahteraan Mahasiswa"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    invoke-virtual {p0, v0}, Lcom/rb/cahaya/raja/OH_LKM/OH_LKM_Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 100
    .end local v0    # "i":Landroid/content/Intent;
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/rb/cahaya/raja/OH_LKM/list_pilihan_minat;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    .restart local v0    # "i":Landroid/content/Intent;
    const-string v1, "kategori"

    const-string v2, "5"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    const-string v1, "id_minat"

    iget-object v2, p0, Lcom/rb/cahaya/raja/OH_LKM/OH_LKM_Activity;->db:Lcom/rb/cahaya/raja/global/DBAdapter;

    const-string v3, "5"

    invoke-virtual {v2, v3}, Lcom/rb/cahaya/raja/global/DBAdapter;->get_id_oh_lkm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const-string v1, "tittle"

    const-string v2, "Minat Khusus"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    invoke-virtual {p0, v0}, Lcom/rb/cahaya/raja/OH_LKM/OH_LKM_Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 107
    .end local v0    # "i":Landroid/content/Intent;
    :pswitch_6
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/rb/cahaya/raja/OH_LKM/list_pilihan_minat;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    .restart local v0    # "i":Landroid/content/Intent;
    const-string v1, "kategori"

    const-string v2, "6"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const-string v1, "id_minat"

    iget-object v2, p0, Lcom/rb/cahaya/raja/OH_LKM/OH_LKM_Activity;->db:Lcom/rb/cahaya/raja/global/DBAdapter;

    const-string v3, "6"

    invoke-virtual {v2, v3}, Lcom/rb/cahaya/raja/global/DBAdapter;->get_id_oh_lkm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const-string v1, "tittle"

    const-string v2, "Minat Keolahragaan"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    invoke-virtual {p0, v0}, Lcom/rb/cahaya/raja/OH_LKM/OH_LKM_Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 114
    .end local v0    # "i":Landroid/content/Intent;
    :pswitch_7
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/rb/cahaya/raja/OH_LKM/list_pilihan_minat;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    .restart local v0    # "i":Landroid/content/Intent;
    const-string v1, "kategori"

    const-string v2, "7"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const-string v1, "id_minat"

    iget-object v2, p0, Lcom/rb/cahaya/raja/OH_LKM/OH_LKM_Activity;->db:Lcom/rb/cahaya/raja/global/DBAdapter;

    const-string v3, "7"

    invoke-virtual {v2, v3}, Lcom/rb/cahaya/raja/global/DBAdapter;->get_id_oh_lkm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    const-string v1, "tittle"

    const-string v2, "Minat Penalaran"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    invoke-virtual {p0, v0}, Lcom/rb/cahaya/raja/OH_LKM/OH_LKM_Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 121
    .end local v0    # "i":Landroid/content/Intent;
    :pswitch_8
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/rb/cahaya/raja/OH_LKM/list_pilihan_minat;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    .restart local v0    # "i":Landroid/content/Intent;
    const-string v1, "kategori"

    const-string v2, "8"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string v1, "id_minat"

    iget-object v2, p0, Lcom/rb/cahaya/raja/OH_LKM/OH_LKM_Activity;->db:Lcom/rb/cahaya/raja/global/DBAdapter;

    const-string v3, "8"

    invoke-virtual {v2, v3}, Lcom/rb/cahaya/raja/global/DBAdapter;->get_id_oh_lkm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const-string v1, "tittle"

    const-string v2, "Minat Kesenian"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    invoke-virtual {p0, v0}, Lcom/rb/cahaya/raja/OH_LKM/OH_LKM_Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 73
    :pswitch_data_0
    .packed-switch 0x7f0d008d
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 31
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v1, 0x7f040025

    invoke-virtual {p0, v1}, Lcom/rb/cahaya/raja/OH_LKM/OH_LKM_Activity;->setContentView(I)V

    .line 34
    const v1, 0x7f0d006d

    invoke-virtual {p0, v1}, Lcom/rb/cahaya/raja/OH_LKM/OH_LKM_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 35
    .local v0, "toolbar":Landroid/support/v7/widget/Toolbar;
    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p0, v0}, Lcom/rb/cahaya/raja/OH_LKM/OH_LKM_Activity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 37
    invoke-virtual {p0}, Lcom/rb/cahaya/raja/OH_LKM/OH_LKM_Activity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const-string v2, "OH LKM"

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 38
    invoke-virtual {p0}, Lcom/rb/cahaya/raja/OH_LKM/OH_LKM_Activity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 39
    invoke-virtual {p0}, Lcom/rb/cahaya/raja/OH_LKM/OH_LKM_Activity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 42
    :cond_0
    new-instance v1, Lcom/rb/cahaya/raja/global/DBAdapter;

    invoke-direct {v1, p0}, Lcom/rb/cahaya/raja/global/DBAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/rb/cahaya/raja/OH_LKM/OH_LKM_Activity;->db:Lcom/rb/cahaya/raja/global/DBAdapter;

    .line 43
    const v1, 0x7f0d008d

    invoke-virtual {p0, v1}, Lcom/rb/cahaya/raja/OH_LKM/OH_LKM_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/rb/cahaya/raja/OH_LKM/OH_LKM_Activity;->EM:Landroid/widget/ImageView;

    .line 44
    const v1, 0x7f0d008f

    invoke-virtual {p0, v1}, Lcom/rb/cahaya/raja/OH_LKM/OH_LKM_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/rb/cahaya/raja/OH_LKM/OH_LKM_Activity;->DPM:Landroid/widget/ImageView;

    .line 45
    const v1, 0x7f0d0091

    invoke-virtual {p0, v1}, Lcom/rb/cahaya/raja/OH_LKM/OH_LKM_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/rb/cahaya/raja/OH_LKM/OH_LKM_Activity;->Kongres_mahasiswa:Landroid/widget/ImageView;

    .line 46
    const v1, 0x7f0d0095

    invoke-virtual {p0, v1}, Lcom/rb/cahaya/raja/OH_LKM/OH_LKM_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/rb/cahaya/raja/OH_LKM/OH_LKM_Activity;->minat_khusus:Landroid/widget/ImageView;

    .line 47
    const v1, 0x7f0d0097

    invoke-virtual {p0, v1}, Lcom/rb/cahaya/raja/OH_LKM/OH_LKM_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/rb/cahaya/raja/OH_LKM/OH_LKM_Activity;->minat_keolahragaan:Landroid/widget/ImageView;

    .line 48
    const v1, 0x7f0d0093

    invoke-virtual {p0, v1}, Lcom/rb/cahaya/raja/OH_LKM/OH_LKM_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/rb/cahaya/raja/OH_LKM/OH_LKM_Activity;->minat_kesejahteraan_mahasiswa:Landroid/widget/ImageView;

    .line 49
    const v1, 0x7f0d0099

    invoke-virtual {p0, v1}, Lcom/rb/cahaya/raja/OH_LKM/OH_LKM_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/rb/cahaya/raja/OH_LKM/OH_LKM_Activity;->minat_penalaran:Landroid/widget/ImageView;

    .line 50
    const v1, 0x7f0d009b

    invoke-virtual {p0, v1}, Lcom/rb/cahaya/raja/OH_LKM/OH_LKM_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/rb/cahaya/raja/OH_LKM/OH_LKM_Activity;->minat_kesenian:Landroid/widget/ImageView;

    .line 52
    iget-object v1, p0, Lcom/rb/cahaya/raja/OH_LKM/OH_LKM_Activity;->EM:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v1, p0, Lcom/rb/cahaya/raja/OH_LKM/OH_LKM_Activity;->DPM:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v1, p0, Lcom/rb/cahaya/raja/OH_LKM/OH_LKM_Activity;->Kongres_mahasiswa:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v1, p0, Lcom/rb/cahaya/raja/OH_LKM/OH_LKM_Activity;->minat_khusus:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v1, p0, Lcom/rb/cahaya/raja/OH_LKM/OH_LKM_Activity;->minat_keolahragaan:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v1, p0, Lcom/rb/cahaya/raja/OH_LKM/OH_LKM_Activity;->minat_kesejahteraan_mahasiswa:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v1, p0, Lcom/rb/cahaya/raja/OH_LKM/OH_LKM_Activity;->minat_penalaran:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v1, p0, Lcom/rb/cahaya/raja/OH_LKM/OH_LKM_Activity;->minat_kesenian:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 65
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/rb/cahaya/raja/OH_LKM/OH_LKM_Activity;->onBackPressed()V

    .line 67
    const/4 v0, 0x1

    .line 69
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
