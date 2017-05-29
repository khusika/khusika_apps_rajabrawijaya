.class public Lcom/rb/cahaya/raja/OH_LKM/detail_minat;
.super Landroid/support/v7/app/AppCompatActivity;
.source "detail_minat.java"


# instance fields
.field public datadetail:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private db:Lcom/rb/cahaya/raja/global/DBAdapter;

.field public deskripsi:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/rb/cahaya/raja/OH_LKM/detail_minat;->deskripsi:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 107
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    .line 108
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 28
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v7, 0x7f04001b

    invoke-virtual {p0, v7}, Lcom/rb/cahaya/raja/OH_LKM/detail_minat;->setContentView(I)V

    .line 31
    new-instance v7, Lcom/rb/cahaya/raja/global/DBAdapter;

    invoke-direct {v7, p0}, Lcom/rb/cahaya/raja/global/DBAdapter;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/rb/cahaya/raja/OH_LKM/detail_minat;->db:Lcom/rb/cahaya/raja/global/DBAdapter;

    .line 34
    invoke-virtual {p0}, Lcom/rb/cahaya/raja/OH_LKM/detail_minat;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 35
    .local v1, "extras":Landroid/os/Bundle;
    const-string v3, ""

    .line 36
    .local v3, "kategori":Ljava/lang/String;
    const-string v2, ""

    .line 37
    .local v2, "idminat":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 38
    const-string v7, "kategori"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 39
    const-string v7, "id_minat"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 42
    :cond_0
    iget-object v7, p0, Lcom/rb/cahaya/raja/OH_LKM/detail_minat;->db:Lcom/rb/cahaya/raja/global/DBAdapter;

    invoke-virtual {v7, v2}, Lcom/rb/cahaya/raja/global/DBAdapter;->getDataDetail(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, p0, Lcom/rb/cahaya/raja/OH_LKM/detail_minat;->datadetail:Ljava/util/ArrayList;

    .line 44
    const v7, 0x7f0d006d

    invoke-virtual {p0, v7}, Lcom/rb/cahaya/raja/OH_LKM/detail_minat;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/Toolbar;

    .line 45
    .local v5, "toolbar":Landroid/support/v7/widget/Toolbar;
    if-eqz v5, :cond_1

    .line 46
    invoke-virtual {p0, v5}, Lcom/rb/cahaya/raja/OH_LKM/detail_minat;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 48
    const-string v7, "database"

    iget-object v8, p0, Lcom/rb/cahaya/raja/OH_LKM/detail_minat;->datadetail:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {p0}, Lcom/rb/cahaya/raja/OH_LKM/detail_minat;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v7

    iget-object v8, p0, Lcom/rb/cahaya/raja/OH_LKM/detail_minat;->datadetail:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 50
    const-string v7, "database"

    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-virtual {p0}, Lcom/rb/cahaya/raja/OH_LKM/detail_minat;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 53
    invoke-virtual {p0}, Lcom/rb/cahaya/raja/OH_LKM/detail_minat;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 56
    :cond_1
    const v7, 0x7f0d006f

    invoke-virtual {p0, v7}, Lcom/rb/cahaya/raja/OH_LKM/detail_minat;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/TabLayout;

    .line 57
    .local v4, "tabLayout":Landroid/support/design/widget/TabLayout;
    const-string v7, "1"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "2"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "3"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 58
    :cond_2
    invoke-virtual {v4}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v7

    const-string v8, "Deskripsi"

    invoke-virtual {v7, v8}, Landroid/support/design/widget/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 65
    :goto_0
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/support/design/widget/TabLayout;->setTabGravity(I)V

    .line 67
    const v7, 0x7f0d0070

    invoke-virtual {p0, v7}, Lcom/rb/cahaya/raja/OH_LKM/detail_minat;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/support/v4/view/ViewPager;

    .line 68
    .local v6, "viewPager":Landroid/support/v4/view/ViewPager;
    new-instance v0, Lcom/rb/cahaya/raja/OH_LKM/detail_pageAdapter;

    .line 69
    invoke-virtual {p0}, Lcom/rb/cahaya/raja/OH_LKM/detail_minat;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v7

    invoke-virtual {v4}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v8

    invoke-direct {v0, v7, v8}, Lcom/rb/cahaya/raja/OH_LKM/detail_pageAdapter;-><init>(Landroid/support/v4/app/FragmentManager;I)V

    .line 70
    .local v0, "adapter":Lcom/rb/cahaya/raja/OH_LKM/detail_pageAdapter;
    invoke-virtual {v6, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 71
    new-instance v7, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    invoke-direct {v7, v4}, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;-><init>(Landroid/support/design/widget/TabLayout;)V

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 72
    new-instance v7, Lcom/rb/cahaya/raja/OH_LKM/detail_minat$1;

    invoke-direct {v7, p0, v6}, Lcom/rb/cahaya/raja/OH_LKM/detail_minat$1;-><init>(Lcom/rb/cahaya/raja/OH_LKM/detail_minat;Landroid/support/v4/view/ViewPager;)V

    invoke-virtual {v4, v7}, Landroid/support/design/widget/TabLayout;->setOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    .line 88
    return-void

    .line 60
    .end local v0    # "adapter":Lcom/rb/cahaya/raja/OH_LKM/detail_pageAdapter;
    .end local v6    # "viewPager":Landroid/support/v4/view/ViewPager;
    :cond_3
    invoke-virtual {v4}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v7

    const-string v8, "Deskripsi"

    invoke-virtual {v7, v8}, Landroid/support/design/widget/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 61
    invoke-virtual {v4}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v7

    const-string v8, "Prestasi"

    invoke-virtual {v7, v8}, Landroid/support/design/widget/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 62
    invoke-virtual {v4}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v7

    const-string v8, "Pendaftaran"

    invoke-virtual {v7, v8}, Landroid/support/design/widget/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/rb/cahaya/raja/OH_LKM/detail_minat;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 99
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/rb/cahaya/raja/OH_LKM/detail_minat;->onBackPressed()V

    .line 101
    const/4 v0, 0x1

    .line 103
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
