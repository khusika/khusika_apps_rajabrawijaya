.class public Lcom/rb/cahaya/raja/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"

# interfaces
.implements Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field oh_lkm:Landroid/widget/LinearLayout;

.field pbp:Landroid/widget/LinearLayout;

.field pk2mu:Landroid/widget/LinearLayout;

.field rajabrawijaya:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    const v2, 0x800003

    .line 103
    const v1, 0x7f0d0073

    invoke-virtual {p0, v1}, Lcom/rb/cahaya/raja/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    .line 104
    .local v0, "drawer":Landroid/support/v4/widget/DrawerLayout;
    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    .line 109
    :goto_0
    return-void

    .line 107
    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 99
    :goto_0
    return-void

    .line 83
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/rb/cahaya/raja/Raja_Brawijaya/RajaBrawijaya;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/rb/cahaya/raja/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 87
    .end local v0    # "i":Landroid/content/Intent;
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/rb/cahaya/raja/PBP/PBP_Activity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    .restart local v0    # "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/rb/cahaya/raja/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 91
    .end local v0    # "i":Landroid/content/Intent;
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/rb/cahaya/raja/PK2MU/PK2MU_Activity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    .restart local v0    # "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/rb/cahaya/raja/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 95
    .end local v0    # "i":Landroid/content/Intent;
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/rb/cahaya/raja/OH_LKM/OH_LKM_Activity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    .restart local v0    # "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/rb/cahaya/raja/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x7f0d0083
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 39
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v1, 0x7f040021

    invoke-virtual {p0, v1}, Lcom/rb/cahaya/raja/MainActivity;->setContentView(I)V

    .line 42
    new-instance v6, Lcom/rb/cahaya/raja/Sliding_Image_Adapter;

    invoke-direct {v6, p0}, Lcom/rb/cahaya/raja/Sliding_Image_Adapter;-><init>(Landroid/content/Context;)V

    .line 43
    .local v6, "adapterView":Lcom/rb/cahaya/raja/Sliding_Image_Adapter;
    const v1, 0x7f0d0081

    invoke-virtual {p0, v1}, Lcom/rb/cahaya/raja/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/support/v4/view/ViewPager;

    .line 44
    .local v10, "viewpager":Landroid/support/v4/view/ViewPager;
    const v1, 0x7f0d0082

    invoke-virtual {p0, v1}, Lcom/rb/cahaya/raja/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lme/relex/circleindicator/CircleIndicator;

    .line 45
    .local v8, "indicator":Lme/relex/circleindicator/CircleIndicator;
    invoke-virtual {v10, v6}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 46
    invoke-virtual {v8, v10}, Lme/relex/circleindicator/CircleIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 48
    const v1, 0x7f0d006d

    invoke-virtual {p0, v1}, Lcom/rb/cahaya/raja/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/Toolbar;

    .line 49
    .local v3, "toolbar":Landroid/support/v7/widget/Toolbar;
    if-eqz v3, :cond_0

    .line 50
    invoke-virtual {p0, v3}, Lcom/rb/cahaya/raja/MainActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 51
    invoke-virtual {p0}, Lcom/rb/cahaya/raja/MainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const-string v4, "Raja Brawijaya"

    invoke-virtual {v1, v4}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 52
    invoke-virtual {p0}, Lcom/rb/cahaya/raja/MainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 53
    invoke-virtual {p0}, Lcom/rb/cahaya/raja/MainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 56
    :cond_0
    new-instance v7, Lcom/rb/cahaya/raja/global/DBAdapter;

    invoke-direct {v7, p0}, Lcom/rb/cahaya/raja/global/DBAdapter;-><init>(Landroid/content/Context;)V

    .line 57
    .local v7, "db":Lcom/rb/cahaya/raja/global/DBAdapter;
    const-string v1, "Mainact"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "kategori"

    invoke-virtual {v7, v5}, Lcom/rb/cahaya/raja/global/DBAdapter;->getData(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const v1, 0x7f0d0073

    invoke-virtual {p0, v1}, Lcom/rb/cahaya/raja/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/DrawerLayout;

    .line 60
    .local v2, "drawer":Landroid/support/v4/widget/DrawerLayout;
    new-instance v0, Landroid/support/v7/app/ActionBarDrawerToggle;

    const v4, 0x7f07003b

    const v5, 0x7f07003a

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;II)V

    .line 62
    .local v0, "toggle":Landroid/support/v7/app/ActionBarDrawerToggle;
    invoke-virtual {v2, v0}, Landroid/support/v4/widget/DrawerLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 63
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->syncState()V

    .line 65
    const v1, 0x7f0d0074

    invoke-virtual {p0, v1}, Lcom/rb/cahaya/raja/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/support/design/widget/NavigationView;

    .line 66
    .local v9, "navigationView":Landroid/support/design/widget/NavigationView;
    invoke-virtual {v9, p0}, Landroid/support/design/widget/NavigationView;->setNavigationItemSelectedListener(Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;)V

    .line 68
    const v1, 0x7f0d0083

    invoke-virtual {p0, v1}, Lcom/rb/cahaya/raja/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/rb/cahaya/raja/MainActivity;->rajabrawijaya:Landroid/widget/LinearLayout;

    .line 69
    const v1, 0x7f0d0085

    invoke-virtual {p0, v1}, Lcom/rb/cahaya/raja/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/rb/cahaya/raja/MainActivity;->pbp:Landroid/widget/LinearLayout;

    .line 70
    const v1, 0x7f0d0084

    invoke-virtual {p0, v1}, Lcom/rb/cahaya/raja/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/rb/cahaya/raja/MainActivity;->pk2mu:Landroid/widget/LinearLayout;

    .line 71
    const v1, 0x7f0d0086

    invoke-virtual {p0, v1}, Lcom/rb/cahaya/raja/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/rb/cahaya/raja/MainActivity;->oh_lkm:Landroid/widget/LinearLayout;

    .line 73
    iget-object v1, p0, Lcom/rb/cahaya/raja/MainActivity;->rajabrawijaya:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v1, p0, Lcom/rb/cahaya/raja/MainActivity;->pbp:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v1, p0, Lcom/rb/cahaya/raja/MainActivity;->pk2mu:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v1, p0, Lcom/rb/cahaya/raja/MainActivity;->oh_lkm:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/rb/cahaya/raja/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 138
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 140
    .local v1, "id":I
    const v2, 0x7f0d00be

    if-ne v1, v2, :cond_1

    .line 150
    :cond_0
    :goto_0
    const v2, 0x7f0d0073

    invoke-virtual {p0, v2}, Lcom/rb/cahaya/raja/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    .line 151
    .local v0, "drawer":Landroid/support/v4/widget/DrawerLayout;
    const v2, 0x800003

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    .line 152
    const/4 v2, 0x1

    return v2

    .line 142
    .end local v0    # "drawer":Landroid/support/v4/widget/DrawerLayout;
    :cond_1
    const v2, 0x7f0d00bf

    if-ne v1, v2, :cond_2

    .line 143
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/rb/cahaya/raja/Notification/Contact_Activity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/rb/cahaya/raja/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 144
    :cond_2
    const v2, 0x7f0d00c0

    if-ne v1, v2, :cond_3

    .line 145
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/rb/cahaya/raja/Notification/Team_Activity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/rb/cahaya/raja/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 146
    :cond_3
    const v2, 0x7f0d00c1

    if-ne v1, v2, :cond_0

    .line 147
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/rb/cahaya/raja/Notification/About_Activity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/rb/cahaya/raja/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
