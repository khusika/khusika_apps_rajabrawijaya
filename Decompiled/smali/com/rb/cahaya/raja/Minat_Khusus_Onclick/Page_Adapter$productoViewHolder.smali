.class public Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Page_Adapter$productoViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "Page_Adapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Page_Adapter;
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

.field final synthetic this$0:Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Page_Adapter;


# direct methods
.method public constructor <init>(Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Page_Adapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Page_Adapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Page_Adapter$productoViewHolder;->this$0:Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Page_Adapter;

    .line 119
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 121
    const v0, 0x7f0d0077

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Page_Adapter$productoViewHolder;->imageView:Landroid/widget/ImageView;

    .line 122
    const v0, 0x7f0d008a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Page_Adapter$productoViewHolder;->nombre:Landroid/widget/TextView;

    .line 123
    const v0, 0x7f0d008b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Page_Adapter$productoViewHolder;->precio:Landroid/widget/TextView;

    .line 124
    const v0, 0x7f0d0087

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Page_Adapter$productoViewHolder;->cardview:Landroid/support/v7/widget/CardView;

    .line 125
    const v0, 0x7f0d0088

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Page_Adapter$productoViewHolder;->cardli:Landroid/widget/LinearLayout;

    .line 127
    return-void
.end method
