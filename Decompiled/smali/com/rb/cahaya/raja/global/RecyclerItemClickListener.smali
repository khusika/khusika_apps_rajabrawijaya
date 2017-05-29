.class public Lcom/rb/cahaya/raja/global/RecyclerItemClickListener;
.super Ljava/lang/Object;
.source "RecyclerItemClickListener.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rb/cahaya/raja/global/RecyclerItemClickListener$OnItemClickListener;
    }
.end annotation


# instance fields
.field mGestureDetector:Landroid/view/GestureDetector;

.field private mListener:Lcom/rb/cahaya/raja/global/RecyclerItemClickListener$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;Lcom/rb/cahaya/raja/global/RecyclerItemClickListener$OnItemClickListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "listener"    # Lcom/rb/cahaya/raja/global/RecyclerItemClickListener$OnItemClickListener;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p3, p0, Lcom/rb/cahaya/raja/global/RecyclerItemClickListener;->mListener:Lcom/rb/cahaya/raja/global/RecyclerItemClickListener$OnItemClickListener;

    .line 25
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/rb/cahaya/raja/global/RecyclerItemClickListener$1;

    invoke-direct {v1, p0, p2}, Lcom/rb/cahaya/raja/global/RecyclerItemClickListener$1;-><init>(Lcom/rb/cahaya/raja/global/RecyclerItemClickListener;Landroid/support/v7/widget/RecyclerView;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/rb/cahaya/raja/global/RecyclerItemClickListener;->mGestureDetector:Landroid/view/GestureDetector;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/rb/cahaya/raja/global/RecyclerItemClickListener;)Lcom/rb/cahaya/raja/global/RecyclerItemClickListener$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/rb/cahaya/raja/global/RecyclerItemClickListener;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/rb/cahaya/raja/global/RecyclerItemClickListener;->mListener:Lcom/rb/cahaya/raja/global/RecyclerItemClickListener$OnItemClickListener;

    return-object v0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "view"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 43
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/support/v7/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    .line 44
    .local v0, "childView":Landroid/view/View;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/rb/cahaya/raja/global/RecyclerItemClickListener;->mListener:Lcom/rb/cahaya/raja/global/RecyclerItemClickListener$OnItemClickListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/rb/cahaya/raja/global/RecyclerItemClickListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    iget-object v1, p0, Lcom/rb/cahaya/raja/global/RecyclerItemClickListener;->mListener:Lcom/rb/cahaya/raja/global/RecyclerItemClickListener$OnItemClickListener;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/rb/cahaya/raja/global/RecyclerItemClickListener$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    .line 46
    const/4 v1, 0x1

    .line 48
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 60
    return-void
.end method

.method public onTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "view"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 55
    return-void
.end method
