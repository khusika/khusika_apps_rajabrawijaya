.class Lcom/uncopt/android/widget/text/justify/Justify;
.super Ljava/lang/Object;
.source "Justify.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uncopt/android/widget/text/justify/Justify$ScaleSpan;,
        Lcom/uncopt/android/widget/text/justify/Justify$Justified;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final DEFAULT_MAX_PROPORTION:F = 10.0f

.field private static final WHITESPACE_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/uncopt/android/widget/text/justify/Justify;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/uncopt/android/widget/text/justify/Justify;->$assertionsDisabled:Z

    .line 33
    const-string v0, "\\s"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/uncopt/android/widget/text/justify/Justify;->WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    return-void

    .line 31
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    return-void
.end method

.method static setupScaleSpans(Lcom/uncopt/android/widget/text/justify/Justify$Justified;[I[I[Lcom/uncopt/android/widget/text/justify/Justify$ScaleSpan;)V
    .locals 41
    .param p0, "justified"    # Lcom/uncopt/android/widget/text/justify/Justify$Justified;
        .annotation build Lcom/uncopt/android/widget/text/justify/NotNull;
        .end annotation
    .end param
    .param p1, "textViewSpanStarts"    # [I
        .annotation build Lcom/uncopt/android/widget/text/justify/NotNull;
        .end annotation
    .end param
    .param p2, "textViewSpanEnds"    # [I
        .annotation build Lcom/uncopt/android/widget/text/justify/NotNull;
        .end annotation
    .end param
    .param p3, "textViewSpans"    # [Lcom/uncopt/android/widget/text/justify/Justify$ScaleSpan;
        .annotation build Lcom/uncopt/android/widget/text/justify/NotNull;
        .end annotation
    .end param

    .prologue
    .line 48
    invoke-interface/range {p0 .. p0}, Lcom/uncopt/android/widget/text/justify/Justify$Justified;->getTextView()Landroid/widget/TextView;

    move-result-object v33

    .line 49
    .local v33, "textView":Landroid/widget/TextView;
    invoke-virtual/range {v33 .. v33}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v32

    .line 52
    .local v32, "text":Ljava/lang/CharSequence;
    move-object/from16 v0, v32

    instance-of v0, v0, Landroid/text/Spannable;

    move/from16 v37, v0

    if-nez v37, :cond_1

    .line 211
    .end local v33    # "textView":Landroid/widget/TextView;
    :cond_0
    return-void

    .restart local v33    # "textView":Landroid/widget/TextView;
    :cond_1
    move-object/from16 v30, v32

    .line 53
    check-cast v30, Landroid/text/Spannable;

    .line 54
    .local v30, "spannable":Landroid/text/Spannable;
    invoke-interface/range {v30 .. v30}, Landroid/text/Spannable;->length()I

    move-result v13

    .line 55
    .local v13, "length":I
    if-eqz v13, :cond_0

    .line 58
    const/16 v37, 0x0

    invoke-interface/range {v30 .. v30}, Landroid/text/Spannable;->length()I

    move-result v38

    const-class v39, Lcom/uncopt/android/widget/text/justify/Justify$ScaleSpan;

    move-object/from16 v0, v30

    move/from16 v1, v37

    move/from16 v2, v38

    move-object/from16 v3, v39

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v27

    check-cast v27, [Lcom/uncopt/android/widget/text/justify/Justify$ScaleSpan;

    .line 59
    .local v27, "scaleSpans":[Lcom/uncopt/android/widget/text/justify/Justify$ScaleSpan;
    if-eqz v27, :cond_2

    .line 60
    move-object/from16 v6, v27

    .local v6, "arr$":[Lcom/uncopt/android/widget/text/justify/Justify$ScaleSpan;
    array-length v12, v6

    .local v12, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_0
    if-ge v10, v12, :cond_2

    aget-object v29, v6, v10

    .line 61
    .local v29, "span":Lcom/uncopt/android/widget/text/justify/Justify$ScaleSpan;
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 60
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 66
    .end local v6    # "arr$":[Lcom/uncopt/android/widget/text/justify/Justify$ScaleSpan;
    .end local v10    # "i$":I
    .end local v12    # "len$":I
    .end local v29    # "span":Lcom/uncopt/android/widget/text/justify/Justify$ScaleSpan;
    :cond_2
    invoke-virtual/range {v33 .. v33}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v11

    .line 67
    .local v11, "layout":Landroid/text/Layout;
    sget-boolean v37, Lcom/uncopt/android/widget/text/justify/Justify;->$assertionsDisabled:Z

    if-nez v37, :cond_3

    if-nez v11, :cond_3

    new-instance v37, Ljava/lang/AssertionError;

    invoke-direct/range {v37 .. v37}, Ljava/lang/AssertionError;-><init>()V

    throw v37

    .line 68
    :cond_3
    invoke-virtual {v11}, Landroid/text/Layout;->getLineCount()I

    move-result v8

    .line 69
    .local v8, "count":I
    const/16 v37, 0x2

    move/from16 v0, v37

    if-lt v8, v0, :cond_0

    .line 72
    invoke-virtual/range {v33 .. v33}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v37

    invoke-virtual/range {v33 .. v33}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v38

    sub-int v37, v37, v38

    invoke-virtual/range {v33 .. v33}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v38

    sub-int v36, v37, v38

    .line 77
    .local v36, "want":I
    move-object/from16 v0, v33

    instance-of v0, v0, Lcom/uncopt/android/widget/text/justify/Justify$Justified;

    move/from16 v37, v0

    if-eqz v37, :cond_5

    .line 78
    check-cast v33, Lcom/uncopt/android/widget/text/justify/Justify$Justified;

    .end local v33    # "textView":Landroid/widget/TextView;
    invoke-interface/range {v33 .. v33}, Lcom/uncopt/android/widget/text/justify/Justify$Justified;->getMaxProportion()F

    move-result v22

    .line 84
    .local v22, "maxProportion":F
    :goto_1
    const/4 v14, 0x0

    .local v14, "line":I
    :goto_2
    if-ge v14, v8, :cond_0

    .line 86
    invoke-virtual {v11, v14}, Landroid/text/Layout;->getLineStart(I)I

    move-result v16

    .line 87
    .local v16, "lineStart":I
    add-int/lit8 v37, v8, -0x1

    move/from16 v0, v37

    if-ne v14, v0, :cond_6

    move v15, v13

    .line 90
    .local v15, "lineEnd":I
    :goto_3
    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    .line 84
    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 81
    .end local v14    # "line":I
    .end local v15    # "lineEnd":I
    .end local v16    # "lineStart":I
    .end local v22    # "maxProportion":F
    .restart local v33    # "textView":Landroid/widget/TextView;
    :cond_5
    const/high16 v22, 0x41200000    # 10.0f

    .restart local v22    # "maxProportion":F
    goto :goto_1

    .line 87
    .end local v33    # "textView":Landroid/widget/TextView;
    .restart local v14    # "line":I
    .restart local v16    # "lineStart":I
    :cond_6
    invoke-virtual {v11, v14}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v15

    goto :goto_3

    .line 93
    .restart local v15    # "lineEnd":I
    :cond_7
    if-eq v15, v13, :cond_4

    add-int/lit8 v37, v15, -0x1

    move-object/from16 v0, v30

    move/from16 v1, v37

    invoke-interface {v0, v1}, Landroid/text/Spannable;->charAt(I)C

    move-result v37

    const/16 v38, 0xa

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_4

    .line 96
    invoke-virtual {v11, v14}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result v34

    .line 102
    .local v34, "visibleLineEnd":I
    move/from16 v0, v34

    move/from16 v1, v16

    if-eq v0, v1, :cond_4

    .line 107
    invoke-virtual {v11}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v37

    move-object/from16 v0, v30

    move/from16 v1, v16

    move-object/from16 v2, v37

    invoke-static {v0, v1, v15, v2}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v35

    .line 110
    .local v35, "w":F
    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v37, v0

    sub-float v37, v37, v35

    move/from16 v0, v37

    float-to-double v0, v0

    move-wide/from16 v38, v0

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->floor(D)D

    move-result-wide v38

    move-wide/from16 v0, v38

    double-to-int v0, v0

    move/from16 v26, v0

    .line 112
    .local v26, "remaining":I
    if-lez v26, :cond_4

    .line 114
    move/from16 v0, v34

    if-ge v0, v15, :cond_8

    .line 115
    new-instance v37, Landroid/text/style/ScaleXSpan;

    const/16 v38, 0x0

    invoke-direct/range {v37 .. v38}, Landroid/text/style/ScaleXSpan;-><init>(F)V

    const/16 v38, 0x11

    move-object/from16 v0, v30

    move-object/from16 v1, v37

    move/from16 v2, v34

    move/from16 v3, v38

    invoke-interface {v0, v1, v2, v15, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 123
    :cond_8
    move-object/from16 v0, v30

    move/from16 v1, v16

    move/from16 v2, v34

    invoke-interface {v0, v1, v2}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v31

    .line 126
    .local v31, "sub":Ljava/lang/CharSequence;
    const/16 v28, 0x0

    .line 128
    .local v28, "spaceWidth":F
    const/16 v23, 0x0

    .line 131
    .local v23, "n":I
    sget-object v37, Lcom/uncopt/android/widget/text/justify/Justify;->WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v0, v37

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v21

    .line 132
    .local v21, "matcher":Ljava/util/regex/Matcher;
    :cond_9
    :goto_4
    invoke-virtual/range {v21 .. v21}, Ljava/util/regex/Matcher;->find()Z

    move-result v37

    if-eqz v37, :cond_c

    .line 133
    invoke-virtual/range {v21 .. v21}, Ljava/util/regex/Matcher;->start()I

    move-result v19

    .line 134
    .local v19, "matchStart":I
    invoke-virtual/range {v21 .. v21}, Ljava/util/regex/Matcher;->end()I

    move-result v18

    .line 137
    .local v18, "matchEnd":I
    if-eqz v19, :cond_9

    .line 139
    sub-int v37, v18, v19

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_a

    .line 140
    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 141
    .local v7, "c":I
    const/16 v37, 0x200a

    move/from16 v0, v37

    if-eq v7, v0, :cond_9

    const/16 v37, 0x2009

    move/from16 v0, v37

    if-eq v7, v0, :cond_9

    const/16 v37, 0xa0

    move/from16 v0, v37

    if-eq v7, v0, :cond_9

    .line 143
    .end local v7    # "c":I
    :cond_a
    sget-boolean v37, Lcom/uncopt/android/widget/text/justify/Justify;->$assertionsDisabled:Z

    if-nez v37, :cond_b

    invoke-virtual {v11}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v37

    if-nez v37, :cond_b

    new-instance v37, Ljava/lang/AssertionError;

    invoke-direct/range {v37 .. v37}, Ljava/lang/AssertionError;-><init>()V

    throw v37

    .line 144
    :cond_b
    invoke-virtual {v11}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v37

    add-int v38, v16, v19

    add-int v39, v16, v18

    move-object/from16 v0, v37

    move-object/from16 v1, v30

    move/from16 v2, v38

    move/from16 v3, v39

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v20

    .line 147
    .local v20, "matchWidth":F
    add-float v28, v28, v20

    .line 149
    aput v19, p1, v23

    .line 150
    aput v18, p2, v23

    .line 151
    add-int/lit8 v23, v23, 0x1

    .line 152
    goto :goto_4

    .line 153
    .end local v18    # "matchEnd":I
    .end local v19    # "matchStart":I
    .end local v20    # "matchWidth":F
    :cond_c
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v37, v0

    move/from16 v0, v23

    move/from16 v1, v37

    if-le v0, v1, :cond_d

    .line 154
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v23, v0

    .line 159
    :cond_d
    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v37, v0

    add-float v37, v37, v28

    div-float v24, v37, v28

    .line 162
    .local v24, "proportion":F
    cmpl-float v37, v24, v22

    if-gtz v37, :cond_4

    .line 165
    const/16 v29, 0x0

    .local v29, "span":I
    :goto_5
    move/from16 v0, v29

    move/from16 v1, v23

    if-ge v0, v1, :cond_e

    .line 166
    new-instance v37, Lcom/uncopt/android/widget/text/justify/Justify$ScaleSpan;

    move-object/from16 v0, v37

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/uncopt/android/widget/text/justify/Justify$ScaleSpan;-><init>(F)V

    aput-object v37, p3, v29

    .line 167
    aget-object v37, p3, v29

    aget v38, p1, v29

    add-int v38, v38, v16

    aget v39, p2, v29

    add-int v39, v39, v16

    const/16 v40, 0x11

    move-object/from16 v0, v30

    move-object/from16 v1, v37

    move/from16 v2, v38

    move/from16 v3, v39

    move/from16 v4, v40

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 165
    add-int/lit8 v29, v29, 0x1

    goto :goto_5

    .line 174
    :cond_e
    invoke-virtual {v11}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v37

    move-object/from16 v0, v30

    move/from16 v1, v16

    move-object/from16 v2, v37

    invoke-static {v0, v1, v15, v2}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v37

    move/from16 v0, v37

    float-to-double v0, v0

    move-wide/from16 v38, v0

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v38

    move-wide/from16 v0, v38

    double-to-int v0, v0

    move/from16 v37, v0

    sub-int v9, v37, v36

    .line 181
    .local v9, "excess":I
    const/16 v17, 0x0

    .line 182
    .local v17, "loop":I
    :goto_6
    if-lez v9, :cond_4

    .line 183
    add-int/lit8 v17, v17, 0x1

    const/16 v37, 0x4

    move/from16 v0, v17

    move/from16 v1, v37

    if-ne v0, v1, :cond_f

    .line 184
    const-string v37, "ERROR"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Could not compensate for excess space ("

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "px)."

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_f
    const/16 v29, 0x0

    :goto_7
    move/from16 v0, v29

    move/from16 v1, v23

    if-ge v0, v1, :cond_10

    .line 189
    aget-object v37, p3, v29

    move-object/from16 v0, v30

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 188
    add-int/lit8 v29, v29, 0x1

    goto :goto_7

    .line 192
    :cond_10
    mul-int v37, v17, v17

    add-int v37, v37, v9

    sub-int v26, v26, v37

    .line 194
    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v37, v0

    add-float v37, v37, v28

    div-float v25, v37, v28

    .line 195
    .local v25, "reducedProportions":F
    const/16 v29, 0x0

    :goto_8
    move/from16 v0, v29

    move/from16 v1, v23

    if-ge v0, v1, :cond_11

    .line 196
    new-instance v37, Lcom/uncopt/android/widget/text/justify/Justify$ScaleSpan;

    move-object/from16 v0, v37

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/uncopt/android/widget/text/justify/Justify$ScaleSpan;-><init>(F)V

    aput-object v37, p3, v29

    .line 197
    aget-object v37, p3, v29

    aget v38, p1, v29

    add-int v38, v38, v16

    aget v39, p2, v29

    add-int v39, v39, v16

    const/16 v40, 0x11

    move-object/from16 v0, v30

    move-object/from16 v1, v37

    move/from16 v2, v38

    move/from16 v3, v39

    move/from16 v4, v40

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 195
    add-int/lit8 v29, v29, 0x1

    goto :goto_8

    .line 204
    :cond_11
    invoke-virtual {v11}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v37

    move-object/from16 v0, v30

    move/from16 v1, v16

    move-object/from16 v2, v37

    invoke-static {v0, v1, v15, v2}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v37

    move/from16 v0, v37

    float-to-double v0, v0

    move-wide/from16 v38, v0

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v38

    move-wide/from16 v0, v38

    double-to-int v0, v0

    move/from16 v37, v0

    sub-int v9, v37, v36

    .line 207
    goto/16 :goto_6
.end method
