.class public Lcom/rb/cahaya/raja/OH_LKM/list_detail_item;
.super Ljava/lang/Object;
.source "list_detail_item.java"


# instance fields
.field private description:Ljava/lang/String;

.field private id:I

.field private image:I

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "image"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "description"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p2, p0, Lcom/rb/cahaya/raja/OH_LKM/list_detail_item;->image:I

    .line 15
    iput p1, p0, Lcom/rb/cahaya/raja/OH_LKM/list_detail_item;->id:I

    .line 16
    iput-object p3, p0, Lcom/rb/cahaya/raja/OH_LKM/list_detail_item;->name:Ljava/lang/String;

    .line 17
    iput-object p4, p0, Lcom/rb/cahaya/raja/OH_LKM/list_detail_item;->description:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/rb/cahaya/raja/OH_LKM/list_detail_item;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/rb/cahaya/raja/OH_LKM/list_detail_item;->id:I

    return v0
.end method

.method public getImage()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/rb/cahaya/raja/OH_LKM/list_detail_item;->image:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/rb/cahaya/raja/OH_LKM/list_detail_item;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/rb/cahaya/raja/OH_LKM/list_detail_item;->description:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/rb/cahaya/raja/OH_LKM/list_detail_item;->id:I

    .line 34
    return-void
.end method

.method public setImage(I)V
    .locals 0
    .param p1, "image"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/rb/cahaya/raja/OH_LKM/list_detail_item;->image:I

    .line 26
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/rb/cahaya/raja/OH_LKM/list_detail_item;->name:Ljava/lang/String;

    .line 42
    return-void
.end method
