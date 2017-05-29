.class public Lcom/rb/cahaya/raja/Notification/About_Activity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "About_Activity.java"


# instance fields
.field private txt_versi:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    .line 22
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const v6, 0x7f040019

    invoke-virtual {p0, v6}, Lcom/rb/cahaya/raja/Notification/About_Activity;->setContentView(I)V

    .line 25
    const/4 v1, 0x0

    .line 27
    .local v1, "pInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Lcom/rb/cahaya/raja/Notification/About_Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {p0}, Lcom/rb/cahaya/raja/Notification/About_Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 31
    :goto_0
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 32
    .local v5, "version":Ljava/lang/String;
    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 34
    .local v4, "verCode":I
    const v6, 0x7f0d007a

    invoke-virtual {p0, v6}, Lcom/rb/cahaya/raja/Notification/About_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 35
    .local v3, "txt_versi":Landroid/widget/TextView;
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    const v6, 0x7f0d006d

    invoke-virtual {p0, v6}, Lcom/rb/cahaya/raja/Notification/About_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/Toolbar;

    .line 38
    .local v2, "toolbar":Landroid/support/v7/widget/Toolbar;
    if-eqz v2, :cond_0

    .line 39
    invoke-virtual {p0, v2}, Lcom/rb/cahaya/raja/Notification/About_Activity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 40
    invoke-virtual {p0}, Lcom/rb/cahaya/raja/Notification/About_Activity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v6

    const-string v7, "About"

    invoke-virtual {v6, v7}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 41
    invoke-virtual {p0}, Lcom/rb/cahaya/raja/Notification/About_Activity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 42
    invoke-virtual {p0}, Lcom/rb/cahaya/raja/Notification/About_Activity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 44
    :cond_0
    return-void

    .line 28
    .end local v2    # "toolbar":Landroid/support/v7/widget/Toolbar;
    .end local v3    # "txt_versi":Landroid/widget/TextView;
    .end local v4    # "verCode":I
    .end local v5    # "version":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 49
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/rb/cahaya/raja/Notification/About_Activity;->onBackPressed()V

    .line 51
    const/4 v0, 0x1

    .line 53
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
