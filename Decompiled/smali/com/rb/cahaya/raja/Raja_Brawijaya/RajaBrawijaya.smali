.class public Lcom/rb/cahaya/raja/Raja_Brawijaya/RajaBrawijaya;
.super Landroid/support/v7/app/AppCompatActivity;
.source "RajaBrawijaya.java"


# instance fields
.field toolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 38
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    .line 39
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 16
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const v1, 0x7f040028

    invoke-virtual {p0, v1}, Lcom/rb/cahaya/raja/Raja_Brawijaya/RajaBrawijaya;->setContentView(I)V

    .line 19
    const v1, 0x7f0d006d

    invoke-virtual {p0, v1}, Lcom/rb/cahaya/raja/Raja_Brawijaya/RajaBrawijaya;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 20
    .local v0, "toolbar":Landroid/support/v7/widget/Toolbar;
    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {p0, v0}, Lcom/rb/cahaya/raja/Raja_Brawijaya/RajaBrawijaya;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 22
    invoke-virtual {p0}, Lcom/rb/cahaya/raja/Raja_Brawijaya/RajaBrawijaya;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const-string v2, "Raja Brawijaya"

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 23
    invoke-virtual {p0}, Lcom/rb/cahaya/raja/Raja_Brawijaya/RajaBrawijaya;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 24
    invoke-virtual {p0}, Lcom/rb/cahaya/raja/Raja_Brawijaya/RajaBrawijaya;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 26
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 30
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/rb/cahaya/raja/Raja_Brawijaya/RajaBrawijaya;->onBackPressed()V

    .line 32
    const/4 v0, 0x1

    .line 34
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
