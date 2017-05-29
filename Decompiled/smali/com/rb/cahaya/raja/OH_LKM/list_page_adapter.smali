.class public Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "list_page_adapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter$productoViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter$productoViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private act:Landroid/app/Activity;

.field private item:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Detail_item;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private recylerview:Landroid/support/v7/widget/RecyclerView;

.field private selectedItem:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/app/Activity;)V
    .locals 1
    .param p2, "act"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Detail_item;",
            ">;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "item":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Detail_item;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter;->selectedItem:I

    .line 36
    iput-object p1, p0, Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter;->item:Ljava/util/ArrayList;

    .line 37
    iput-object p2, p0, Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter;->act:Landroid/app/Activity;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter;Landroid/support/v7/widget/RecyclerView$LayoutManager;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter;
    .param p1, "x1"    # Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .param p2, "x2"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter;->tryMoveSelection(Landroid/support/v7/widget/RecyclerView$LayoutManager;I)Z

    move-result v0

    return v0
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 6
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 129
    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 130
    .local v2, "height":I
    iget v4, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 131
    .local v4, "width":I
    const/4 v3, 0x1

    .line 133
    .local v3, "inSampleSize":I
    if-gt v2, p2, :cond_0

    if-le v4, p1, :cond_1

    .line 135
    :cond_0
    div-int/lit8 v0, v2, 0x2

    .line 136
    .local v0, "halfHeight":I
    div-int/lit8 v1, v4, 0x2

    .line 140
    .local v1, "halfWidth":I
    :goto_0
    div-int v5, v0, v3

    if-le v5, p2, :cond_1

    div-int v5, v1, v3

    if-le v5, p1, :cond_1

    .line 142
    mul-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 146
    .end local v0    # "halfHeight":I
    .end local v1    # "halfWidth":I
    :cond_1
    return v3
.end method

.method public static decodeSampledBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I
    .param p2, "reqWidth"    # I
    .param p3, "reqHeight"    # I

    .prologue
    .line 153
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 154
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 155
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 158
    invoke-static {v0, p2, p3}, Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 161
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 162
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private tryMoveSelection(Landroid/support/v7/widget/RecyclerView$LayoutManager;I)Z
    .locals 2
    .param p1, "lm"    # Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .param p2, "direction"    # I

    .prologue
    .line 42
    iget v1, p0, Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter;->selectedItem:I

    add-int v0, v1, p2

    .line 45
    .local v0, "nextSelectItem":I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 46
    iget v1, p0, Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter;->selectedItem:I

    invoke-virtual {p0, v1}, Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter;->notifyItemChanged(I)V

    .line 47
    iput v0, p0, Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter;->selectedItem:I

    .line 48
    iget v1, p0, Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter;->selectedItem:I

    invoke-virtual {p0, v1}, Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter;->notifyItemChanged(I)V

    .line 49
    iget v1, p0, Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter;->selectedItem:I

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 50
    const/4 v1, 0x1

    .line 53
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter;->item:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 65
    iput-object p1, p0, Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter;->recylerview:Landroid/support/v7/widget/RecyclerView;

    .line 67
    new-instance v0, Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter$1;

    invoke-direct {v0, p0, p1}, Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter$1;-><init>(Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter;Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 84
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter$productoViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter;->onBindViewHolder(Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter$productoViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter$productoViewHolder;I)V
    .locals 4
    .param p1, "productoViewHolder"    # Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter$productoViewHolder;
    .param p2, "i"    # I

    .prologue
    const/16 v3, 0x64

    .line 88
    iget-object v1, p1, Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter$productoViewHolder;->itemView:Landroid/view/View;

    iget v0, p0, Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter;->selectedItem:I

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 89
    iget-object v1, p1, Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter$productoViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter;->act:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v0, p0, Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter;->item:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Detail_item;

    invoke-virtual {v0}, Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Detail_item;->getImage()I

    move-result v0

    invoke-static {v2, v0, v3, v3}, Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter;->decodeSampledBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 90
    iget-object v1, p1, Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter$productoViewHolder;->nombre:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter;->item:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Detail_item;

    invoke-virtual {v0}, Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Detail_item;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v1, p1, Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter$productoViewHolder;->precio:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter;->item:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Detail_item;

    invoke-virtual {v0}, Lcom/rb/cahaya/raja/Minat_Khusus_Onclick/Detail_item;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    return-void

    .line 88
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter$productoViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter$productoViewHolder;
    .locals 5
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "i"    # I

    .prologue
    .line 99
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040031

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 100
    .local v1, "v":Landroid/view/View;
    new-instance v0, Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter$productoViewHolder;

    invoke-direct {v0, p0, v1}, Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter$productoViewHolder;-><init>(Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter;Landroid/view/View;)V

    .line 101
    .local v0, "producto":Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter$productoViewHolder;
    return-object v0
.end method
