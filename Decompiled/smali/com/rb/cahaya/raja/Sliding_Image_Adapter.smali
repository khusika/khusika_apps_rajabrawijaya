.class public Lcom/rb/cahaya/raja/Sliding_Image_Adapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "Sliding_Image_Adapter.java"


# instance fields
.field public currentimageindex:I

.field mContext:Landroid/content/Context;

.field private sliderImagesId:[I

.field slidingimage:Landroid/widget/ImageView;

.field task:Ljava/util/TimerTask;

.field timer:Ljava/util/Timer;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/rb/cahaya/raja/Sliding_Image_Adapter;->currentimageindex:I

    .line 34
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/rb/cahaya/raja/Sliding_Image_Adapter;->sliderImagesId:[I

    .line 26
    iput-object p1, p0, Lcom/rb/cahaya/raja/Sliding_Image_Adapter;->mContext:Landroid/content/Context;

    .line 27
    return-void

    .line 34
    nop

    :array_0
    .array-data 4
        0x7f0200d7
        0x7f0200db
        0x7f0200d8
        0x7f0200d9
    .end array-data
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "i"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 54
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "container":Landroid/view/ViewGroup;
    check-cast p3, Landroid/widget/ImageView;

    .end local p3    # "obj":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 55
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/rb/cahaya/raja/Sliding_Image_Adapter;->sliderImagesId:[I

    array-length v0, v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "i"    # I

    .prologue
    .line 45
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/rb/cahaya/raja/Sliding_Image_Adapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 46
    .local v0, "mImageView":Landroid/widget/ImageView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 47
    iget-object v1, p0, Lcom/rb/cahaya/raja/Sliding_Image_Adapter;->sliderImagesId:[I

    aget v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 48
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "container":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 49
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 40
    check-cast p2, Landroid/widget/ImageView;

    .end local p2    # "obj":Ljava/lang/Object;
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
