.class public Lcom/rb/cahaya/raja/Minat_Khusus_Menwa/PageAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "PageAdapter.java"


# instance fields
.field mNumOfTabs:I


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;I)V
    .locals 0
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "NumOfTabs"    # I

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 15
    iput p2, p0, Lcom/rb/cahaya/raja/Minat_Khusus_Menwa/PageAdapter;->mNumOfTabs:I

    .line 16
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/rb/cahaya/raja/Minat_Khusus_Menwa/PageAdapter;->mNumOfTabs:I

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 21
    packed-switch p1, :pswitch_data_0

    .line 32
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 23
    :pswitch_0
    new-instance v0, Lcom/rb/cahaya/raja/Minat_Khusus_Menwa/Fragment_deskripsi_khusus;

    invoke-direct {v0}, Lcom/rb/cahaya/raja/Minat_Khusus_Menwa/Fragment_deskripsi_khusus;-><init>()V

    .line 24
    .local v0, "tab1":Lcom/rb/cahaya/raja/Minat_Khusus_Menwa/Fragment_deskripsi_khusus;
    goto :goto_0

    .line 26
    .end local v0    # "tab1":Lcom/rb/cahaya/raja/Minat_Khusus_Menwa/Fragment_deskripsi_khusus;
    :pswitch_1
    new-instance v1, Lcom/rb/cahaya/raja/Minat_Khusus_Menwa/Fragment_prestasi_khusus;

    invoke-direct {v1}, Lcom/rb/cahaya/raja/Minat_Khusus_Menwa/Fragment_prestasi_khusus;-><init>()V

    .local v1, "tab2":Lcom/rb/cahaya/raja/Minat_Khusus_Menwa/Fragment_prestasi_khusus;
    move-object v0, v1

    .line 27
    goto :goto_0

    .line 29
    .end local v1    # "tab2":Lcom/rb/cahaya/raja/Minat_Khusus_Menwa/Fragment_prestasi_khusus;
    :pswitch_2
    new-instance v2, Lcom/rb/cahaya/raja/Minat_Khusus_Menwa/Fragment_pendftaran_khusus;

    invoke-direct {v2}, Lcom/rb/cahaya/raja/Minat_Khusus_Menwa/Fragment_pendftaran_khusus;-><init>()V

    .local v2, "tab3":Lcom/rb/cahaya/raja/Minat_Khusus_Menwa/Fragment_pendftaran_khusus;
    move-object v0, v2

    .line 30
    goto :goto_0

    .line 21
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
