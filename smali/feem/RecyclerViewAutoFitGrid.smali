.class public Lfeem/RecyclerViewAutoFitGrid;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "RecyclerViewAutoFitGrid.java"


# instance fields
.field private columnWidth:I

.field private manager:Landroidx/recyclerview/widget/GridLayoutManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 18
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lfeem/RecyclerViewAutoFitGrid;->columnWidth:I

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, v0}, Lfeem/RecyclerViewAutoFitGrid;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 23
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lfeem/RecyclerViewAutoFitGrid;->columnWidth:I

    .line 24
    invoke-direct {p0, p1, p2}, Lfeem/RecyclerViewAutoFitGrid;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, -0x1

    .line 15
    iput p3, p0, Lfeem/RecyclerViewAutoFitGrid;->columnWidth:I

    .line 29
    invoke-direct {p0, p1, p2}, Lfeem/RecyclerViewAutoFitGrid;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 34
    new-array v1, v0, [I

    const v2, 0x1010117

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 37
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, -0x1

    .line 38
    invoke-virtual {p1, v3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lfeem/RecyclerViewAutoFitGrid;->columnWidth:I

    .line 39
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 45
    :cond_0
    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lfeem/RecyclerViewAutoFitGrid;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lfeem/RecyclerViewAutoFitGrid;->manager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 46
    iget-object p1, p0, Lfeem/RecyclerViewAutoFitGrid;->manager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0, p1}, Lfeem/RecyclerViewAutoFitGrid;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 51
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onMeasure(II)V

    .line 52
    iget p1, p0, Lfeem/RecyclerViewAutoFitGrid;->columnWidth:I

    if-lez p1, :cond_0

    const/4 p1, 0x1

    .line 53
    invoke-virtual {p0}, Lfeem/RecyclerViewAutoFitGrid;->getMeasuredWidth()I

    move-result p2

    iget v0, p0, Lfeem/RecyclerViewAutoFitGrid;->columnWidth:I

    div-int/2addr p2, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 54
    iget-object p2, p0, Lfeem/RecyclerViewAutoFitGrid;->manager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    :cond_0
    return-void
.end method
