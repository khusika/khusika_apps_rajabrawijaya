.class public Lcom/rb/cahaya/raja/Minat_Khusus_Menwa/Fragment_deskripsi_khusus;
.super Landroid/support/v4/app/Fragment;
.source "Fragment_deskripsi_khusus.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    const v3, 0x7f040043

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 25
    .local v2, "rootview":Landroid/view/View;
    const v3, 0x7f0d00a7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 27
    .local v1, "desc":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/rb/cahaya/raja/Minat_Khusus_Menwa/Fragment_deskripsi_khusus;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    instance-of v3, v3, Lcom/rb/cahaya/raja/OH_LKM/detail_minat;

    if-eqz v3, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/rb/cahaya/raja/Minat_Khusus_Menwa/Fragment_deskripsi_khusus;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/rb/cahaya/raja/OH_LKM/detail_minat;

    iget-object v0, v3, Lcom/rb/cahaya/raja/OH_LKM/detail_minat;->datadetail:Ljava/util/ArrayList;

    .line 29
    .local v0, "datamaster":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    .line 30
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .end local v0    # "datamaster":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_0
    return-object v2
.end method
