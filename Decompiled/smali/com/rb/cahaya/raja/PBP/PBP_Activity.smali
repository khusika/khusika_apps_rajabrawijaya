.class public Lcom/rb/cahaya/raja/PBP/PBP_Activity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "PBP_Activity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 14
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    const v1, 0x7f040026

    invoke-virtual {p0, v1}, Lcom/rb/cahaya/raja/PBP/PBP_Activity;->setContentView(I)V

    .line 17
    const v1, 0x7f0d006d

    invoke-virtual {p0, v1}, Lcom/rb/cahaya/raja/PBP/PBP_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 18
    .local v0, "toolbar":Landroid/support/v7/widget/Toolbar;
    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {p0, v0}, Lcom/rb/cahaya/raja/PBP/PBP_Activity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 20
    invoke-virtual {p0}, Lcom/rb/cahaya/raja/PBP/PBP_Activity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const-string v2, "PBPK"

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 21
    invoke-virtual {p0}, Lcom/rb/cahaya/raja/PBP/PBP_Activity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 22
    invoke-virtual {p0}, Lcom/rb/cahaya/raja/PBP/PBP_Activity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 25
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
    invoke-virtual {p0}, Lcom/rb/cahaya/raja/PBP/PBP_Activity;->onBackPressed()V

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
