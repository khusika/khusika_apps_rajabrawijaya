.class Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter$1;
.super Ljava/lang/Object;
.source "list_page_adapter.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter;

.field final synthetic val$recyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter$1;->this$0:Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter;

    iput-object p2, p0, Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter$1;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 70
    iget-object v1, p0, Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter$1;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 73
    .local v0, "lm":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 74
    const/16 v1, 0x14

    if-ne p2, v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter$1;->this$0:Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter;

    const/4 v2, 0x1

    # invokes: Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter;->tryMoveSelection(Landroid/support/v7/widget/RecyclerView$LayoutManager;I)Z
    invoke-static {v1, v0, v2}, Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter;->access$000(Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter;Landroid/support/v7/widget/RecyclerView$LayoutManager;I)Z

    move-result v1

    .line 81
    :goto_0
    return v1

    .line 76
    :cond_0
    const/16 v1, 0x13

    if-ne p2, v1, :cond_1

    .line 77
    iget-object v1, p0, Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter$1;->this$0:Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter;

    const/4 v2, -0x1

    # invokes: Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter;->tryMoveSelection(Landroid/support/v7/widget/RecyclerView$LayoutManager;I)Z
    invoke-static {v1, v0, v2}, Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter;->access$000(Lcom/rb/cahaya/raja/OH_LKM/list_page_adapter;Landroid/support/v7/widget/RecyclerView$LayoutManager;I)Z

    move-result v1

    goto :goto_0

    .line 81
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
