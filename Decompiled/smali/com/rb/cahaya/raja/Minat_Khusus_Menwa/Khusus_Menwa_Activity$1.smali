.class Lcom/rb/cahaya/raja/Minat_Khusus_Menwa/Khusus_Menwa_Activity$1;
.super Ljava/lang/Object;
.source "Khusus_Menwa_Activity.java"

# interfaces
.implements Landroid/support/design/widget/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rb/cahaya/raja/Minat_Khusus_Menwa/Khusus_Menwa_Activity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rb/cahaya/raja/Minat_Khusus_Menwa/Khusus_Menwa_Activity;

.field final synthetic val$viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method constructor <init>(Lcom/rb/cahaya/raja/Minat_Khusus_Menwa/Khusus_Menwa_Activity;Landroid/support/v4/view/ViewPager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rb/cahaya/raja/Minat_Khusus_Menwa/Khusus_Menwa_Activity;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/rb/cahaya/raja/Minat_Khusus_Menwa/Khusus_Menwa_Activity$1;->this$0:Lcom/rb/cahaya/raja/Minat_Khusus_Menwa/Khusus_Menwa_Activity;

    iput-object p2, p0, Lcom/rb/cahaya/raja/Minat_Khusus_Menwa/Khusus_Menwa_Activity$1;->val$viewPager:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 59
    return-void
.end method

.method public onTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 2
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/rb/cahaya/raja/Minat_Khusus_Menwa/Khusus_Menwa_Activity$1;->val$viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 49
    return-void
.end method

.method public onTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 54
    return-void
.end method
