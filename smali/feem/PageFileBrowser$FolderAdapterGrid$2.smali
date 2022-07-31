.class Lfeem/PageFileBrowser$FolderAdapterGrid$2;
.super Ljava/lang/Object;
.source "PageFileBrowser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfeem/PageFileBrowser$FolderAdapterGrid;->onBindViewHolder(Lfeem/PageFileBrowser$FolderViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lfeem/PageFileBrowser$FolderAdapterGrid;

.field final synthetic val$f:Lfeem/PageFileBrowser$FeemFileOrFolder;


# direct methods
.method constructor <init>(Lfeem/PageFileBrowser$FolderAdapterGrid;Lfeem/PageFileBrowser$FeemFileOrFolder;)V
    .locals 0

    .line 638
    iput-object p1, p0, Lfeem/PageFileBrowser$FolderAdapterGrid$2;->this$1:Lfeem/PageFileBrowser$FolderAdapterGrid;

    iput-object p2, p0, Lfeem/PageFileBrowser$FolderAdapterGrid$2;->val$f:Lfeem/PageFileBrowser$FeemFileOrFolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 642
    iget-object p1, p0, Lfeem/PageFileBrowser$FolderAdapterGrid$2;->this$1:Lfeem/PageFileBrowser$FolderAdapterGrid;

    iget-object p1, p1, Lfeem/PageFileBrowser$FolderAdapterGrid;->this$0:Lfeem/PageFileBrowser;

    iget-object v0, p0, Lfeem/PageFileBrowser$FolderAdapterGrid$2;->val$f:Lfeem/PageFileBrowser$FeemFileOrFolder;

    iget-object v0, v0, Lfeem/PageFileBrowser$FeemFileOrFolder;->filePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lfeem/PageFileBrowser;->setCurrentFolder(Ljava/lang/String;)V

    return-void
.end method
