.class Lfeem/PageFileBrowser$4;
.super Ljava/lang/Object;
.source "PageFileBrowser.java"

# interfaces
.implements Lde/mdxdave/materialbreadcrumbsnavigation/BreadcrumbClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfeem/PageFileBrowser;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfeem/PageFileBrowser;


# direct methods
.method constructor <init>(Lfeem/PageFileBrowser;)V
    .locals 0

    .line 972
    iput-object p1, p0, Lfeem/PageFileBrowser$4;->this$0:Lfeem/PageFileBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lde/mdxdave/materialbreadcrumbsnavigation/NavigationItem;)V
    .locals 1

    .line 976
    invoke-virtual {p1}, Lde/mdxdave/materialbreadcrumbsnavigation/NavigationItem;->getObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 977
    iget-object v0, p0, Lfeem/PageFileBrowser$4;->this$0:Lfeem/PageFileBrowser;

    invoke-virtual {v0, p1}, Lfeem/PageFileBrowser;->setCurrentFolder(Ljava/lang/String;)V

    return-void
.end method
