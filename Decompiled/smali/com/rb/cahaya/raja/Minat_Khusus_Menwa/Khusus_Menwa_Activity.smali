.class public Lcom/rb/cahaya/raja/Minat_Khusus_Menwa/Khusus_Menwa_Activity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "Khusus_Menwa_Activity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 80
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    .line 81
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 20
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const v4, 0x7f040023

    invoke-virtual {p0, v4}, Lcom/rb/cahaya/raja/Minat_Khusus_Menwa/Khusus_Menwa_Activity;->setContentView(I)V

    .line 23
    const v4, 0x7f0d006d

    invoke-virtual {p0, v4}, Lcom/rb/cahaya/raja/Minat_Khusus_Menwa/Khusus_Menwa_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/Toolbar;

    .line 24
    .local v2, "toolbar":Landroid/support/v7/widget/Toolbar;
    if-eqz v2, :cond_0

    .line 25
    invoke-virtual {p0, v2}, Lcom/rb/cahaya/raja/Minat_Khusus_Menwa/Khusus_Menwa_Activity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 26
    invoke-virtual {p0}, Lcom/rb/cahaya/raja/Minat_Khusus_Menwa/Khusus_Menwa_Activity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v4

    const-string v5, "Menwa"

    invoke-virtual {v4, v5}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 27
    invoke-virtual {p0}, Lcom/rb/cahaya/raja/Minat_Khusus_Menwa/Khusus_Menwa_Activity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 28
    invoke-virtual {p0}, Lcom/rb/cahaya/raja/Minat_Khusus_Menwa/Khusus_Menwa_Activity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 34
    :cond_0
    const v4, 0x7f0d006f

    invoke-virtual {p0, v4}, Lcom/rb/cahaya/raja/Minat_Khusus_Menwa/Khusus_Menwa_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/TabLayout;

    .line 35
    .local v1, "tabLayout":Landroid/support/design/widget/TabLayout;
    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v4

    const-string v5, "Deskripsi"

    invoke-virtual {v4, v5}, Landroid/support/design/widget/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 36
    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v4

    const-string v5, "Prestasi"

    invoke-virtual {v4, v5}, Landroid/support/design/widget/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 37
    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v4

    const-string v5, "Pendaftaran"

    invoke-virtual {v4, v5}, Landroid/support/design/widget/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 38
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/support/design/widget/TabLayout;->setTabGravity(I)V

    .line 40
    const v4, 0x7f0d0070

    invoke-virtual {p0, v4}, Lcom/rb/cahaya/raja/Minat_Khusus_Menwa/Khusus_Menwa_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/ViewPager;

    .line 41
    .local v3, "viewPager":Landroid/support/v4/view/ViewPager;
    new-instance v0, Lcom/rb/cahaya/raja/Minat_Khusus_Menwa/PageAdapter;

    .line 42
    invoke-virtual {p0}, Lcom/rb/cahaya/raja/Minat_Khusus_Menwa/Khusus_Menwa_Activity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v5

    invoke-direct {v0, v4, v5}, Lcom/rb/cahaya/raja/Minat_Khusus_Menwa/PageAdapter;-><init>(Landroid/support/v4/app/FragmentManager;I)V

    .line 43
    .local v0, "adapter":Lcom/rb/cahaya/raja/Minat_Khusus_Menwa/PageAdapter;
    invoke-virtual {v3, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 44
    new-instance v4, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    invoke-direct {v4, v1}, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;-><init>(Landroid/support/design/widget/TabLayout;)V

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 45
    new-instance v4, Lcom/rb/cahaya/raja/Minat_Khusus_Menwa/Khusus_Menwa_Activity$1;

    invoke-direct {v4, p0, v3}, Lcom/rb/cahaya/raja/Minat_Khusus_Menwa/Khusus_Menwa_Activity$1;-><init>(Lcom/rb/cahaya/raja/Minat_Khusus_Menwa/Khusus_Menwa_Activity;Landroid/support/v4/view/ViewPager;)V

    invoke-virtual {v1, v4}, Landroid/support/design/widget/TabLayout;->setOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    .line 61
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/rb/cahaya/raja/Minat_Khusus_Menwa/Khusus_Menwa_Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 72
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/rb/cahaya/raja/Minat_Khusus_Menwa/Khusus_Menwa_Activity;->onBackPressed()V

    .line 74
    const/4 v0, 0x1

    .line 76
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
