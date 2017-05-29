.class public Lcom/uncopt/android/widget/text/justify/JustifiedEditText;
.super Landroid/widget/EditText;
.source "JustifiedEditText.java"

# interfaces
.implements Lcom/uncopt/android/widget/text/justify/Justify$Justified;


# static fields
.field private static final MAX_SPANS:I = 0x200


# instance fields
.field private mMeasuring:Z

.field private mSpanEnds:[I

.field private mSpanStarts:[I

.field private mSpans:[Lcom/uncopt/android/widget/text/justify/Justify$ScaleSpan;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lcom/uncopt/android/widget/text/justify/NotNull;
        .end annotation
    .end param

    .prologue
    const/16 v1, 0x200

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uncopt/android/widget/text/justify/JustifiedEditText;->mMeasuring:Z

    .line 95
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/uncopt/android/widget/text/justify/JustifiedEditText;->mSpanStarts:[I

    .line 96
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/uncopt/android/widget/text/justify/JustifiedEditText;->mSpanEnds:[I

    .line 97
    new-array v0, v1, [Lcom/uncopt/android/widget/text/justify/Justify$ScaleSpan;

    iput-object v0, p0, Lcom/uncopt/android/widget/text/justify/JustifiedEditText;->mSpans:[Lcom/uncopt/android/widget/text/justify/Justify$ScaleSpan;

    .line 37
    new-instance v0, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v0}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-super {p0, v0}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lcom/uncopt/android/widget/text/justify/NotNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v1, 0x200

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uncopt/android/widget/text/justify/JustifiedEditText;->mMeasuring:Z

    .line 95
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/uncopt/android/widget/text/justify/JustifiedEditText;->mSpanStarts:[I

    .line 96
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/uncopt/android/widget/text/justify/JustifiedEditText;->mSpanEnds:[I

    .line 97
    new-array v0, v1, [Lcom/uncopt/android/widget/text/justify/Justify$ScaleSpan;

    iput-object v0, p0, Lcom/uncopt/android/widget/text/justify/JustifiedEditText;->mSpans:[Lcom/uncopt/android/widget/text/justify/Justify$ScaleSpan;

    .line 43
    new-instance v0, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v0}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-super {p0, v0}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lcom/uncopt/android/widget/text/justify/NotNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/16 v1, 0x200

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uncopt/android/widget/text/justify/JustifiedEditText;->mMeasuring:Z

    .line 95
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/uncopt/android/widget/text/justify/JustifiedEditText;->mSpanStarts:[I

    .line 96
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/uncopt/android/widget/text/justify/JustifiedEditText;->mSpanEnds:[I

    .line 97
    new-array v0, v1, [Lcom/uncopt/android/widget/text/justify/Justify$ScaleSpan;

    iput-object v0, p0, Lcom/uncopt/android/widget/text/justify/JustifiedEditText;->mSpans:[Lcom/uncopt/android/widget/text/justify/Justify$ScaleSpan;

    .line 50
    new-instance v0, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v0}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-super {p0, v0}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 51
    return-void
.end method


# virtual methods
.method public getMaxProportion()F
    .locals 1

    .prologue
    .line 88
    const/high16 v0, 0x41200000    # 10.0f

    return v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 0
    .annotation build Lcom/uncopt/android/widget/text/justify/NotNull;
    .end annotation

    .prologue
    .line 83
    return-object p0
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, 0x0

    .line 55
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onMeasure(II)V

    .line 58
    iget-boolean v0, p0, Lcom/uncopt/android/widget/text/justify/JustifiedEditText;->mMeasuring:Z

    if-nez v0, :cond_0

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uncopt/android/widget/text/justify/JustifiedEditText;->mMeasuring:Z

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/uncopt/android/widget/text/justify/JustifiedEditText;->mSpanStarts:[I

    iget-object v1, p0, Lcom/uncopt/android/widget/text/justify/JustifiedEditText;->mSpanEnds:[I

    iget-object v2, p0, Lcom/uncopt/android/widget/text/justify/JustifiedEditText;->mSpans:[Lcom/uncopt/android/widget/text/justify/Justify$ScaleSpan;

    invoke-static {p0, v0, v1, v2}, Lcom/uncopt/android/widget/text/justify/Justify;->setupScaleSpans(Lcom/uncopt/android/widget/text/justify/Justify$Justified;[I[I[Lcom/uncopt/android/widget/text/justify/Justify$ScaleSpan;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    iput-boolean v3, p0, Lcom/uncopt/android/widget/text/justify/JustifiedEditText;->mMeasuring:Z

    .line 68
    :cond_0
    return-void

    .line 65
    :catchall_0
    move-exception v0

    iput-boolean v3, p0, Lcom/uncopt/android/widget/text/justify/JustifiedEditText;->mMeasuring:Z

    throw v0
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "lengthBefore"    # I
    .param p4, "lengthAfter"    # I

    .prologue
    .line 73
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 74
    invoke-virtual {p0}, Lcom/uncopt/android/widget/text/justify/JustifiedEditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 75
    .local v0, "layout":Landroid/text/Layout;
    if-eqz v0, :cond_0

    .line 76
    iget-object v1, p0, Lcom/uncopt/android/widget/text/justify/JustifiedEditText;->mSpanStarts:[I

    iget-object v2, p0, Lcom/uncopt/android/widget/text/justify/JustifiedEditText;->mSpanEnds:[I

    iget-object v3, p0, Lcom/uncopt/android/widget/text/justify/JustifiedEditText;->mSpans:[Lcom/uncopt/android/widget/text/justify/Justify$ScaleSpan;

    invoke-static {p0, v1, v2, v3}, Lcom/uncopt/android/widget/text/justify/Justify;->setupScaleSpans(Lcom/uncopt/android/widget/text/justify/Justify$Justified;[I[I[Lcom/uncopt/android/widget/text/justify/Justify$ScaleSpan;)V

    .line 78
    :cond_0
    return-void
.end method
