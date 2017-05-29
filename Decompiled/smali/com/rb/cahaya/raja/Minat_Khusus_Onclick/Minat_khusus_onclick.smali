.class public Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Minat_khusus_onclick;
.super Landroid/support/v7/app/AppCompatActivity;
.source "Minat_khusus_onclick.java"


# instance fields
.field private Imanager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private adaptador:Landroid/support/v7/widget/RecyclerView$Adapter;

.field private reciclador:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 118
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    .line 119
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    .line 30
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v2, 0x7f040024

    invoke-virtual {p0, v2}, Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Minat_khusus_onclick;->setContentView(I)V

    .line 33
    const v2, 0x7f0d006d

    invoke-virtual {p0, v2}, Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Minat_khusus_onclick;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/Toolbar;

    .line 34
    .local v1, "toolbar":Landroid/support/v7/widget/Toolbar;
    if-eqz v1, :cond_0

    .line 35
    invoke-virtual {p0, v1}, Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Minat_khusus_onclick;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 36
    invoke-virtual {p0}, Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Minat_khusus_onclick;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    const-string v3, "Minat Khusus"

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 37
    invoke-virtual {p0}, Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Minat_khusus_onclick;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 38
    invoke-virtual {p0}, Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Minat_khusus_onclick;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 42
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v0, "mProductList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Detail_item;>;"
    new-instance v2, Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Detail_item;

    const v3, 0x7f0200be

    const-string v4, "Manwa"

    const-string v5, "Resimen Mahasiswa"

    invoke-direct {v2, v7, v3, v4, v5}, Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Detail_item;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance v2, Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Detail_item;

    const/4 v3, 0x2

    const v4, 0x7f0200bc

    const-string v5, "KSR"

    const-string v6, "Korps Sukarela"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Detail_item;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    new-instance v2, Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Detail_item;

    const/4 v3, 0x3

    const v4, 0x7f0200ba

    const-string v5, "Impala"

    const-string v6, "Ikatan Mahasiswa Pecinta Alam"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Detail_item;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    new-instance v2, Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Detail_item;

    const/4 v3, 0x4

    const v4, 0x7f0200c0

    const-string v5, "Pramuka"

    const-string v6, "Praja Muda Karana"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Detail_item;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v2, Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Detail_item;

    const/4 v3, 0x5

    const v4, 0x7f0200c2

    const-string v5, "Tegazs"

    const-string v6, "Gak ada artinya dan gak tau mau diisi apa"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Detail_item;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    const v2, 0x7f0d0071

    invoke-virtual {p0, v2}, Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Minat_khusus_onclick;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    iput-object v2, p0, Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Minat_khusus_onclick;->reciclador:Landroid/support/v7/widget/RecyclerView;

    .line 54
    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v7, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v2, p0, Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Minat_khusus_onclick;->Imanager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 55
    iget-object v2, p0, Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Minat_khusus_onclick;->reciclador:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Minat_khusus_onclick;->Imanager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 56
    iget-object v2, p0, Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Minat_khusus_onclick;->reciclador:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Lcom/rb/cahaya/raja/global/RecyclerItemClickListener;

    iget-object v4, p0, Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Minat_khusus_onclick;->reciclador:Landroid/support/v7/widget/RecyclerView;

    new-instance v5, Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Minat_khusus_onclick$1;

    invoke-direct {v5, p0}, Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Minat_khusus_onclick$1;-><init>(Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Minat_khusus_onclick;)V

    invoke-direct {v3, p0, v4, v5}, Lcom/rb/cahaya/raja/global/RecyclerItemClickListener;-><init>(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;Lcom/rb/cahaya/raja/global/RecyclerItemClickListener$OnItemClickListener;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 73
    new-instance v2, Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Page_Adapter;

    invoke-direct {v2, v0, p0}, Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Page_Adapter;-><init>(Ljava/util/ArrayList;Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Minat_khusus_onclick;->adaptador:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 74
    iget-object v2, p0, Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Minat_khusus_onclick;->reciclador:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Minat_khusus_onclick;->adaptador:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 75
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 110
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Minat_khusus_onclick;->onBackPressed()V

    .line 112
    const/4 v0, 0x1

    .line 114
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
