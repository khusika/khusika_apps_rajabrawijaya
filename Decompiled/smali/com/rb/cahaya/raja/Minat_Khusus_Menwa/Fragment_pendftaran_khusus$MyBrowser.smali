.class Lcom/rb/cahaya/raja/Minat_Khusus_Menwa/Fragment_pendftaran_khusus$MyBrowser;
.super Landroid/webkit/WebViewClient;
.source "Fragment_pendftaran_khusus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rb/cahaya/raja/Minat_Khusus_Menwa/Fragment_pendftaran_khusus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyBrowser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rb/cahaya/raja/Minat_Khusus_Menwa/Fragment_pendftaran_khusus;


# direct methods
.method private constructor <init>(Lcom/rb/cahaya/raja/Minat_Khusus_Menwa/Fragment_pendftaran_khusus;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/rb/cahaya/raja/Minat_Khusus_Menwa/Fragment_pendftaran_khusus$MyBrowser;->this$0:Lcom/rb/cahaya/raja/Minat_Khusus_Menwa/Fragment_pendftaran_khusus;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/rb/cahaya/raja/Minat_Khusus_Menwa/Fragment_pendftaran_khusus;Lcom/rb/cahaya/raja/Minat_Khusus_Menwa/Fragment_pendftaran_khusus$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/rb/cahaya/raja/Minat_Khusus_Menwa/Fragment_pendftaran_khusus;
    .param p2, "x1"    # Lcom/rb/cahaya/raja/Minat_Khusus_Menwa/Fragment_pendftaran_khusus$1;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/rb/cahaya/raja/Minat_Khusus_Menwa/Fragment_pendftaran_khusus$MyBrowser;-><init>(Lcom/rb/cahaya/raja/Minat_Khusus_Menwa/Fragment_pendftaran_khusus;)V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 36
    const/4 v0, 0x1

    return v0
.end method
