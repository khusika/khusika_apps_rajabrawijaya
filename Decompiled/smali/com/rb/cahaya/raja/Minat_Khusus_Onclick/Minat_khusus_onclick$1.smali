.class Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Minat_khusus_onclick$1;
.super Ljava/lang/Object;
.source "Minat_khusus_onclick.java"

# interfaces
.implements Lcom/rb/cahaya/raja/global/RecyclerItemClickListener$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Minat_khusus_onclick;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Minat_khusus_onclick;


# direct methods
.method constructor <init>(Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Minat_khusus_onclick;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Minat_khusus_onclick;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Minat_khusus_onclick$1;->this$0:Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Minat_khusus_onclick;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 60
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Minat_khusus_onclick$1;->this$0:Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Minat_khusus_onclick;

    const-class v2, Lcom/rb/cahaya/raja/Minat_Khusus_Menwa/Khusus_Menwa_Activity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Minat_khusus_onclick$1;->this$0:Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Minat_khusus_onclick;

    invoke-virtual {v1, v0}, Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Minat_khusus_onclick;->startActivity(Landroid/content/Intent;)V

    .line 64
    return-void
.end method

.method public onItemLongClicked(Landroid/view/View;I)V
    .locals 0
    .param p1, "childView"    # Landroid/view/View;
    .param p2, "childAdapterPosition"    # I

    .prologue
    .line 69
    return-void
.end method
