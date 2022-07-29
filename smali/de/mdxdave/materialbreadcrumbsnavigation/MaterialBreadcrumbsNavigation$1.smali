.class Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation$1;
.super Ljava/lang/Object;
.source "MaterialBreadcrumbsNavigation.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->addItem(Lde/mdxdave/materialbreadcrumbsnavigation/NavigationItem;IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;

.field final synthetic val$finalLast:I


# direct methods
.method constructor <init>(Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;I)V
    .locals 0

    .line 181
    iput-object p1, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation$1;->this$0:Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;

    iput p2, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation$1;->val$finalLast:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 184
    iget-object p1, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation$1;->this$0:Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;

    iget v0, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation$1;->val$finalLast:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->setActive(IZZ)V

    return-void
.end method
