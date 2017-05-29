.class public Lcom/rb/cahaya/raja/OH_LKM/list_pilihan_minat;
.super Landroid/support/v7/app/AppCompatActivity;
.source "list_pilihan_minat.java"


# instance fields
.field private Imanager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private adaptador:Landroid/support/v7/widget/RecyclerView$Adapter;

.field db:Lcom/rb/cahaya/raja/global/DBAdapter;

.field idminat:Ljava/lang/String;

.field kategori:Ljava/lang/String;

.field mProductList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Detail_item;",
            ">;"
        }
    .end annotation
.end field

.field private reciclador:Landroid/support/v7/widget/RecyclerView;

.field tittle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/rb/cahaya/raja/OH_LKM/list_pilihan_minat;->kategori:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/rb/cahaya/raja/OH_LKM/list_pilihan_minat;->tittle:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/rb/cahaya/raja/OH_LKM/list_pilihan_minat;->idminat:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 161
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    .line 162
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v9, 0x7f040020

    invoke-virtual {p0, v9}, Lcom/rb/cahaya/raja/OH_LKM/list_pilihan_minat;->setContentView(I)V

    .line 42
    new-instance v9, Lcom/rb/cahaya/raja/global/DBAdapter;

    invoke-direct {v9, p0}, Lcom/rb/cahaya/raja/global/DBAdapter;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/rb/cahaya/raja/OH_LKM/list_pilihan_minat;->db:Lcom/rb/cahaya/raja/global/DBAdapter;

    .line 45
    invoke-virtual {p0}, Lcom/rb/cahaya/raja/OH_LKM/list_pilihan_minat;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 46
    .local v2, "extras":Landroid/os/Bundle;
    const-string v5, ""

    .line 47
    .local v5, "idminat":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 48
    const-string v9, "kategori"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/rb/cahaya/raja/OH_LKM/list_pilihan_minat;->kategori:Ljava/lang/String;

    .line 49
    const-string v9, "id_minat"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 50
    const-string v9, "tittle"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/rb/cahaya/raja/OH_LKM/list_pilihan_minat;->tittle:Ljava/lang/String;

    .line 51
    const-string v9, "detailminat"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/rb/cahaya/raja/OH_LKM/list_pilihan_minat;->kategori:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":1:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_0
    iget-object v9, p0, Lcom/rb/cahaya/raja/OH_LKM/list_pilihan_minat;->db:Lcom/rb/cahaya/raja/global/DBAdapter;

    iget-object v10, p0, Lcom/rb/cahaya/raja/OH_LKM/list_pilihan_minat;->kategori:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/rb/cahaya/raja/global/DBAdapter;->getData(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 57
    .local v0, "data_db_kategori":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/Object;>;>;"
    const v9, 0x7f0d006d

    invoke-virtual {p0, v9}, Lcom/rb/cahaya/raja/OH_LKM/list_pilihan_minat;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/Toolbar;

    .line 58
    .local v8, "toolbar":Landroid/support/v7/widget/Toolbar;
    if-eqz v8, :cond_1

    .line 59
    invoke-virtual {p0, v8}, Lcom/rb/cahaya/raja/OH_LKM/list_pilihan_minat;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 60
    invoke-virtual {p0}, Lcom/rb/cahaya/raja/OH_LKM/list_pilihan_minat;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v9

    iget-object v10, p0, Lcom/rb/cahaya/raja/OH_LKM/list_pilihan_minat;->tittle:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {p0}, Lcom/rb/cahaya/raja/OH_LKM/list_pilihan_minat;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 62
    invoke-virtual {p0}, Lcom/rb/cahaya/raja/OH_LKM/list_pilihan_minat;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 69
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/rb/cahaya/raja/OH_LKM/list_pilihan_minat;->mProductList:Ljava/util/ArrayList;

    .line 72
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 73
    .local v6, "jumlahperulangan":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v6, :cond_2

    .line 74
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 79
    .local v1, "dataminat_db":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x4

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 81
    .local v7, "nama_gmbar":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/rb/cahaya/raja/OH_LKM/list_pilihan_minat;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string v10, "drawable"

    invoke-virtual {p0}, Lcom/rb/cahaya/raja/OH_LKM/list_pilihan_minat;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v7, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 85
    .local v4, "id":I
    iget-object v9, p0, Lcom/rb/cahaya/raja/OH_LKM/list_pilihan_minat;->mProductList:Ljava/util/ArrayList;

    new-instance v10, Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Detail_item;

    const/4 v11, 0x0

    .line 86
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x2

    .line 88
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x3

    .line 89
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v10, v11, v4, v12, v13}, Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Detail_item;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 94
    .end local v1    # "dataminat_db":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v4    # "id":I
    .end local v7    # "nama_gmbar":Ljava/lang/String;
    :cond_2
    const v9, 0x7f0d0071

    invoke-virtual {p0, v9}, Lcom/rb/cahaya/raja/OH_LKM/list_pilihan_minat;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/RecyclerView;

    iput-object v9, p0, Lcom/rb/cahaya/raja/OH_LKM/list_pilihan_minat;->reciclador:Landroid/support/v7/widget/RecyclerView;

    .line 95
    new-instance v9, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-direct {v9, p0, v10, v11}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v9, p0, Lcom/rb/cahaya/raja/OH_LKM/list_pilihan_minat;->Imanager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 96
    iget-object v9, p0, Lcom/rb/cahaya/raja/OH_LKM/list_pilihan_minat;->reciclador:Landroid/support/v7/widget/RecyclerView;

    iget-object v10, p0, Lcom/rb/cahaya/raja/OH_LKM/list_pilihan_minat;->Imanager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 97
    iget-object v9, p0, Lcom/rb/cahaya/raja/OH_LKM/list_pilihan_minat;->reciclador:Landroid/support/v7/widget/RecyclerView;

    new-instance v10, Lcom/rb/cahaya/raja/global/RecyclerItemClickListener;

    iget-object v11, p0, Lcom/rb/cahaya/raja/OH_LKM/list_pilihan_minat;->reciclador:Landroid/support/v7/widget/RecyclerView;

    new-instance v12, Lcom/rb/cahaya/raja/OH_LKM/list_pilihan_minat$1;

    invoke-direct {v12, p0}, Lcom/rb/cahaya/raja/OH_LKM/list_pilihan_minat$1;-><init>(Lcom/rb/cahaya/raja/OH_LKM/list_pilihan_minat;)V

    invoke-direct {v10, p0, v11, v12}, Lcom/rb/cahaya/raja/global/RecyclerItemClickListener;-><init>(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;Lcom/rb/cahaya/raja/global/RecyclerItemClickListener$OnItemClickListener;)V

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 116
    new-instance v9, Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Page_Adapter;

    iget-object v10, p0, Lcom/rb/cahaya/raja/OH_LKM/list_pilihan_minat;->mProductList:Ljava/util/ArrayList;

    invoke-direct {v9, v10, p0}, Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Page_Adapter;-><init>(Ljava/util/ArrayList;Landroid/app/Activity;)V

    iput-object v9, p0, Lcom/rb/cahaya/raja/OH_LKM/list_pilihan_minat;->adaptador:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 117
    iget-object v9, p0, Lcom/rb/cahaya/raja/OH_LKM/list_pilihan_minat;->reciclador:Landroid/support/v7/widget/RecyclerView;

    iget-object v10, p0, Lcom/rb/cahaya/raja/OH_LKM/list_pilihan_minat;->adaptador:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 118
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 153
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/rb/cahaya/raja/OH_LKM/list_pilihan_minat;->onBackPressed()V

    .line 155
    const/4 v0, 0x1

    .line 157
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
