.class public Lcom/rb/cahaya/raja/global/TextJustifyUtils;
.super Ljava/lang/Object;
.source "TextJustifyUtils.java"


# static fields
.field static final COMPLEXITY:F = 5.12f

.field static final SYSTEM_NEWLINE:Ljava/lang/String; = "\n"

.field static final p:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 139
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/rb/cahaya/raja/global/TextJustifyUtils;->p:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static createWrappedLine(Ljava/lang/String;Landroid/graphics/Paint;FF)[Ljava/lang/Object;
    .locals 12
    .param p0, "block"    # Ljava/lang/String;
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "spaceOffset"    # F
    .param p3, "maxWidth"    # F

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 109
    move v0, p3

    .line 110
    .local v0, "cacheWidth":F
    move v2, p3

    .line 112
    .local v2, "origMaxWidth":F
    const-string v1, ""

    .line 114
    .local v1, "line":Ljava/lang/String;
    const-string v4, "\\s"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v4, v5

    :goto_0
    if-ge v4, v7, :cond_1

    aget-object v3, v6, v4

    .line 116
    .local v3, "word":Ljava/lang/String;
    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 117
    sub-float/2addr p3, v0

    .line 119
    const/4 v8, 0x0

    cmpg-float v8, p3, v8

    if-gtz v8, :cond_0

    .line 121
    new-array v4, v11, [Ljava/lang/Object;

    aput-object v1, v4, v5

    add-float v5, p3, v0

    add-float/2addr v5, p2

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v10

    .line 134
    .end local v3    # "word":Ljava/lang/String;
    :goto_1
    return-object v4

    .line 124
    .restart local v3    # "word":Ljava/lang/String;
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 125
    sub-float/2addr p3, p2

    .line 114
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 129
    .end local v3    # "word":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    cmpg-float v4, v4, v2

    if-gtz v4, :cond_2

    .line 131
    new-array v4, v11, [Ljava/lang/Object;

    aput-object p0, v4, v5

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v10

    goto :goto_1

    .line 134
    :cond_2
    new-array v4, v11, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v10

    goto :goto_1
.end method

.method private static justify(Ljava/lang/String;FLandroid/graphics/Paint;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "width"    # F
    .param p2, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 208
    :goto_0
    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    cmpg-float v0, v0, p1

    if-gez v0, :cond_0

    .line 209
    invoke-static {p0, p1, p2}, Lcom/rb/cahaya/raja/global/TextJustifyUtils;->justifyOperation(Ljava/lang/String;FLandroid/graphics/Paint;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 211
    :cond_0
    return-object p0
.end method

.method public static justify(Landroid/widget/TextView;)V
    .locals 18
    .param p0, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 26
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 29
    .local v5, "paint":Landroid/graphics/Paint;
    const/4 v7, 0x0

    .line 30
    .local v7, "spaceOffset":F
    const/4 v9, 0x0

    .line 37
    .local v9, "textWrapWidth":F
    const-string v6, ""

    .line 41
    .local v6, "smb":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v14

    invoke-virtual {v5, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 43
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v14

    invoke-virtual {v5, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 45
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getWidth()I

    move-result v14

    int-to-float v9, v14

    .line 46
    const-string v14, " "

    invoke-virtual {v5, v14}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    .line 47
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "((?<=\n)|(?=\n))"

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, "blocks":[Ljava/lang/String;
    const/high16 v14, 0x41a00000    # 20.0f

    cmpg-float v14, v9, v14

    if-gez v14, :cond_0

    .line 105
    :goto_0
    return-void

    .line 54
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v14, v2

    if-ge v3, v14, :cond_8

    .line 56
    aget-object v1, v2, v3

    .line 58
    .local v1, "block":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_2

    .line 54
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 62
    :cond_2
    const-string v14, "\n"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 64
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 65
    goto :goto_2

    .line 68
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_1

    .line 72
    invoke-static {v1, v5, v7, v9}, Lcom/rb/cahaya/raja/global/TextJustifyUtils;->createWrappedLine(Ljava/lang/String;Landroid/graphics/Paint;FF)[Ljava/lang/Object;

    move-result-object v13

    .line 73
    .local v13, "wrappedObj":[Ljava/lang/Object;
    const/4 v14, 0x0

    aget-object v12, v13, v14

    check-cast v12, Ljava/lang/String;

    .line 74
    .local v12, "wrappedLine":Ljava/lang/String;
    const/4 v14, 0x1

    aget-object v14, v13, v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v11

    .line 75
    .local v11, "wrappedEdgeSpace":F
    const-string v14, " "

    invoke-virtual {v12, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, "lineAsWords":[Ljava/lang/String;
    const/4 v14, 0x1

    cmpl-float v14, v11, v14

    if-eqz v14, :cond_5

    div-float v14, v11, v7

    :goto_3
    float-to-int v8, v14

    .line 78
    .local v8, "spacesToSpread":I
    array-length v15, v4

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v15, :cond_6

    aget-object v10, v4, v14

    .line 80
    .local v10, "word":Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 82
    add-int/lit8 v8, v8, -0x1

    if-lez v8, :cond_4

    .line 84
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 78
    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 76
    .end local v8    # "spacesToSpread":I
    .end local v10    # "word":Ljava/lang/String;
    :cond_5
    const/4 v14, 0x0

    goto :goto_3

    .line 88
    .restart local v8    # "spacesToSpread":I
    :cond_6
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 90
    aget-object v14, v2, v3

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_1

    .line 92
    aget-object v14, v2, v3

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v2, v3

    .line 94
    aget-object v14, v2, v3

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_7

    .line 96
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 99
    :cond_7
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_2

    .line 103
    .end local v1    # "block":Ljava/lang/String;
    .end local v4    # "lineAsWords":[Ljava/lang/String;
    .end local v8    # "spacesToSpread":I
    .end local v11    # "wrappedEdgeSpace":F
    .end local v12    # "wrappedLine":Ljava/lang/String;
    .end local v13    # "wrappedObj":[Ljava/lang/Object;
    :cond_8
    const/4 v14, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 104
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private static justifyOperation(Ljava/lang/String;FLandroid/graphics/Paint;)Ljava/lang/String;
    .locals 10
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "width"    # F
    .param p2, "p"    # Landroid/graphics/Paint;

    .prologue
    const-wide v8, 0x40147ae140000000L    # 5.119999885559082

    .line 192
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v6, v8

    double-to-float v2, v6

    .line 193
    .local v2, "holder":F
    :goto_0
    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 194
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v6, v8

    double-to-float v2, v6

    goto :goto_0

    .line 195
    :cond_0
    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    .line 196
    .local v3, "holder_string":Ljava/lang/String;
    move v4, p1

    .line 197
    .local v4, "lessThan":F
    const/16 v5, 0x64

    .line 198
    .local v5, "timeOut":I
    const/4 v1, 0x0

    .line 199
    .local v1, "current":I
    :goto_1
    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    cmpg-float v6, v6, v4

    if-gez v6, :cond_1

    if-ge v1, v5, :cond_1

    .line 200
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " ([^"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "])"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "$1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 201
    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    add-float/2addr v6, v4

    const-string v7, " "

    invoke-virtual {p2, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    sub-float v4, v6, v7

    .line 202
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 204
    :cond_1
    const-string v6, " "

    invoke-virtual {p0, v3, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "cleaned":Ljava/lang/String;
    return-object v0
.end method

.method private static removeLast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "g"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 181
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 183
    .local v0, "index":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int v1, v0, v2

    .line 184
    .local v1, "indexEnd":I
    if-nez v0, :cond_1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 189
    .end local v0    # "index":I
    .end local v1    # "indexEnd":I
    .end local p0    # "s":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 185
    .restart local v0    # "index":I
    .restart local v1    # "indexEnd":I
    .restart local p0    # "s":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_2

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 187
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static run(Landroid/widget/TextView;F)V
    .locals 14
    .param p0, "tv"    # Landroid/widget/TextView;
    .param p1, "origWidth"    # F

    .prologue
    .line 144
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, "s":Ljava/lang/String;
    sget-object v10, Lcom/rb/cahaya/raja/global/TextJustifyUtils;->p:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 146
    const-string v10, "\n"

    invoke-virtual {v2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 147
    .local v5, "splits":[Ljava/lang/String;
    const/high16 v10, 0x40a00000    # 5.0f

    sub-float v6, p1, v10

    .line 148
    .local v6, "width":F
    const/4 v7, 0x0

    .local v7, "x":I
    :goto_0
    array-length v10, v5

    if-ge v7, v10, :cond_4

    .line 149
    sget-object v10, Lcom/rb/cahaya/raja/global/TextJustifyUtils;->p:Landroid/graphics/Paint;

    aget-object v11, v5, v7

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    cmpl-float v10, v10, v6

    if-lez v10, :cond_3

    .line 150
    aget-object v10, v5, v7

    sget-object v11, Lcom/rb/cahaya/raja/global/TextJustifyUtils;->p:Landroid/graphics/Paint;

    invoke-static {v10, v6, v11}, Lcom/rb/cahaya/raja/global/TextJustifyUtils;->wrap(Ljava/lang/String;FLandroid/graphics/Paint;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v7

    .line 151
    aget-object v10, v5, v7

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "microSplits":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "y":I
    :goto_1
    array-length v10, v1

    add-int/lit8 v10, v10, -0x1

    if-ge v8, v10, :cond_0

    .line 153
    aget-object v10, v1, v8

    const-string v11, " "

    invoke-static {v10, v11}, Lcom/rb/cahaya/raja/global/TextJustifyUtils;->removeLast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/rb/cahaya/raja/global/TextJustifyUtils;->p:Landroid/graphics/Paint;

    invoke-static {v10, v6, v11}, Lcom/rb/cahaya/raja/global/TextJustifyUtils;->justify(Ljava/lang/String;FLandroid/graphics/Paint;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v8

    .line 152
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 154
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .local v4, "smb_internal":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .local v9, "z":I
    :goto_2
    array-length v10, v1

    if-ge v9, v10, :cond_2

    .line 156
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v1, v9

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v10, v9, 0x1

    array-length v12, v1

    if-ge v10, v12, :cond_1

    const-string v10, "\n"

    :goto_3
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 156
    :cond_1
    const-string v10, ""

    goto :goto_3

    .line 157
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v7

    .line 148
    .end local v1    # "microSplits":[Ljava/lang/String;
    .end local v4    # "smb_internal":Ljava/lang/StringBuilder;
    .end local v8    # "y":I
    .end local v9    # "z":I
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 159
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .local v3, "smb":Ljava/lang/StringBuilder;
    array-length v11, v5

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v11, :cond_5

    aget-object v0, v5, v10

    .line 161
    .local v0, "cleaned":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 162
    .end local v0    # "cleaned":Ljava/lang/String;
    :cond_5
    const/4 v10, 0x3

    invoke-virtual {p0, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 163
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    return-void
.end method

.method private static wrap(Ljava/lang/String;FLandroid/graphics/Paint;)Ljava/lang/String;
    .locals 8
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "width"    # F
    .param p2, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 166
    const-string v5, "\\s"

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, "str":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .local v2, "smb":Ljava/lang/StringBuilder;
    const-string v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    const/4 v4, 0x0

    .local v4, "x":I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_1

    .line 170
    aget-object v5, v3, v4

    invoke-virtual {p2, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 171
    .local v0, "length":F
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "pieces":[Ljava/lang/String;
    :try_start_0
    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v1, v5

    invoke-virtual {p2, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    add-float/2addr v5, v0

    cmpl-float v5, v5, p1

    if-lez v5, :cond_0

    .line 174
    const-string v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :cond_0
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v3, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 178
    .end local v0    # "length":F
    .end local v1    # "pieces":[Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\n"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 175
    .restart local v0    # "length":F
    .restart local v1    # "pieces":[Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_1
.end method
