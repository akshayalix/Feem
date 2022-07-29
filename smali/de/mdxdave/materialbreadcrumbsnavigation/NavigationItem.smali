.class public Lde/mdxdave/materialbreadcrumbsnavigation/NavigationItem;
.super Ljava/lang/Object;
.source "NavigationItem.java"


# instance fields
.field private Id:I

.field private Tag:Ljava/lang/String;

.field private Title:Ljava/lang/String;

.field private fragment:Landroidx/fragment/app/Fragment;

.field private object:Ljava/lang/Object;


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lde/mdxdave/materialbreadcrumbsnavigation/NavigationItem;->Id:I

    .line 47
    iput-object p2, p0, Lde/mdxdave/materialbreadcrumbsnavigation/NavigationItem;->Title:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lde/mdxdave/materialbreadcrumbsnavigation/NavigationItem;->Tag:Ljava/lang/String;

    .line 49
    iput-object p4, p0, Lde/mdxdave/materialbreadcrumbsnavigation/NavigationItem;->fragment:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    const-string v1, ""

    const/4 v2, 0x0

    .line 32
    invoke-direct {p0, v0, p1, v1, v2}, Lde/mdxdave/materialbreadcrumbsnavigation/NavigationItem;-><init>(ILjava/lang/String;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, ""

    .line 42
    invoke-direct {p0, v0, p1, v1, p2}, Lde/mdxdave/materialbreadcrumbsnavigation/NavigationItem;-><init>(ILjava/lang/String;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lde/mdxdave/materialbreadcrumbsnavigation/NavigationItem;->Id:I

    .line 37
    iput-object p1, p0, Lde/mdxdave/materialbreadcrumbsnavigation/NavigationItem;->Title:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lde/mdxdave/materialbreadcrumbsnavigation/NavigationItem;->object:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 61
    iget-object v0, p0, Lde/mdxdave/materialbreadcrumbsnavigation/NavigationItem;->fragment:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 73
    iget v0, p0, Lde/mdxdave/materialbreadcrumbsnavigation/NavigationItem;->Id:I

    return v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .line 81
    iget-object v0, p0, Lde/mdxdave/materialbreadcrumbsnavigation/NavigationItem;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lde/mdxdave/materialbreadcrumbsnavigation/NavigationItem;->Tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lde/mdxdave/materialbreadcrumbsnavigation/NavigationItem;->Title:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .locals 0

    .line 57
    iput p1, p0, Lde/mdxdave/materialbreadcrumbsnavigation/NavigationItem;->Id:I

    return-void
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lde/mdxdave/materialbreadcrumbsnavigation/NavigationItem;->object:Ljava/lang/Object;

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lde/mdxdave/materialbreadcrumbsnavigation/NavigationItem;->Tag:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lde/mdxdave/materialbreadcrumbsnavigation/NavigationItem;->Title:Ljava/lang/String;

    return-void
.end method
