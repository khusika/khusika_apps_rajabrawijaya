.class public Lcom/rb/cahaya/raja/OH_LKM/Fragment_prestasi_khusus;
.super Landroid/support/v4/app/Fragment;
.source "Fragment_prestasi_khusus.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 24
    const v4, 0x7f040045

    invoke-virtual {p1, v4, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 26
    .local v2, "rootview":Landroid/view/View;
    const v4, 0x7f0d00ad

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/uncopt/android/widget/text/justify/JustifiedTextView;

    .line 27
    .local v1, "desc":Lcom/uncopt/android/widget/text/justify/JustifiedTextView;
    const v4, 0x7f0d00ab

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 29
    .local v3, "tv_alert":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/rb/cahaya/raja/OH_LKM/Fragment_prestasi_khusus;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    instance-of v4, v4, Lcom/rb/cahaya/raja/OH_LKM/detail_minat;

    if-eqz v4, :cond_0

    .line 30
    const-string v4, "detailminat"

    const-string v5, ":3:masuk"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-virtual {p0}, Lcom/rb/cahaya/raja/OH_LKM/Fragment_prestasi_khusus;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    check-cast v4, Lcom/rb/cahaya/raja/OH_LKM/detail_minat;

    iget-object v0, v4, Lcom/rb/cahaya/raja/OH_LKM/detail_minat;->datadetail:Ljava/util/ArrayList;

    .line 32
    .local v0, "datamaster":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    .line 33
    const-string v4, "detailminat"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ":4:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/uncopt/android/widget/text/justify/JustifiedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    invoke-virtual {v1}, Lcom/uncopt/android/widget/text/justify/JustifiedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 37
    invoke-virtual {v1, v7}, Lcom/uncopt/android/widget/text/justify/JustifiedTextView;->setVisibility(I)V

    .line 38
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 46
    .end local v0    # "datamaster":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_0
    :goto_0
    return-object v2

    .line 40
    .restart local v0    # "datamaster":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_1
    invoke-virtual {v1, v8}, Lcom/uncopt/android/widget/text/justify/JustifiedTextView;->setVisibility(I)V

    .line 41
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
