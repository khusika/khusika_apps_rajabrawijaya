.class public Lcom/rb/cahaya/raja/Raja_Brawijaya/ExpandableListViewAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "ExpandableListViewAdapter.java"


# instance fields
.field private _context:Landroid/content/Context;

.field private _listDataChild:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private _listDataHeader:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p2, "listDataHeader":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "listChildData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/rb/cahaya/raja/Raja_Brawijaya/ExpandableListViewAdapter;->_context:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/rb/cahaya/raja/Raja_Brawijaya/ExpandableListViewAdapter;->_listDataHeader:Ljava/util/List;

    .line 30
    iput-object p3, p0, Lcom/rb/cahaya/raja/Raja_Brawijaya/ExpandableListViewAdapter;->_listDataChild:Ljava/util/HashMap;

    .line 31
    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosititon"    # I

    .prologue
    .line 35
    iget-object v0, p0, Lcom/rb/cahaya/raja/Raja_Brawijaya/ExpandableListViewAdapter;->_listDataChild:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/rb/cahaya/raja/Raja_Brawijaya/ExpandableListViewAdapter;->_listDataHeader:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 36
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 35
    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 41
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/rb/cahaya/raja/Raja_Brawijaya/ExpandableListViewAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 50
    .local v0, "childText":Ljava/lang/String;
    if-nez p4, :cond_0

    .line 51
    iget-object v3, p0, Lcom/rb/cahaya/raja/Raja_Brawijaya/ExpandableListViewAdapter;->_context:Landroid/content/Context;

    const-string v4, "layout_inflater"

    .line 52
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 53
    .local v1, "infalInflater":Landroid/view/LayoutInflater;
    const v3, 0x7f040047

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 56
    .end local v1    # "infalInflater":Landroid/view/LayoutInflater;
    :cond_0
    const v3, 0x7f0d00af

    invoke-virtual {p4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 58
    .local v2, "txtListChild":Landroid/widget/TextView;
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    return-object p4
.end method

.method public getChildrenCount(I)I
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcom/rb/cahaya/raja/Raja_Brawijaya/ExpandableListViewAdapter;->_listDataChild:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/rb/cahaya/raja/Raja_Brawijaya/ExpandableListViewAdapter;->_listDataHeader:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 65
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 64
    return v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lcom/rb/cahaya/raja/Raja_Brawijaya/ExpandableListViewAdapter;->_listDataHeader:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/rb/cahaya/raja/Raja_Brawijaya/ExpandableListViewAdapter;->_listDataHeader:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 80
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 86
    invoke-virtual {p0, p1}, Lcom/rb/cahaya/raja/Raja_Brawijaya/ExpandableListViewAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 87
    .local v0, "headerTitle":Ljava/lang/String;
    if-nez p3, :cond_0

    .line 88
    iget-object v3, p0, Lcom/rb/cahaya/raja/Raja_Brawijaya/ExpandableListViewAdapter;->_context:Landroid/content/Context;

    const-string v4, "layout_inflater"

    .line 89
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 90
    .local v1, "infalInflater":Landroid/view/LayoutInflater;
    const v3, 0x7f040046

    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 93
    .end local v1    # "infalInflater":Landroid/view/LayoutInflater;
    :cond_0
    const v3, 0x7f0d00ae

    .line 94
    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 95
    .local v2, "lblListHeader":Landroid/widget/TextView;
    const/4 v3, 0x1

    invoke-virtual {v2, v5, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 96
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    return-object p3
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 108
    const/4 v0, 0x1

    return v0
.end method
