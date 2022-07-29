.class Lfeem/FeemFolderSelect$FolderAdapterGrid$2;
.super Ljava/lang/Object;
.source "FeemFolderSelect.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfeem/FeemFolderSelect$FolderAdapterGrid;->onBindViewHolder(Lfeem/FeemFolderSelect$FolderViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lfeem/FeemFolderSelect$FolderAdapterGrid;

.field final synthetic val$f:Lfeem/FeemFolderSelect$FeemFileOrFolder;


# direct methods
.method constructor <init>(Lfeem/FeemFolderSelect$FolderAdapterGrid;Lfeem/FeemFolderSelect$FeemFileOrFolder;)V
    .locals 0

    .line 599
    iput-object p1, p0, Lfeem/FeemFolderSelect$FolderAdapterGrid$2;->this$1:Lfeem/FeemFolderSelect$FolderAdapterGrid;

    iput-object p2, p0, Lfeem/FeemFolderSelect$FolderAdapterGrid$2;->val$f:Lfeem/FeemFolderSelect$FeemFileOrFolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 603
    iget-object p1, p0, Lfeem/FeemFolderSelect$FolderAdapterGrid$2;->this$1:Lfeem/FeemFolderSelect$FolderAdapterGrid;

    iget-object p1, p1, Lfeem/FeemFolderSelect$FolderAdapterGrid;->this$0:Lfeem/FeemFolderSelect;

    iget-object v0, p0, Lfeem/FeemFolderSelect$FolderAdapterGrid$2;->val$f:Lfeem/FeemFolderSelect$FeemFileOrFolder;

    iget-object v0, v0, Lfeem/FeemFolderSelect$FeemFileOrFolder;->filePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lfeem/FeemFolderSelect;->setCurrentFolder(Ljava/lang/String;)V

    return-void
.end method
