.class public Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;
.super Landroid/widget/LinearLayout;
.source "MaterialBreadcrumbsNavigation.java"


# instance fields
.field private active:I

.field private backgroundColor:I

.field private breadcrumbClickListener:Lde/mdxdave/materialbreadcrumbsnavigation/BreadcrumbClickListener;

.field private context:Landroid/content/Context;

.field private fragmentLayout:I

.field private fragmentManager:Landroidx/fragment/app/FragmentManager;

.field private hasRootItem:Z

.field private horizontalScrollView:Landroid/widget/HorizontalScrollView;

.field private indicatorColor:I

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lde/mdxdave/materialbreadcrumbsnavigation/NavigationItem;",
            ">;"
        }
    .end annotation
.end field

.field private textColor:I

.field private view:Landroid/view/View;

.field private viewGroup:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->hasRootItem:Z

    .line 57
    iput v0, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->active:I

    .line 64
    iput-object p1, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->context:Landroid/content/Context;

    .line 66
    sget-object v1, Lde/mdxdave/material/breadcrumbs/R$styleable;->MaterialBreadcrumbsNavigation:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 68
    sget v1, Lde/mdxdave/material/breadcrumbs/R$styleable;->MaterialBreadcrumbsNavigation_textColor:I

    sget v2, Lde/mdxdave/material/breadcrumbs/R$color;->default_text:I

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->textColor:I

    .line 69
    sget v1, Lde/mdxdave/material/breadcrumbs/R$styleable;->MaterialBreadcrumbsNavigation_arrowColor:I

    sget v2, Lde/mdxdave/material/breadcrumbs/R$color;->default_indicator:I

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->indicatorColor:I

    .line 70
    sget v1, Lde/mdxdave/material/breadcrumbs/R$styleable;->MaterialBreadcrumbsNavigation_backgroundColor:I

    sget v2, Lde/mdxdave/material/breadcrumbs/R$color;->default_background:I

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->backgroundColor:I

    .line 71
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 73
    invoke-virtual {p0, v0}, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->setOrientation(I)V

    const/16 p2, 0x10

    .line 74
    invoke-virtual {p0, p2}, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->setGravity(I)V

    const-string p2, "layout_inflater"

    .line 76
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 77
    sget p2, Lde/mdxdave/material/breadcrumbs/R$layout;->main_view:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->view:Landroid/view/View;

    .line 78
    iget-object p1, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->view:Landroid/view/View;

    sget p2, Lde/mdxdave/material/breadcrumbs/R$id;->horizontalScrollView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/HorizontalScrollView;

    iput-object p1, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->horizontalScrollView:Landroid/widget/HorizontalScrollView;

    .line 79
    iget-object p1, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->horizontalScrollView:Landroid/widget/HorizontalScrollView;

    iget p2, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->backgroundColor:I

    invoke-virtual {p1, p2}, Landroid/widget/HorizontalScrollView;->setBackgroundColor(I)V

    .line 80
    sget p1, Lde/mdxdave/material/breadcrumbs/R$id;->parent_view:I

    invoke-virtual {p0, p1}, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->viewGroup:Landroid/view/ViewGroup;

    .line 82
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->list:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;)Landroid/view/ViewGroup;
    .locals 0

    .line 45
    iget-object p0, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->viewGroup:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$100(Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;)Landroid/widget/HorizontalScrollView;
    .locals 0

    .line 45
    iget-object p0, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->horizontalScrollView:Landroid/widget/HorizontalScrollView;

    return-object p0
.end method

