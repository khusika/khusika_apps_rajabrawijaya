.class public Lcom/rb/cahaya/raja/Notification/Contact_Activity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "Contact_Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private img_fb:Landroid/widget/ImageView;

.field private img_ig:Landroid/widget/ImageView;

.field private img_line:Landroid/widget/ImageView;

.field private img_twitter:Landroid/widget/ImageView;

.field private img_web:Landroid/widget/ImageView;

.field private img_youtube:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 89
    :goto_0
    return-void

    .line 69
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "http://rajabrawijaya.ub.ac.id"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/rb/cahaya/raja/Notification/Contact_Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 72
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "https://www.facebook.com/groups/238258853208502/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/rb/cahaya/raja/Notification/Contact_Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 75
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "https://twitter.com/Maba_UBOfficial"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/rb/cahaya/raja/Notification/Contact_Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 78
    :pswitch_3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "https://www.instagram.com/maba_ubofficial/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/rb/cahaya/raja/Notification/Contact_Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 81
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/rb/cahaya/raja/Notification/Contact_Onclick;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/rb/cahaya/raja/Notification/Contact_Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 85
    .end local v0    # "i":Landroid/content/Intent;
    :pswitch_5
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "https://www.youtube.com/channel/UCpNS1e8i6pgkxqxbdIPnUNQ"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/rb/cahaya/raja/Notification/Contact_Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x7f0d007b
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 28
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v1, 0x7f04001a

    invoke-virtual {p0, v1}, Lcom/rb/cahaya/raja/Notification/Contact_Activity;->setContentView(I)V

    .line 31
    const v1, 0x7f0d006d

    invoke-virtual {p0, v1}, Lcom/rb/cahaya/raja/Notification/Contact_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 32
    .local v0, "toolbar":Landroid/support/v7/widget/Toolbar;
    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p0, v0}, Lcom/rb/cahaya/raja/Notification/Contact_Activity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 34
    invoke-virtual {p0}, Lcom/rb/cahaya/raja/Notification/Contact_Activity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const-string v2, "Contact"

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 35
    invoke-virtual {p0}, Lcom/rb/cahaya/raja/Notification/Contact_Activity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 36
    invoke-virtual {p0}, Lcom/rb/cahaya/raja/Notification/Contact_Activity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 39
    :cond_0
    const v1, 0x7f0d007f

    invoke-virtual {p0, v1}, Lcom/rb/cahaya/raja/Notification/Contact_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/rb/cahaya/raja/Notification/Contact_Activity;->img_web:Landroid/widget/ImageView;

    .line 40
    const v1, 0x7f0d007e

    invoke-virtual {p0, v1}, Lcom/rb/cahaya/raja/Notification/Contact_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/rb/cahaya/raja/Notification/Contact_Activity;->img_fb:Landroid/widget/ImageView;

    .line 41
    const v1, 0x7f0d007d

    invoke-virtual {p0, v1}, Lcom/rb/cahaya/raja/Notification/Contact_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/rb/cahaya/raja/Notification/Contact_Activity;->img_twitter:Landroid/widget/ImageView;

    .line 42
    const v1, 0x7f0d007b

    invoke-virtual {p0, v1}, Lcom/rb/cahaya/raja/Notification/Contact_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/rb/cahaya/raja/Notification/Contact_Activity;->img_ig:Landroid/widget/ImageView;

    .line 43
    const v1, 0x7f0d007c

    invoke-virtual {p0, v1}, Lcom/rb/cahaya/raja/Notification/Contact_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/rb/cahaya/raja/Notification/Contact_Activity;->img_line:Landroid/widget/ImageView;

    .line 44
    const v1, 0x7f0d0080

    invoke-virtual {p0, v1}, Lcom/rb/cahaya/raja/Notification/Contact_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/rb/cahaya/raja/Notification/Contact_Activity;->img_youtube:Landroid/widget/ImageView;

    .line 46
    iget-object v1, p0, Lcom/rb/cahaya/raja/Notification/Contact_Activity;->img_web:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object v1, p0, Lcom/rb/cahaya/raja/Notification/Contact_Activity;->img_fb:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object v1, p0, Lcom/rb/cahaya/raja/Notification/Contact_Activity;->img_twitter:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object v1, p0, Lcom/rb/cahaya/raja/Notification/Contact_Activity;->img_ig:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object v1, p0, Lcom/rb/cahaya/raja/Notification/Contact_Activity;->img_line:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v1, p0, Lcom/rb/cahaya/raja/Notification/Contact_Activity;->img_youtube:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 59
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/rb/cahaya/raja/Notification/Contact_Activity;->onBackPressed()V

    .line 61
    const/4 v0, 0x1

    .line 63
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
