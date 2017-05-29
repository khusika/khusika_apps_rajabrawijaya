.class Lcom/rb/cahaya/raja/Splash$1;
.super Ljava/lang/Thread;
.source "Splash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rb/cahaya/raja/Splash;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rb/cahaya/raja/Splash;


# direct methods
.method constructor <init>(Lcom/rb/cahaya/raja/Splash;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rb/cahaya/raja/Splash;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/rb/cahaya/raja/Splash$1;->this$0:Lcom/rb/cahaya/raja/Splash;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 21
    const-wide/16 v2, 0x7d0

    :try_start_0
    invoke-static {v2, v3}, Lcom/rb/cahaya/raja/Splash$1;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/rb/cahaya/raja/Splash$1;->this$0:Lcom/rb/cahaya/raja/Splash;

    const-class v3, Lcom/rb/cahaya/raja/MainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/rb/cahaya/raja/Splash$1;->this$0:Lcom/rb/cahaya/raja/Splash;

    invoke-virtual {v2, v1}, Lcom/rb/cahaya/raja/Splash;->startActivity(Landroid/content/Intent;)V

    .line 28
    :goto_0
    return-void

    .line 22
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 23
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/rb/cahaya/raja/Splash$1;->this$0:Lcom/rb/cahaya/raja/Splash;

    const-class v3, Lcom/rb/cahaya/raja/MainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/rb/cahaya/raja/Splash$1;->this$0:Lcom/rb/cahaya/raja/Splash;

    invoke-virtual {v2, v1}, Lcom/rb/cahaya/raja/Splash;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 25
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v2

    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/rb/cahaya/raja/Splash$1;->this$0:Lcom/rb/cahaya/raja/Splash;

    const-class v4, Lcom/rb/cahaya/raja/MainActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/rb/cahaya/raja/Splash$1;->this$0:Lcom/rb/cahaya/raja/Splash;

    invoke-virtual {v3, v1}, Lcom/rb/cahaya/raja/Splash;->startActivity(Landroid/content/Intent;)V

    .line 27
    throw v2
.end method