.method private addItem(Lde/mdxdave/materialbreadcrumbsnavigation/NavigationItem;IZZ)V
    .locals 6

    .line 158
    iget-object v0, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 159
    sget v1, Lde/mdxdave/material/breadcrumbs/R$layout;->item_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 164
    iget-object v2, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const/4 v2, -0x1

    if-ne p2, v2, :cond_2

    .line 166
    iget-object v2, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->viewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-gez v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 168
    :goto_0
    iget-object v2, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 171
    :cond_2
    iget-object v1, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v1, p2

    .line 174
    :goto_1
    sget v2, Lde/mdxdave/material/breadcrumbs/R$id;->breadcrumbnav_textView:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 175
    iget v3, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->textColor:I

    invoke-direct {p0, v3}, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->darkenColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 176
    invoke-virtual {p1}, Lde/mdxdave/materialbreadcrumbsnavigation/NavigationItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    invoke-virtual {p1, v1}, Lde/mdxdave/materialbreadcrumbsnavigation/NavigationItem;->setId(I)V

    .line 181
    new-instance p1, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation$1;

    invoke-direct {p1, p0, v1}, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation$1;-><init>(Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;I)V

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    sget p1, Lde/mdxdave/material/breadcrumbs/R$id;->breadcrumbnav_imageView:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 189
    iget v3, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->indicatorColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v3, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    if-eqz p3, :cond_3

    const/16 p3, 0x8

    .line 193
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 p1, 0x30

    const/16 p3, 0xc

    const/16 v3, 0x12

    .line 197
    invoke-virtual {p0}, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float p1, p1, v4

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr p1, v5

    float-to-int p1, p1

    int-to-float p3, p3

    mul-float p3, p3, v4

    add-float/2addr p3, v5

    float-to-int p3, p3

    int-to-float v3, v3

    mul-float v3, v3, v4

    add-float/2addr v3, v5

    float-to-int v3, v3

    .line 201
    invoke-virtual {v2, p1, v3, p3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 207
    :cond_3
    iget-object p1, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->horizontalScrollView:Landroid/widget/HorizontalScrollView;

    new-instance p3, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation$2;

    invoke-direct {p3, p0, v1}, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation$2;-><init>(Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;I)V

    invoke-virtual {p1, p3}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    .line 216
    iget-object p1, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->viewGroup:Landroid/view/ViewGroup;

    new-instance p3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {p3, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    if-nez p4, :cond_4

    .line 218
    invoke-virtual {p0}, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->getCurrent()I

    move-result p1

    if-eq p1, p2, :cond_4

    iget-object p1, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->list:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_5

    :cond_4
    const/4 p1, 0x1

    .line 219
    invoke-virtual {p0, v1, p1}, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->setActive(IZ)V

    :cond_5
    return-void
.end method

.method private darkenColor(I)I
    .locals 1

    const v0, 0x3f333333    # 0.7f

    .line 358
    invoke-static {p1, v0}, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->modifyColor(IF)I

    move-result p1

    return p1
.end method

.method private lightenColor(I)I
    .locals 1

    const v0, 0x3f99999a    # 1.2f

    .line 355
    invoke-static {p1, v0}, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->modifyColor(IF)I

    move-result p1

    return p1
.end method

.method private static modifyColor(IF)I
    .locals 4

    .line 343
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 344
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 345
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 346
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float v1, v1

    mul-float v1, v1, p1

    float-to-int v1, v1

    const/4 v3, 0x0

    .line 348
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v2, v2

    mul-float v2, v2, p1

    float-to-int v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float p0, p0

    mul-float p0, p0, p1

    float-to-int p0, p0

    invoke-static {p0, v3}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {v0, v1, v2, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method private remove(I)V
    .locals 4

    .line 227
    iget-object v0, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->viewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v1, v0

    :goto_0
    if-le v1, p1, :cond_0

    .line 229
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Remove"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v1, -0x1

    .line 230
    invoke-direct {p0, v2}, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->removeOnly(I)V

    .line 231
    iget-object v3, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private removeOnly(I)V
    .locals 1

    .line 223
    iget-object v0, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->viewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    return-void
.end method


# virtual methods
.method public addItem(Lde/mdxdave/materialbreadcrumbsnavigation/NavigationItem;)V
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 98
    invoke-direct {p0, p1, v0, v1, v2}, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->addItem(Lde/mdxdave/materialbreadcrumbsnavigation/NavigationItem;IZZ)V

    return-void
.end method

.method public addItem(Lde/mdxdave/materialbreadcrumbsnavigation/NavigationItem;Ljava/lang/Boolean;)V
    .locals 2

    .line 102
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->addItem(Lde/mdxdave/materialbreadcrumbsnavigation/NavigationItem;IZZ)V

    return-void
.end method

.method public addRootItem(Lde/mdxdave/materialbreadcrumbsnavigation/NavigationItem;)V
    .locals 1

    const/4 v0, 0x1

    .line 110
    invoke-virtual {p0, p1, v0}, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->addRootItem(Lde/mdxdave/materialbreadcrumbsnavigation/NavigationItem;Z)V

    return-void
.end method

.method public addRootItem(Lde/mdxdave/materialbreadcrumbsnavigation/NavigationItem;Z)V
    .locals 2

    .line 114
    iget-boolean v0, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->hasRootItem:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 115
    iput-boolean v0, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->hasRootItem:Z

    const/4 v1, -0x1

    .line 116
    invoke-direct {p0, p1, v1, v0, p2}, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->addItem(Lde/mdxdave/materialbreadcrumbsnavigation/NavigationItem;IZZ)V

    return-void

    .line 118
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Only one root item is allowed!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCurrent()I
    .locals 1

    .line 263
    iget v0, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->active:I

    return v0
.end method

.method public getItem(I)Lde/mdxdave/materialbreadcrumbsnavigation/NavigationItem;
    .locals 1

    .line 267
    iget-object v0, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lde/mdxdave/materialbreadcrumbsnavigation/NavigationItem;

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 94
    iget-object v0, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public isActive(I)Z
    .locals 1

    .line 259
    iget v0, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->active:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public removeAll()V
    .locals 1

    .line 152
    iget-object v0, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 153
    iget-object v0, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->viewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x0

    .line 154
    iput-boolean v0, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->hasRootItem:Z

    return-void
.end method

.method public removeItem(I)V
    .locals 3

    .line 247
    iget-object v0, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt p1, v0, :cond_2

    if-lez p1, :cond_1

    .line 250
    invoke-direct {p0, p1}, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->remove(I)V

    .line 251
    invoke-virtual {p0}, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->getCurrent()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    .line 252
    invoke-virtual {p0, p1, v0}, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->setActive(IZ)V

    :cond_0
    return-void

    .line 254
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You can not remove the root item!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 248
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There are only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " items, you can not remove the "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " one"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeLast()V
    .locals 2

    .line 236
    iget-object v0, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 237
    iget-object v0, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->remove(I)V

    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 239
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can not remove the root item!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "There are only one root item, so there is nothing to remove"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public replaceItem(ILde/mdxdave/materialbreadcrumbsnavigation/NavigationItem;)V
    .locals 1

    const/4 v0, 0x0

    .line 137
    invoke-virtual {p0, p1, p2, v0}, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->replaceItem(ILde/mdxdave/materialbreadcrumbsnavigation/NavigationItem;Z)V

    return-void
.end method

.method public replaceItem(ILde/mdxdave/materialbreadcrumbsnavigation/NavigationItem;Z)V
    .locals 1

    .line 141
    iget-object v0, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt p1, v0, :cond_1

    if-lez p1, :cond_0

    .line 144
    invoke-direct {p0, p1}, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->removeOnly(I)V

    const/4 v0, 0x0

    .line 145
    invoke-direct {p0, p2, p1, v0, p3}, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->addItem(Lde/mdxdave/materialbreadcrumbsnavigation/NavigationItem;IZZ)V

    return-void

    .line 147
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Use replaceRootItem to replace the root item"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 142
    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "There are only "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " items, you can not replace the "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " item"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public replaceRootItem(Lde/mdxdave/materialbreadcrumbsnavigation/NavigationItem;)V
    .locals 1

    const/4 v0, 0x0

    .line 123
    invoke-virtual {p0, p1, v0}, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->replaceRootItem(Lde/mdxdave/materialbreadcrumbsnavigation/NavigationItem;Z)V

    return-void
.end method

.method public replaceRootItem(Lde/mdxdave/materialbreadcrumbsnavigation/NavigationItem;Z)V
    .locals 1

    .line 127
    iget-boolean v0, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->hasRootItem:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 128
    invoke-direct {p0, v0}, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->removeOnly(I)V

    .line 129
    iput-boolean v0, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->hasRootItem:Z

    .line 130
    invoke-virtual {p0, p1, p2}, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->addRootItem(Lde/mdxdave/materialbreadcrumbsnavigation/NavigationItem;Z)V

    return-void

    .line 132
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "There are no root item, so you can not replace it"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public replaceTitle(ILjava/lang/String;)V
    .locals 2

    .line 271
    iget-object v0, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt p1, v0, :cond_1

    .line 274
    iget-object v0, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mdxdave/materialbreadcrumbsnavigation/NavigationItem;

    .line 275
    invoke-virtual {v0, p2}, Lde/mdxdave/materialbreadcrumbsnavigation/NavigationItem;->setTitle(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 277
    invoke-virtual {p0, v0}, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->replaceRootItem(Lde/mdxdave/materialbreadcrumbsnavigation/NavigationItem;)V

    goto :goto_0

    .line 279
    :cond_0
    invoke-virtual {p0, p1, v0}, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->replaceItem(ILde/mdxdave/materialbreadcrumbsnavigation/NavigationItem;)V

    :goto_0
    return-void

    .line 272
    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "There are only "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " items, you can not replace the title of the  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " one"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setActive(I)V
    .locals 1

    const/4 v0, 0x1

    .line 283
    invoke-virtual {p0, p1, v0}, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->setActive(IZ)V

    return-void
.end method

.method public setActive(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 334
    invoke-virtual {p0, p1, p2, v0}, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->setActive(IZZ)V

    return-void
.end method

.method public setActive(IZZ)V
    .locals 3

    .line 287
    iget-object v0, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt p1, v0, :cond_5

    .line 290
    iput p1, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->active:I

    const/4 v0, 0x0

    .line 292
    :goto_0
    iget-object v1, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->viewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 293
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "view"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v1, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->viewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lde/mdxdave/material/breadcrumbs/R$id;->breadcrumbnav_textView:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget v2, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->textColor:I

    invoke-direct {p0, v2}, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->darkenColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 298
    :cond_0
    :try_start_0
    iget-object v0, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->viewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 299
    sget v1, Lde/mdxdave/material/breadcrumbs/R$id;->breadcrumbnav_textView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 300
    iget v2, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->textColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p2, :cond_1

    .line 303
    iget-object p2, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->horizontalScrollView:Landroid/widget/HorizontalScrollView;

    new-instance v1, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation$3;

    invoke-direct {v1, p0, v0}, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation$3;-><init>(Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;Landroid/view/View;)V

    invoke-virtual {p2, v1}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    .line 310
    :cond_1
    iget-object p2, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->list:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lde/mdxdave/materialbreadcrumbsnavigation/NavigationItem;

    .line 311
    invoke-virtual {p2}, Lde/mdxdave/materialbreadcrumbsnavigation/NavigationItem;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 312
    invoke-virtual {p2}, Lde/mdxdave/materialbreadcrumbsnavigation/NavigationItem;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object p2

    .line 313
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    if-nez p3, :cond_2

    .line 315
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :cond_2
    const-string v0, "materialBreadcrumbsPosition"

    add-int/lit8 p1, p1, -0x1

    .line 317
    invoke-virtual {p3, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 319
    :try_start_1
    invoke-virtual {p2, p3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 323
    :catch_0
    :try_start_2
    iget-object p1, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget p3, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->fragmentLayout:I

    invoke-virtual {p1, p3, p2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_1

    .line 324
    :cond_3
    invoke-virtual {p2}, Lde/mdxdave/materialbreadcrumbsnavigation/NavigationItem;->getObject()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    if-eqz p3, :cond_4

    .line 325
    iget-object p1, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->breadcrumbClickListener:Lde/mdxdave/materialbreadcrumbsnavigation/BreadcrumbClickListener;

    invoke-interface {p1, p2}, Lde/mdxdave/materialbreadcrumbsnavigation/BreadcrumbClickListener;->onClick(Lde/mdxdave/materialbreadcrumbsnavigation/NavigationItem;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 328
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_4
    :goto_1
    return-void

    .line 288
    :cond_5
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "There are only "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " items, you can not call the "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " one"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 86
    iget-object v0, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->horizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, p1}, Landroid/widget/HorizontalScrollView;->setBackgroundColor(I)V

    return-void
.end method

.method public setBreadcrumbClickListener(Lde/mdxdave/materialbreadcrumbsnavigation/BreadcrumbClickListener;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->breadcrumbClickListener:Lde/mdxdave/materialbreadcrumbsnavigation/BreadcrumbClickListener;

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 90
    iput p1, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->textColor:I

    return-void
.end method

.method public setupFragment(ILandroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 338
    iput p1, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->fragmentLayout:I

    .line 339
    iput-object p2, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    return-void
.end method
