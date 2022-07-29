.class Lfeem/FeemFolderSelect$FolderAdapterGrid$1;
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

.field final synthetic val$holder:Lfeem/FeemFolderSelect$FolderViewHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lfeem/FeemFolderSelect$FolderAdapterGrid;Lfeem/FeemFolderSelect$FeemFileOrFolder;ILfeem/FeemFolderSelect$FolderViewHolder;)V
    .locals 0

    .line 570
    iput-object p1, p0, Lfeem/FeemFolderSelect$FolderAdapterGrid$1;->this$1:Lfeem/FeemFolderSelect$FolderAdapterGrid;

    iput-object p2, p0, Lfeem/FeemFolderSelect$FolderAdapterGrid$1;->val$f:Lfeem/FeemFolderSelect$FeemFileOrFolder;

    iput p3, p0, Lfeem/FeemFolderSelect$FolderAdapterGrid$1;->val$position:I

    iput-object p4, p0, Lfeem/FeemFolderSelect$FolderAdapterGrid$1;->val$holder:Lfeem/FeemFolderSelect$FolderViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 573
    iget-object p1, p0, Lfeem/FeemFolderSelect$FolderAdapterGrid$1;->val$f:Lfeem/FeemFolderSelect$FeemFileOrFolder;

    iget-object p1, p1, Lfeem/FeemFolderSelect$FeemFileOrFolder;->filePath:Ljava/lang/String;

    .line 574
    iget-object v0, p0, Lfeem/FeemFolderSelect$FolderAdapterGrid$1;->this$1:Lfeem/FeemFolderSelect$FolderAdapterGrid;

    iget v1, p0, Lfeem/FeemFolderSelect$FolderAdapterGrid$1;->val$position:I

    iget-object v2, p0, Lfeem/FeemFolderSelect$FolderAdapterGrid$1;->val$holder:Lfeem/FeemFolderSelect$FolderViewHolder;

    invoke-virtual {v0, v1, p1, v2}, Lfeem/FeemFolderSelect$FolderAdapterGrid;->feemItemClicked(ILjava/lang/String;Lfeem/FeemFolderSelect$FolderViewHolder;)V

    .line 580
    iget-object p1, p0, Lfeem/FeemFolderSelect$FolderAdapterGrid$1;->val$holder:Lfeem/FeemFolderSelect$FolderViewHolder;

    invoke-virtual {p1}, Lfeem/FeemFolderSelect$FolderViewHolder;->updateCell()V

    return-void
.end method
