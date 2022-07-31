.class Lfeem/PageFileBrowser$FolderViewHolder$1;
.super Landroid/content/BroadcastReceiver;
.source "PageFileBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfeem/PageFileBrowser$FolderViewHolder;-><init>(Lfeem/PageFileBrowser;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lfeem/PageFileBrowser$FolderViewHolder;

.field final synthetic val$this$0:Lfeem/PageFileBrowser;


# direct methods
.method constructor <init>(Lfeem/PageFileBrowser$FolderViewHolder;Lfeem/PageFileBrowser;)V
    .locals 0

    .line 408
    iput-object p1, p0, Lfeem/PageFileBrowser$FolderViewHolder$1;->this$1:Lfeem/PageFileBrowser$FolderViewHolder;

    iput-object p2, p0, Lfeem/PageFileBrowser$FolderViewHolder$1;->val$this$0:Lfeem/PageFileBrowser;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 412
    iget-object p1, p0, Lfeem/PageFileBrowser$FolderViewHolder$1;->this$1:Lfeem/PageFileBrowser$FolderViewHolder;

    invoke-virtual {p1}, Lfeem/PageFileBrowser$FolderViewHolder;->updateCell()V

    return-void
.end method
