.class Lfeem/FeemFolderSelect$FolderViewHolder$1;
.super Landroid/content/BroadcastReceiver;
.source "FeemFolderSelect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfeem/FeemFolderSelect$FolderViewHolder;-><init>(Lfeem/FeemFolderSelect;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lfeem/FeemFolderSelect$FolderViewHolder;

.field final synthetic val$this$0:Lfeem/FeemFolderSelect;


# direct methods
.method constructor <init>(Lfeem/FeemFolderSelect$FolderViewHolder;Lfeem/FeemFolderSelect;)V
    .locals 0

    .line 369
    iput-object p1, p0, Lfeem/FeemFolderSelect$FolderViewHolder$1;->this$1:Lfeem/FeemFolderSelect$FolderViewHolder;

    iput-object p2, p0, Lfeem/FeemFolderSelect$FolderViewHolder$1;->val$this$0:Lfeem/FeemFolderSelect;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 373
    iget-object p1, p0, Lfeem/FeemFolderSelect$FolderViewHolder$1;->this$1:Lfeem/FeemFolderSelect$FolderViewHolder;

    invoke-virtual {p1}, Lfeem/FeemFolderSelect$FolderViewHolder;->updateCell()V

    return-void
.end method
