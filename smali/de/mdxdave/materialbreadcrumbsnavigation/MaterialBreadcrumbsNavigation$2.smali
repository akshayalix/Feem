.class Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation$2;
.super Ljava/lang/Object;
.source "MaterialBreadcrumbsNavigation.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$finalLast1:I


# direct methods
.method constructor <init>(Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;I)V
    .locals 0

    .line 207
    iput-object p1, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation$2;->this$0:Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;

    iput p2, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation$2;->val$finalLast1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 210
    iget v0, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation$2;->val$finalLast1:I

    iget-object v1, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation$2;->this$0:Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;

    invoke-static {v1}, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->access$000(Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 211
    iget-object v0, p0, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation$2;->this$0:Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;

    invoke-static {v0}, Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;->access$100(Lde/mdxdave/materialbreadcrumbsnavigation/MaterialBreadcrumbsNavigation;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    :cond_0
    return-void
.end method
