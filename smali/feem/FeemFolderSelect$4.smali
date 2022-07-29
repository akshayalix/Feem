.class Lfeem/FeemFolderSelect$4;
.super Ljava/lang/Object;
.source "FeemFolderSelect.java"

# interfaces
.implements Lde/mdxdave/materialbreadcrumbsnavigation/BreadcrumbClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfeem/FeemFolderSelect;->onPostCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfeem/FeemFolderSelect;


# direct methods
.method constructor <init>(Lfeem/FeemFolderSelect;)V
    .locals 0

    .line 904
    iput-object p1, p0, Lfeem/FeemFolderSelect$4;->this$0:Lfeem/FeemFolderSelect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lde/mdxdave/materialbreadcrumbsnavigation/NavigationItem;)V
    .locals 1

    .line 908
    invoke-virtual {p1}, Lde/mdxdave/materialbreadcrumbsnavigation/NavigationItem;->getObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 909
    iget-object v0, p0, Lfeem/FeemFolderSelect$4;->this$0:Lfeem/FeemFolderSelect;

    invoke-virtual {v0, p1}, Lfeem/FeemFolderSelect;->setCurrentFolder(Ljava/lang/String;)V

    return-void
.end method
