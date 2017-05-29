.class Lcom/rb/cahaya/raja/global/RecyclerItemClickListener$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "RecyclerItemClickListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rb/cahaya/raja/global/RecyclerItemClickListener;-><init>(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;Lcom/rb/cahaya/raja/global/RecyclerItemClickListener$OnItemClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rb/cahaya/raja/global/RecyclerItemClickListener;

.field final synthetic val$recyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Lcom/rb/cahaya/raja/global/RecyclerItemClickListener;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rb/cahaya/raja/global/RecyclerItemClickListener;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/rb/cahaya/raja/global/RecyclerItemClickListener$1;->this$0:Lcom/rb/cahaya/raja/global/RecyclerItemClickListener;

    iput-object p2, p0, Lcom/rb/cahaya/raja/global/RecyclerItemClickListener$1;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 33
    iget-object v1, p0, Lcom/rb/cahaya/raja/global/RecyclerItemClickListener$1;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    .line 34
    .local v0, "childView":Landroid/view/View;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/rb/cahaya/raja/global/RecyclerItemClickListener$1;->this$0:Lcom/rb/cahaya/raja/global/RecyclerItemClickListener;

    # getter for: Lcom/rb/cahaya/raja/global/RecyclerItemClickListener;->mListener:Lcom/rb/cahaya/raja/global/RecyclerItemClickListener$OnItemClickListener;
    invoke-static {v1}, Lcom/rb/cahaya/raja/global/RecyclerItemClickListener;->access$000(Lcom/rb/cahaya/raja/global/RecyclerItemClickListener;)Lcom/rb/cahaya/raja/global/RecyclerItemClickListener$OnItemClickListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 35
    iget-object v1, p0, Lcom/rb/cahaya/raja/global/RecyclerItemClickListener$1;->this$0:Lcom/rb/cahaya/raja/global/RecyclerItemClickListener;

    # getter for: Lcom/rb/cahaya/raja/global/RecyclerItemClickListener;->mListener:Lcom/rb/cahaya/raja/global/RecyclerItemClickListener$OnItemClickListener;
    invoke-static {v1}, Lcom/rb/cahaya/raja/global/RecyclerItemClickListener;->access$000(Lcom/rb/cahaya/raja/global/RecyclerItemClickListener;)Lcom/rb/cahaya/raja/global/RecyclerItemClickListener$OnItemClickListener;

    move-result-object v1

    iget-object v2, p0, Lcom/rb/cahaya/raja/global/RecyclerItemClickListener$1;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/rb/cahaya/raja/global/RecyclerItemClickListener$OnItemClickListener;->onItemLongClicked(Landroid/view/View;I)V

    .line 37
    :cond_0
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 28
    const/4 v0, 0x1

    return v0
.end method
