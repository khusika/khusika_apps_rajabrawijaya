.class Lcom/rb/cahaya/raja/OH_LKM/list_pilihan_minat$1;
.super Ljava/lang/Object;
.source "list_pilihan_minat.java"

# interfaces
.implements Lcom/rb/cahaya/raja/global/RecyclerItemClickListener$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rb/cahaya/raja/OH_LKM/list_pilihan_minat;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rb/cahaya/raja/OH_LKM/list_pilihan_minat;


# direct methods
.method constructor <init>(Lcom/rb/cahaya/raja/OH_LKM/list_pilihan_minat;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rb/cahaya/raja/OH_LKM/list_pilihan_minat;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/rb/cahaya/raja/OH_LKM/list_pilihan_minat$1;->this$0:Lcom/rb/cahaya/raja/OH_LKM/list_pilihan_minat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 101
    const-string v2, "detailminat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/rb/cahaya/raja/OH_LKM/list_pilihan_minat$1;->this$0:Lcom/rb/cahaya/raja/OH_LKM/list_pilihan_minat;

    iget-object v3, v3, Lcom/rb/cahaya/raja/OH_LKM/list_pilihan_minat;->kategori:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":1:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/rb/cahaya/raja/OH_LKM/list_pilihan_minat$1;->this$0:Lcom/rb/cahaya/raja/OH_LKM/list_pilihan_minat;

    iget-object v1, v1, Lcom/rb/cahaya/raja/OH_LKM/list_pilihan_minat;->mProductList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Detail_item;

    invoke-virtual {v1}, Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Detail_item;->getId()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/rb/cahaya/raja/OH_LKM/list_pilihan_minat$1;->this$0:Lcom/rb/cahaya/raja/OH_LKM/list_pilihan_minat;

    const-class v2, Lcom/rb/cahaya/raja/OH_LKM/detail_minat;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "kategori"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/rb/cahaya/raja/OH_LKM/list_pilihan_minat$1;->this$0:Lcom/rb/cahaya/raja/OH_LKM/list_pilihan_minat;

    iget-object v3, v3, Lcom/rb/cahaya/raja/OH_LKM/list_pilihan_minat;->kategori:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const-string v2, "id_minat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/rb/cahaya/raja/OH_LKM/list_pilihan_minat$1;->this$0:Lcom/rb/cahaya/raja/OH_LKM/list_pilihan_minat;

    iget-object v1, v1, Lcom/rb/cahaya/raja/OH_LKM/list_pilihan_minat;->mProductList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Detail_item;

    invoke-virtual {v1}, Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Detail_item;->getId()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    iget-object v1, p0, Lcom/rb/cahaya/raja/OH_LKM/list_pilihan_minat$1;->this$0:Lcom/rb/cahaya/raja/OH_LKM/list_pilihan_minat;

    invoke-virtual {v1, v0}, Lcom/rb/cahaya/raja/OH_LKM/list_pilihan_minat;->startActivity(Landroid/content/Intent;)V

    .line 107
    return-void
.end method

.method public onItemLongClicked(Landroid/view/View;I)V
    .locals 0
    .param p1, "childView"    # Landroid/view/View;
    .param p2, "childAdapterPosition"    # I

    .prologue
    .line 112
    return-void
.end method
