.class Lfeem/PageAudio$AudioAdapterGrid$1;
.super Ljava/lang/Object;
.source "PageAudio.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfeem/PageAudio$AudioAdapterGrid;->onBindViewHolder(Lfeem/PageAudio$AudioViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lfeem/PageAudio$AudioAdapterGrid;

.field final synthetic val$f:Lfeem/PageAudio$FeemAudio;

.field final synthetic val$holder:Lfeem/PageAudio$AudioViewHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lfeem/PageAudio$AudioAdapterGrid;Lfeem/PageAudio$FeemAudio;ILfeem/PageAudio$AudioViewHolder;)V
    .locals 0

    .line 504
    iput-object p1, p0, Lfeem/PageAudio$AudioAdapterGrid$1;->this$1:Lfeem/PageAudio$AudioAdapterGrid;

    iput-object p2, p0, Lfeem/PageAudio$AudioAdapterGrid$1;->val$f:Lfeem/PageAudio$FeemAudio;

    iput p3, p0, Lfeem/PageAudio$AudioAdapterGrid$1;->val$position:I

    iput-object p4, p0, Lfeem/PageAudio$AudioAdapterGrid$1;->val$holder:Lfeem/PageAudio$AudioViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 507
    iget-object p1, p0, Lfeem/PageAudio$AudioAdapterGrid$1;->val$f:Lfeem/PageAudio$FeemAudio;

    iget-object p1, p1, Lfeem/PageAudio$FeemAudio;->audioSource:Ljava/lang/String;

    .line 508
    iget-object v0, p0, Lfeem/PageAudio$AudioAdapterGrid$1;->this$1:Lfeem/PageAudio$AudioAdapterGrid;

    iget v1, p0, Lfeem/PageAudio$AudioAdapterGrid$1;->val$position:I

    iget-object v2, p0, Lfeem/PageAudio$AudioAdapterGrid$1;->val$holder:Lfeem/PageAudio$AudioViewHolder;

    invoke-virtual {v0, v1, p1, v2}, Lfeem/PageAudio$AudioAdapterGrid;->feemItemClicked(ILjava/lang/String;Lfeem/PageAudio$AudioViewHolder;)V

    .line 509
    iget-object v0, p0, Lfeem/PageAudio$AudioAdapterGrid$1;->this$1:Lfeem/PageAudio$AudioAdapterGrid;

    iget-object v0, v0, Lfeem/PageAudio$AudioAdapterGrid;->this$0:Lfeem/PageAudio;

    iget-object v0, v0, Lfeem/PageAudio;->m_selected_items:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lfeem/PageAudio$AudioAdapterGrid$1;->this$1:Lfeem/PageAudio$AudioAdapterGrid;

    iget-object v0, v0, Lfeem/PageAudio$AudioAdapterGrid;->this$0:Lfeem/PageAudio;

    iget-object v0, v0, Lfeem/PageAudio;->m_selected_items:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 512
    :cond_0
    iget-object v0, p0, Lfeem/PageAudio$AudioAdapterGrid$1;->this$1:Lfeem/PageAudio$AudioAdapterGrid;

    iget-object v0, v0, Lfeem/PageAudio$AudioAdapterGrid;->this$0:Lfeem/PageAudio;

    iget-object v0, v0, Lfeem/PageAudio;->m_selected_items:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 514
    :goto_0
    iget-object p1, p0, Lfeem/PageAudio$AudioAdapterGrid$1;->val$holder:Lfeem/PageAudio$AudioViewHolder;

    invoke-virtual {p1}, Lfeem/PageAudio$AudioViewHolder;->updateCell()V

    .line 515
    iget-object p1, p0, Lfeem/PageAudio$AudioAdapterGrid$1;->this$1:Lfeem/PageAudio$AudioAdapterGrid;

    iget-object p1, p1, Lfeem/PageAudio$AudioAdapterGrid;->this$0:Lfeem/PageAudio;

    invoke-virtual {p1}, Lfeem/PageAudio;->update_footer_panel_visibility()V

    return-void
.end method
