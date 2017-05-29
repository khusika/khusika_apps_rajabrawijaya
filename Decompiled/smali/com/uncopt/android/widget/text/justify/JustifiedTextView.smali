.class public Lcom/uncopt/android/widget/text/justify/JustifiedTextView;
.super Landroid/widget/TextView;
.source "JustifiedTextView.java"

# interfaces
.implements Lcom/uncopt/android/widget/text/justify/Justify$Justified;


# static fields
.field private static final MAX_SPANS:I = 0x200


# instance fields
.field private mFakeBold:Z

.field private mMeasuring:Z

.field private mSpanEnds:[I

.field private mSpanStarts:[I

.field private mSpans:[Lcom/uncopt/android/widget/text/justify/Justify$ScaleSpan;

.field private mTextScaleX:F

.field private mTextSize:F

.field private mTypeface:Landroid/graphics/Typeface;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lcom/uncopt/android/widget/text/justify/NotNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x200

    const/4 v1, 0x0

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 110
    iput-boolean v1, p0, Lcom/uncopt/android/widget/text/justify/JustifiedTextView;->mMeasuring:Z

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uncopt/android/widget/text/justify/JustifiedTextView;->mTypeface:Landroid/graphics/Typeface;

    .line 113
    iput v3, p0, Lcom/uncopt/android/widget/text/justify/JustifiedTextView;->mTextSize:F

    .line 114
    iput v3, p0, Lcom/uncopt/android/widget/text/justify/JustifiedTextView;->mTextScaleX:F

    .line 115
    iput-boolean v1, p0, Lcom/uncopt/android/widget/text/justify/JustifiedTextView;->mFakeBold:Z

    .line 116
    iput v1, p0, Lcom/uncopt/android/widget/text/justify/JustifiedTextView;->mWidth:I

    .line 118
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/uncopt/android/widget/text/justify/JustifiedTextView;->mSpanStarts:[I

    .line 119
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/uncopt/android/widget/text/justify/JustifiedTextView;->mSpanEnds:[I

    .line 120
    new-array v0, v2, [Lcom/uncopt/android/widget/text/justify/Justify$ScaleSpan;

    iput-object v0, p0, Lcom/uncopt/android/widget/text/justify/JustifiedTextView;->mSpans:[Lcom/uncopt/android/widget/text/justify/Justify$ScaleSpan;

    .line 37
    new-instance v0, Landroid/text/method/LinkMovementMethod;

    invoke-direct {v0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    invoke-super {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lcom/uncopt/android/widget/text/justify/NotNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x200

    const/4 v1, 0x0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 110
    iput-boolean v1, p0, Lcom/uncopt/android/widget/text/justify/JustifiedTextView;->mMeasuring:Z

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uncopt/android/widget/text/justify/JustifiedTextView;->mTypeface:Landroid/graphics/Typeface;

    .line 113
    iput v3, p0, Lcom/uncopt/android/widget/text/justify/JustifiedTextView;->mTextSize:F

    .line 114
    iput v3, p0, Lcom/uncopt/android/widget/text/justify/JustifiedTextView;->mTextScaleX:F

    .line 115
    iput-boolean v1, p0, Lcom/uncopt/android/widget/text/justify/JustifiedTextView;->mFakeBold:Z

    .line 116
    iput v1, p0, Lcom/uncopt/android/widget/text/justify/JustifiedTextView;->mWidth:I

    .line 118
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/uncopt/android/widget/text/justify/JustifiedTextView;->mSpanStarts:[I

    .line 119
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/uncopt/android/widget/text/justify/JustifiedTextView;->mSpanEnds:[I

    .line 120
    new-array v0, v2, [Lcom/uncopt/android/widget/text/justify/Justify$ScaleSpan;

    iput-object v0, p0, Lcom/uncopt/android/widget/text/justify/JustifiedTextView;->mSpans:[Lcom/uncopt/android/widget/text/justify/Justify$ScaleSpan;

    .line 43
    invoke-virtual {p0}, Lcom/uncopt/android/widget/text/justify/JustifiedTextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/text/method/LinkMovementMethod;

    invoke-direct {v0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    invoke-super {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 44
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lcom/uncopt/android/widget/text/justify/NotNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x200

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 110
    iput-boolean v1, p0, Lcom/uncopt/android/widget/text/justify/JustifiedTextView;->mMeasuring:Z

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uncopt/android/widget/text/justify/JustifiedTextView;->mTypeface:Landroid/graphics/Typeface;

    .line 113
    iput v3, p0, Lcom/uncopt/android/widget/text/justify/JustifiedTextView;->mTextSize:F

    .line 114
    iput v3, p0, Lcom/uncopt/android/widget/text/justify/JustifiedTextView;->mTextScaleX:F

    .line 115
    iput-boolean v1, p0, Lcom/uncopt/android/widget/text/justify/JustifiedTextView;->mFakeBold:Z

    .line 116
    iput v1, p0, Lcom/uncopt/android/widget/text/justify/JustifiedTextView;->mWidth:I

    .line 118
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/uncopt/android/widget/text/justify/JustifiedTextView;->mSpanStarts:[I

    .line 119
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/uncopt/android/widget/text/justify/JustifiedTextView;->mSpanEnds:[I

    .line 120
    new-array v0, v2, [Lcom/uncopt/android/widget/text/justify/Justify$ScaleSpan;

    iput-object v0, p0, Lcom/uncopt/android/widget/text/justify/JustifiedTextView;->mSpans:[Lcom/uncopt/android/widget/text/justify/Justify$ScaleSpan;

    .line 50
    invoke-virtual {p0}, Lcom/uncopt/android/widget/text/justify/JustifiedTextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/text/method/LinkMovementMethod;

    invoke-direct {v0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    invoke-super {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 51
    :cond_0
    return-void
.end method


# virtual methods
.method public getMaxProportion()F
    .locals 1

    .prologue
    .line 105
    const/high16 v0, 0x41200000    # 10.0f

    return v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 0
    .annotation build Lcom/uncopt/android/widget/text/justify/NotNull;
    .end annotation

    .prologue
    .line 100
    return-object p0
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v8, 0x0

    .line 55
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 58
    iget-boolean v5, p0, Lcom/uncopt/android/widget/text/justify/JustifiedTextView;->mMeasuring:Z

    if-nez v5, :cond_1

    .line 59
    invoke-virtual {p0}, Lcom/uncopt/android/widget/text/justify/JustifiedTextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    .line 60
    .local v3, "typeface":Landroid/graphics/Typeface;
    invoke-virtual {p0}, Lcom/uncopt/android/widget/text/justify/JustifiedTextView;->getTextSize()F

    move-result v2

    .line 61
    .local v2, "textSize":F
    invoke-virtual {p0}, Lcom/uncopt/android/widget/text/justify/JustifiedTextView;->getTextScaleX()F

    move-result v1

    .line 62
    .local v1, "textScaleX":F
    invoke-virtual {p0}, Lcom/uncopt/android/widget/text/justify/JustifiedTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5}, Landroid/text/TextPaint;->isFakeBoldText()Z

    move-result v0

    .line 63
    .local v0, "fakeBold":Z
    iget-object v5, p0, Lcom/uncopt/android/widget/text/justify/JustifiedTextView;->mTypeface:Landroid/graphics/Typeface;

    if-ne v5, v3, :cond_0

    iget v5, p0, Lcom/uncopt/android/widget/text/justify/JustifiedTextView;->mTextSize:F

    cmpl-float v5, v5, v2

    if-nez v5, :cond_0

    iget v5, p0, Lcom/uncopt/android/widget/text/justify/JustifiedTextView;->mTextScaleX:F

    cmpl-float v5, v5, v1

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/uncopt/android/widget/text/justify/JustifiedTextView;->mFakeBold:Z

    if-eq v5, v0, :cond_1

    .line 67
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 68
    .local v4, "width":I
    if-lez v4, :cond_1

    iget v5, p0, Lcom/uncopt/android/widget/text/justify/JustifiedTextView;->mWidth:I

    if-eq v4, v5, :cond_1

    .line 69
    iput-object v3, p0, Lcom/uncopt/android/widget/text/justify/JustifiedTextView;->mTypeface:Landroid/graphics/Typeface;

    .line 70
    iput v2, p0, Lcom/uncopt/android/widget/text/justify/JustifiedTextView;->mTextSize:F

    .line 71
    iput v1, p0, Lcom/uncopt/android/widget/text/justify/JustifiedTextView;->mTextScaleX:F

    .line 72
    iput-boolean v0, p0, Lcom/uncopt/android/widget/text/justify/JustifiedTextView;->mFakeBold:Z

    .line 73
    iput v4, p0, Lcom/uncopt/android/widget/text/justify/JustifiedTextView;->mWidth:I

    .line 74
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/uncopt/android/widget/text/justify/JustifiedTextView;->mMeasuring:Z

    .line 77
    :try_start_0
    iget-object v5, p0, Lcom/uncopt/android/widget/text/justify/JustifiedTextView;->mSpanStarts:[I

    iget-object v6, p0, Lcom/uncopt/android/widget/text/justify/JustifiedTextView;->mSpanEnds:[I

    iget-object v7, p0, Lcom/uncopt/android/widget/text/justify/JustifiedTextView;->mSpans:[Lcom/uncopt/android/widget/text/justify/Justify$ScaleSpan;

    invoke-static {p0, v5, v6, v7}, Lcom/uncopt/android/widget/text/justify/Justify;->setupScaleSpans(Lcom/uncopt/android/widget/text/justify/Justify$Justified;[I[I[Lcom/uncopt/android/widget/text/justify/Justify$ScaleSpan;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    iput-boolean v8, p0, Lcom/uncopt/android/widget/text/justify/JustifiedTextView;->mMeasuring:Z

    .line 85
    .end local v0    # "fakeBold":Z
    .end local v1    # "textScaleX":F
    .end local v2    # "textSize":F
    .end local v3    # "typeface":Landroid/graphics/Typeface;
    .end local v4    # "width":I
    :cond_1
    return-void

    .line 80
    .restart local v0    # "fakeBold":Z
    .restart local v1    # "textScaleX":F
    .restart local v2    # "textSize":F
    .restart local v3    # "typeface":Landroid/graphics/Typeface;
    .restart local v4    # "width":I
    :catchall_0
    move-exception v5

    iput-boolean v8, p0, Lcom/uncopt/android/widget/text/justify/JustifiedTextView;->mMeasuring:Z

    throw v5
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "lengthBefore"    # I
    .param p4, "lengthAfter"    # I

    .prologue
    .line 90
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 91
    invoke-virtual {p0}, Lcom/uncopt/android/widget/text/justify/JustifiedTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 92
    .local v0, "layout":Landroid/text/Layout;
    if-eqz v0, :cond_0

    .line 93
    iget-object v1, p0, Lcom/uncopt/android/widget/text/justify/JustifiedTextView;->mSpanStarts:[I

    iget-object v2, p0, Lcom/uncopt/android/widget/text/justify/JustifiedTextView;->mSpanEnds:[I

    iget-object v3, p0, Lcom/uncopt/android/widget/text/justify/JustifiedTextView;->mSpans:[Lcom/uncopt/android/widget/text/justify/Justify$ScaleSpan;

    invoke-static {p0, v1, v2, v3}, Lcom/uncopt/android/widget/text/justify/Justify;->setupScaleSpans(Lcom/uncopt/android/widget/text/justify/Justify$Justified;[I[I[Lcom/uncopt/android/widget/text/justify/Justify$ScaleSpan;)V

    .line 95
    :cond_0
    return-void
.end method
