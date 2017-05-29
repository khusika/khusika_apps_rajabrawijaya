.class public Lcom/rb/cahaya/raja/OH_LKM/Fragment_pendftaran_khusus;
.super Landroid/support/v4/app/Fragment;
.source "Fragment_pendftaran_khusus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rb/cahaya/raja/OH_LKM/Fragment_pendftaran_khusus$MyBrowser;
    }
.end annotation


# instance fields
.field private final PAGE_REDIRECTED:I

.field private final PAGE_STARTED:I

.field public ProgressBar:Landroid/view/View;

.field public progressContainer:Landroid/view/View;

.field private tv_alert:Landroid/widget/TextView;

.field private webViewPreviousState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lcom/rb/cahaya/raja/OH_LKM/Fragment_pendftaran_khusus;->PAGE_STARTED:I

    .line 28
    const/4 v0, 0x2

    iput v0, p0, Lcom/rb/cahaya/raja/OH_LKM/Fragment_pendftaran_khusus;->PAGE_REDIRECTED:I

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 32
    const v6, 0x7f040044

    invoke-virtual {p1, v6, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 34
    .local v1, "item":Landroid/view/View;
    const v6, 0x7f0d00aa

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 35
    .local v2, "spinner":Landroid/widget/ProgressBar;
    const v6, 0x7f0d00ab

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 37
    .local v3, "tv_alert":Landroid/widget/TextView;
    const v6, 0x7f0d00a8

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/webkit/WebView;

    .line 38
    .local v4, "url":Landroid/webkit/WebView;
    new-instance v6, Lcom/rb/cahaya/raja/OH_LKM/Fragment_pendftaran_khusus$MyBrowser;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/rb/cahaya/raja/OH_LKM/Fragment_pendftaran_khusus$MyBrowser;-><init>(Lcom/rb/cahaya/raja/OH_LKM/Fragment_pendftaran_khusus;Lcom/rb/cahaya/raja/OH_LKM/Fragment_pendftaran_khusus$1;)V

    invoke-virtual {v4, v6}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 39
    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 40
    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 41
    invoke-virtual {v4, v8}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 42
    invoke-virtual {v4, v8}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 43
    invoke-virtual {v4}, Landroid/webkit/WebView;->requestFocusFromTouch()Z

    .line 44
    invoke-virtual {v4, v8}, Landroid/webkit/WebView;->setScrollContainer(Z)V

    .line 47
    new-instance v6, Lcom/rb/cahaya/raja/OH_LKM/Fragment_pendftaran_khusus$1;

    invoke-direct {v6, p0, v2}, Lcom/rb/cahaya/raja/OH_LKM/Fragment_pendftaran_khusus$1;-><init>(Lcom/rb/cahaya/raja/OH_LKM/Fragment_pendftaran_khusus;Landroid/widget/ProgressBar;)V

    invoke-virtual {v4, v6}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 56
    invoke-virtual {p0}, Lcom/rb/cahaya/raja/OH_LKM/Fragment_pendftaran_khusus;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    check-cast v6, Lcom/rb/cahaya/raja/OH_LKM/detail_minat;

    iget-object v0, v6, Lcom/rb/cahaya/raja/OH_LKM/detail_minat;->datadetail:Ljava/util/ArrayList;

    .line 58
    .local v0, "datamaster":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v6, 0x7

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 59
    .local v5, "urldaftar":Ljava/lang/String;
    const-string v6, "logpendaftaran"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "::"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 63
    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    :goto_0
    return-object v1

    .line 66
    :cond_0
    invoke-virtual {v2, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 67
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
