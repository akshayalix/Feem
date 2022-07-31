.class Lfeem/PageFileBrowser$FolderAdapterGrid$1;
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

.field final synthetic val$holder:Lfeem/PageFileBrowser$FolderViewHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lfeem/PageFileBrowser$FolderAdapterGrid;Lfeem/PageFileBrowser$FeemFileOrFolder;ILfeem/PageFileBrowser$FolderViewHolder;)V
    .locals 0

    .line 609
    iput-object p1, p0, Lfeem/PageFileBrowser$FolderAdapterGrid$1;->this$1:Lfeem/PageFileBrowser$FolderAdapterGrid;

    iput-object p2, p0, Lfeem/PageFileBrowser$FolderAdapterGrid$1;->val$f:Lfeem/PageFileBrowser$FeemFileOrFolder;

    iput p3, p0, Lfeem/PageFileBrowser$FolderAdapterGrid$1;->val$position:I

    iput-object p4, p0, Lfeem/PageFileBrowser$FolderAdapterGrid$1;->val$holder:Lfeem/PageFileBrowser$FolderViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 612
    iget-object p1, p0, Lfeem/PageFileBrowser$FolderAdapterGrid$1;->val$f:Lfeem/PageFileBrowser$FeemFileOrFolder;

    iget-object p1, p1, Lfeem/PageFileBrowser$FeemFileOrFolder;->filePath:Ljava/lang/String;

    .line 613
    iget-object v0, p0, Lfeem/PageFileBrowser$FolderAdapterGrid$1;->this$1:Lfeem/PageFileBrowser$FolderAdapterGrid;

    iget v1, p0, Lfeem/PageFileBrowser$FolderAdapterGrid$1;->val$position:I

    iget-object v2, p0, Lfeem/PageFileBrowser$FolderAdapterGrid$1;->val$holder:Lfeem/PageFileBrowser$FolderViewHolder;

    invoke-virtual {v0, v1, p1, v2}, Lfeem/PageFileBrowser$FolderAdapterGrid;->feemItemClicked(ILjava/lang/String;Lfeem/PageFileBrowser$FolderViewHolder;)V

    .line 614
    iget-object v0, p0, Lfeem/PageFileBrowser$FolderAdapterGrid$1;->this$1:Lfeem/PageFileBrowser$FolderAdapterGrid;

    iget-object v0, v0, Lfeem/PageFileBrowser$FolderAdapterGrid;->this$0:Lfeem/PageFileBrowser;

    iget-object v0, v0, Lfeem/PageFileBrowser;->m_selected_items:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lfeem/PageFileBrowser$FolderAdapterGrid$1;->this$1:Lfeem/PageFileBrowser$FolderAdapterGrid;

    iget-object v0, v0, Lfeem/PageFileBrowser$FolderAdapterGrid;->this$0:Lfeem/PageFileBrowser;

    iget-object v0, v0, Lfeem/PageFileBrowser;->m_selected_items:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 617
    :cond_0
    iget-object v0, p0, Lfeem/PageFileBrowser$FolderAdapterGrid$1;->this$1:Lfeem/PageFileBrowser$FolderAdapterGrid;

    iget-object v0, v0, Lfeem/PageFileBrowser$FolderAdapterGrid;->this$0:Lfeem/PageFileBrowser;

    iget-object v0, v0, Lfeem/PageFileBrowser;->m_selected_items:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 619
    :goto_0
    iget-object p1, p0, Lfeem/PageFileBrowser$FolderAdapterGrid$1;->val$holder:Lfeem/PageFileBrowser$FolderViewHolder;

    invoke-virtual {p1}, Lfeem/PageFileBrowser$FolderViewHolder;->updateCell()V

    .line 620
    iget-object p1, p0, Lfeem/PageFileBrowser$FolderAdapterGrid$1;->this$1:Lfeem/PageFileBrowser$FolderAdapterGrid;

    iget-object p1, p1, Lfeem/PageFileBrowser$FolderAdapterGrid;->this$0:Lfeem/PageFileBrowser;

    invoke-virtual {p1}, Lfeem/PageFileBrowser;->update_footer_panel_visibility()V

    return-void
.end method
