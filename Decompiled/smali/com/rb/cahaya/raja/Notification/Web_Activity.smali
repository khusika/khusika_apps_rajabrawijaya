.class public Lcom/rb/cahaya/raja/Notification/Web_Activity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "Web_Activity.java"


# instance fields
.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 18
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const v0, 0x7f04002b

    invoke-virtual {p0, v0}, Lcom/rb/cahaya/raja/Notification/Web_Activity;->setContentView(I)V

    .line 21
    const v0, 0x7f0d0078

    invoke-virtual {p0, v0}, Lcom/rb/cahaya/raja/Notification/Web_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/rb/cahaya/raja/Notification/Web_Activity;->webView:Landroid/webkit/WebView;

    .line 22
    iget-object v0, p0, Lcom/rb/cahaya/raja/Notification/Web_Activity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 23
    iget-object v0, p0, Lcom/rb/cahaya/raja/Notification/Web_Activity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 24
    iget-object v0, p0, Lcom/rb/cahaya/raja/Notification/Web_Activity;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 25
    iget-object v0, p0, Lcom/rb/cahaya/raja/Notification/Web_Activity;->webView:Landroid/webkit/WebView;

    const-string v1, "http://www.google.com"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 27
    return-void
.end method
