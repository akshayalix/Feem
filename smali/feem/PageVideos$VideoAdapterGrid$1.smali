.class Lfeem/PageVideos$VideoAdapterGrid$1;
.super Ljava/lang/Object;
.source "PageVideos.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfeem/PageVideos$VideoAdapterGrid;->onBindViewHolder(Lfeem/PageVideos$VideoViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lfeem/PageVideos$VideoAdapterGrid;

.field final synthetic val$f:Lfeem/PageVideos$FeemVideo;

.field final synthetic val$holder:Lfeem/PageVideos$VideoViewHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lfeem/PageVideos$VideoAdapterGrid;Lfeem/PageVideos$FeemVideo;ILfeem/PageVideos$VideoViewHolder;)V
    .locals 0

    .line 427
    iput-object p1, p0, Lfeem/PageVideos$VideoAdapterGrid$1;->this$1:Lfeem/PageVideos$VideoAdapterGrid;

    iput-object p2, p0, Lfeem/PageVideos$VideoAdapterGrid$1;->val$f:Lfeem/PageVideos$FeemVideo;

    iput p3, p0, Lfeem/PageVideos$VideoAdapterGrid$1;->val$position:I

    iput-object p4, p0, Lfeem/PageVideos$VideoAdapterGrid$1;->val$holder:Lfeem/PageVideos$VideoViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 430
    iget-object p1, p0, Lfeem/PageVideos$VideoAdapterGrid$1;->val$f:Lfeem/PageVideos$FeemVideo;

    iget-object p1, p1, Lfeem/PageVideos$FeemVideo;->videoSource:Ljava/lang/String;

    .line 431
    iget-object v0, p0, Lfeem/PageVideos$VideoAdapterGrid$1;->this$1:Lfeem/PageVideos$VideoAdapterGrid;

    iget v1, p0, Lfeem/PageVideos$VideoAdapterGrid$1;->val$position:I

    iget-object v2, p0, Lfeem/PageVideos$VideoAdapterGrid$1;->val$holder:Lfeem/PageVideos$VideoViewHolder;

    invoke-virtual {v0, v1, p1, v2}, Lfeem/PageVideos$VideoAdapterGrid;->feemItemClicked(ILjava/lang/String;Lfeem/PageVideos$VideoViewHolder;)V

    .line 432
    iget-object v0, p0, Lfeem/PageVideos$VideoAdapterGrid$1;->this$1:Lfeem/PageVideos$VideoAdapterGrid;

    iget-object v0, v0, Lfeem/PageVideos$VideoAdapterGrid;->this$0:Lfeem/PageVideos;

    iget-object v0, v0, Lfeem/PageVideos;->m_selected_items:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lfeem/PageVideos$VideoAdapterGrid$1;->this$1:Lfeem/PageVideos$VideoAdapterGrid;

    iget-object v0, v0, Lfeem/PageVideos$VideoAdapterGrid;->this$0:Lfeem/PageVideos;

    iget-object v0, v0, Lfeem/PageVideos;->m_selected_items:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 435
    :cond_0
    iget-object v0, p0, Lfeem/PageVideos$VideoAdapterGrid$1;->this$1:Lfeem/PageVideos$VideoAdapterGrid;

    iget-object v0, v0, Lfeem/PageVideos$VideoAdapterGrid;->this$0:Lfeem/PageVideos;

    iget-object v0, v0, Lfeem/PageVideos;->m_selected_items:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 437
    :goto_0
    iget-object p1, p0, Lfeem/PageVideos$VideoAdapterGrid$1;->val$holder:Lfeem/PageVideos$VideoViewHolder;

    invoke-virtual {p1}, Lfeem/PageVideos$VideoViewHolder;->updateCell()V

    .line 438
    iget-object p1, p0, Lfeem/PageVideos$VideoAdapterGrid$1;->this$1:Lfeem/PageVideos$VideoAdapterGrid;

    iget-object p1, p1, Lfeem/PageVideos$VideoAdapterGrid;->this$0:Lfeem/PageVideos;

    invoke-virtual {p1}, Lfeem/PageVideos;->update_footer_panel_visibility()V

    return-void
.end method
