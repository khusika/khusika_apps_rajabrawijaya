.class public Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter$productoViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "list_page_adapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "productoViewHolder"
.end annotation


# instance fields
.field public cardli:Landroid/widget/LinearLayout;

.field public cardview:Landroid/support/v7/widget/CardView;

.field public imageView:Landroid/widget/ImageView;

.field public nombre:Landroid/widget/TextView;

.field public precio:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter;


# direct methods
.method public constructor <init>(Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter$productoViewHolder;->this$0:Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter;

    .line 113
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 115
    const v0, 0x7f0d0077

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter$productoViewHolder;->imageView:Landroid/widget/ImageView;

    .line 116
    const v0, 0x7f0d008a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter$productoViewHolder;->nombre:Landroid/widget/TextView;

    .line 117
    const v0, 0x7f0d008b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter$productoViewHolder;->precio:Landroid/widget/TextView;

    .line 118
    const v0, 0x7f0d0087

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter$productoViewHolder;->cardview:Landroid/support/v7/widget/CardView;

    .line 119
    const v0, 0x7f0d0088

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter$productoViewHolder;->cardli:Landroid/widget/LinearLayout;

    .line 121
    return-void
.end method
