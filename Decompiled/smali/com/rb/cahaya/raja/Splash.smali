.class public Lcom/rb/cahaya/raja/Splash;
.super Landroid/support/v7/app/AppCompatActivity;
.source "Splash.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 13
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    const v2, 0x7f040029

    invoke-virtual {p0, v2}, Lcom/rb/cahaya/raja/Splash;->setContentView(I)V

    .line 16
    new-instance v0, Lcom/rb/cahaya/raja/global/DBAdapter;

    invoke-direct {v0, p0}, Lcom/rb/cahaya/raja/global/DBAdapter;-><init>(Landroid/content/Context;)V

    .line 18
    .local v0, "DB":Lcom/rb/cahaya/raja/global/DBAdapter;
    new-instance v1, Lcom/rb/cahaya/raja/Splash$1;

    invoke-direct {v1, p0}, Lcom/rb/cahaya/raja/Splash$1;-><init>(Lcom/rb/cahaya/raja/Splash;)V

    .line 30
    .local v1, "timerThread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 31
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 36
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 37
    invoke-virtual {p0}, Lcom/rb/cahaya/raja/Splash;->finish()V

    .line 38
    return-void
.end method
