.class Lcom/uncopt/android/widget/text/justify/Justify$ScaleSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "Justify.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uncopt/android/widget/text/justify/Justify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScaleSpan"
.end annotation


# instance fields
.field private final mProportion:F


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .param p1, "proportion"    # F

    .prologue
    .line 235
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 236
    iput p1, p0, Lcom/uncopt/android/widget/text/justify/Justify$ScaleSpan;->mProportion:F

    .line 237
    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2
    .param p1, "ds"    # Landroid/text/TextPaint;
        .annotation build Lcom/uncopt/android/widget/text/justify/NotNull;
        .end annotation
    .end param

    .prologue
    .line 241
    invoke-virtual {p1}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v0

    iget v1, p0, Lcom/uncopt/android/widget/text/justify/Justify$ScaleSpan;->mProportion:F

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextScaleX(F)V

    .line 242
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 2
    .param p1, "ds"    # Landroid/text/TextPaint;
        .annotation build Lcom/uncopt/android/widget/text/justify/NotNull;
        .end annotation
    .end param

    .prologue
    .line 246
    invoke-virtual {p1}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v0

    iget v1, p0, Lcom/uncopt/android/widget/text/justify/Justify$ScaleSpan;->mProportion:F

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextScaleX(F)V

    .line 247
    return-void
.end method
