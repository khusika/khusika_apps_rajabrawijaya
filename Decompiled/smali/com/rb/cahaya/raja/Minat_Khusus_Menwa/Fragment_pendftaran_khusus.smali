.class public Lcom/rb/cahaya/raja/Minat_Khusus_Menwa/Fragment_pendftaran_khusus;
.super Landroid/support/v4/app/Fragment;
.source "Fragment_pendftaran_khusus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rb/cahaya/raja/Minat_Khusus_Menwa/Fragment_pendftaran_khusus$MyBrowser;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 20
    const v2, 0x7f040058

    invoke-virtual {p1, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 22
    .local v0, "item":Landroid/view/View;
    const v2, 0x7f0d00a8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    .line 23
    .local v1, "url":Landroid/webkit/WebView;
    new-instance v2, Lcom/rb/cahaya/raja/Minat_Khusus_Menwa/Fragment_pendftaran_khusus$MyBrowser;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/rb/cahaya/raja/Minat_Khusus_Menwa/Fragment_pendftaran_khusus$MyBrowser;-><init>(Lcom/rb/cahaya/raja/Minat_Khusus_Menwa/Fragment_pendftaran_khusus;Lcom/rb/cahaya/raja/Minat_Khusus_Menwa/Fragment_pendftaran_khusus$1;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 24
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 25
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 26
    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 27
    const-string v2, "http://bit.ly/OPRECMW2016"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 29
    return-object v0
.end method
