.class Lcom/rb/cahaya/raja/OH_LKM/Fragment_pendftaran_khusus$1;
.super Landroid/webkit/WebViewClient;
.source "Fragment_pendftaran_khusus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rb/cahaya/raja/OH_LKM/Fragment_pendftaran_khusus;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rb/cahaya/raja/OH_LKM/Fragment_pendftaran_khusus;

.field final synthetic val$spinner:Landroid/widget/ProgressBar;


# direct methods
.method constructor <init>(Lcom/rb/cahaya/raja/OH_LKM/Fragment_pendftaran_khusus;Landroid/widget/ProgressBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rb/cahaya/raja/OH_LKM/Fragment_pendftaran_khusus;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/rb/cahaya/raja/OH_LKM/Fragment_pendftaran_khusus$1;->this$0:Lcom/rb/cahaya/raja/OH_LKM/Fragment_pendftaran_khusus;

    iput-object p2, p0, Lcom/rb/cahaya/raja/OH_LKM/Fragment_pendftaran_khusus$1;->val$spinner:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/rb/cahaya/raja/OH_LKM/Fragment_pendftaran_khusus$1;->val$spinner:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 54
    return-void
.end method
