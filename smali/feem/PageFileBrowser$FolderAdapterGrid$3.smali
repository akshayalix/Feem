.class Lfeem/PageFileBrowser$FolderAdapterGrid$3;
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


# direct methods
.method constructor <init>(Lfeem/PageFileBrowser$FolderAdapterGrid;Lfeem/PageFileBrowser$FeemFileOrFolder;Lfeem/PageFileBrowser$FolderViewHolder;)V
    .locals 0

    .line 651
    iput-object p1, p0, Lfeem/PageFileBrowser$FolderAdapterGrid$3;->this$1:Lfeem/PageFileBrowser$FolderAdapterGrid;

    iput-object p2, p0, Lfeem/PageFileBrowser$FolderAdapterGrid$3;->val$f:Lfeem/PageFileBrowser$FeemFileOrFolder;

    iput-object p3, p0, Lfeem/PageFileBrowser$FolderAdapterGrid$3;->val$holder:Lfeem/PageFileBrowser$FolderViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 655
    iget-object p1, p0, Lfeem/PageFileBrowser$FolderAdapterGrid$3;->val$f:Lfeem/PageFileBrowser$FeemFileOrFolder;

    iget-object p1, p1, Lfeem/PageFileBrowser$FeemFileOrFolder;->filePath:Ljava/lang/String;

    .line 656
    iget-object v0, p0, Lfeem/PageFileBrowser$FolderAdapterGrid$3;->this$1:Lfeem/PageFileBrowser$FolderAdapterGrid;

    iget-object v0, v0, Lfeem/PageFileBrowser$FolderAdapterGrid;->this$0:Lfeem/PageFileBrowser;

    iget-object v0, v0, Lfeem/PageFileBrowser;->m_selected_items:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Lfeem/PageFileBrowser$FolderAdapterGrid$3;->this$1:Lfeem/PageFileBrowser$FolderAdapterGrid;

    iget-object v0, v0, Lfeem/PageFileBrowser$FolderAdapterGrid;->this$0:Lfeem/PageFileBrowser;

    iget-object v0, v0, Lfeem/PageFileBrowser;->m_selected_items:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 659
    :cond_0
    iget-object v0, p0, Lfeem/PageFileBrowser$FolderAdapterGrid$3;->this$1:Lfeem/PageFileBrowser$FolderAdapterGrid;

    iget-object v0, v0, Lfeem/PageFileBrowser$FolderAdapterGrid;->this$0:Lfeem/PageFileBrowser;

    iget-object v0, v0, Lfeem/PageFileBrowser;->m_selected_items:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 661
    :goto_0
    iget-object p1, p0, Lfeem/PageFileBrowser$FolderAdapterGrid$3;->val$holder:Lfeem/PageFileBrowser$FolderViewHolder;

    invoke-virtual {p1}, Lfeem/PageFileBrowser$FolderViewHolder;->updateCell()V

    .line 662
    iget-object p1, p0, Lfeem/PageFileBrowser$FolderAdapterGrid$3;->this$1:Lfeem/PageFileBrowser$FolderAdapterGrid;

    iget-object p1, p1, Lfeem/PageFileBrowser$FolderAdapterGrid;->this$0:Lfeem/PageFileBrowser;

    invoke-virtual {p1}, Lfeem/PageFileBrowser;->update_footer_panel_visibility()V

    return-void
.end method
