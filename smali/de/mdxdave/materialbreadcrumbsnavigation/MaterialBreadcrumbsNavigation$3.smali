.class Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation$3;
.super Ljava/lang/Object;
.source "MaterialBreadcrumbsNavigation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->setActive(IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;Landroid/view/View;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation$3;->this$0:Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;

    iput-object p2, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation$3;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 306
    iget-object v0, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation$3;->this$0:Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;

    invoke-static {v0}, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->access$100(Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    iget-object v1, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation$3;->val$v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    return-void
.end method
