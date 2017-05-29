.class public final Lme/relex/circleindicator/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/relex/circleindicator/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CircleIndicator:[I

.field public static final CircleIndicator_ci_animator:I = 0x3

.field public static final CircleIndicator_ci_animator_reverse:I = 0x4

.field public static final CircleIndicator_ci_drawable:I = 0x5

.field public static final CircleIndicator_ci_drawable_unselected:I = 0x6

.field public static final CircleIndicator_ci_gravity:I = 0x8

.field public static final CircleIndicator_ci_height:I = 0x1

.field public static final CircleIndicator_ci_margin:I = 0x2

.field public static final CircleIndicator_ci_orientation:I = 0x7

.field public static final CircleIndicator_ci_width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lme/relex/circleindicator/R$styleable;->CircleIndicator:[I

    return-void

    :array_0
    .array-data 4
        0x7f0100a5
        0x7f0100a6
        0x7f0100a7
        0x7f0100a8
        0x7f0100a9
        0x7f0100aa
        0x7f0100ab
        0x7f0100ac
        0x7f0100ad
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
