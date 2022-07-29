.class Lfeem/PageAudio$AudioAdapterGrid$2;
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


# direct methods
.method constructor <init>(Lfeem/PageAudio$AudioAdapterGrid;Lfeem/PageAudio$FeemAudio;)V
    .locals 0

    .line 530
    iput-object p1, p0, Lfeem/PageAudio$AudioAdapterGrid$2;->this$1:Lfeem/PageAudio$AudioAdapterGrid;

    iput-object p2, p0, Lfeem/PageAudio$AudioAdapterGrid$2;->val$f:Lfeem/PageAudio$FeemAudio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 534
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lfeem/PageAudio$AudioAdapterGrid$2;->val$f:Lfeem/PageAudio$FeemAudio;

    iget-object v0, v0, Lfeem/PageAudio$FeemAudio;->artist:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lfeem/PageAudio$AudioAdapterGrid$2;->val$f:Lfeem/PageAudio$FeemAudio;

    iget-object v0, v0, Lfeem/PageAudio$FeemAudio;->albumName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 535
    iget-object v0, p0, Lfeem/PageAudio$AudioAdapterGrid$2;->this$1:Lfeem/PageAudio$AudioAdapterGrid;

    iget-object v0, v0, Lfeem/PageAudio$AudioAdapterGrid;->this$0:Lfeem/PageAudio;

    iget-object v0, v0, Lfeem/PageAudio;->m_selected_items:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lfeem/PageAudio$AudioAdapterGrid$2;->this$1:Lfeem/PageAudio$AudioAdapterGrid;

    iget-object v0, v0, Lfeem/PageAudio$AudioAdapterGrid;->this$0:Lfeem/PageAudio;

    iget-object v0, v0, Lfeem/PageAudio;->m_selected_items:Ljava/util/HashSet;

    iget-object v1, p0, Lfeem/PageAudio$AudioAdapterGrid$2;->this$1:Lfeem/PageAudio$AudioAdapterGrid;

    iget-object v1, v1, Lfeem/PageAudio$AudioAdapterGrid;->this$0:Lfeem/PageAudio;

    iget-object v1, v1, Lfeem/PageAudio;->map_date_to_fileurls:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 537
    iget-object v0, p0, Lfeem/PageAudio$AudioAdapterGrid$2;->this$1:Lfeem/PageAudio$AudioAdapterGrid;

    iget-object v0, v0, Lfeem/PageAudio$AudioAdapterGrid;->this$0:Lfeem/PageAudio;

    iget-object v0, v0, Lfeem/PageAudio;->m_selected_items:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 539
    :cond_0
    iget-object v0, p0, Lfeem/PageAudio$AudioAdapterGrid$2;->this$1:Lfeem/PageAudio$AudioAdapterGrid;

    iget-object v0, v0, Lfeem/PageAudio$AudioAdapterGrid;->this$0:Lfeem/PageAudio;

    iget-object v0, v0, Lfeem/PageAudio;->m_selected_items:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 540
    iget-object v0, p0, Lfeem/PageAudio$AudioAdapterGrid$2;->this$1:Lfeem/PageAudio$AudioAdapterGrid;

    iget-object v0, v0, Lfeem/PageAudio$AudioAdapterGrid;->this$0:Lfeem/PageAudio;

    iget-object v0, v0, Lfeem/PageAudio;->m_selected_items:Ljava/util/HashSet;

    iget-object v1, p0, Lfeem/PageAudio$AudioAdapterGrid$2;->this$1:Lfeem/PageAudio$AudioAdapterGrid;

    iget-object v1, v1, Lfeem/PageAudio$AudioAdapterGrid;->this$0:Lfeem/PageAudio;

    iget-object v1, v1, Lfeem/PageAudio;->map_date_to_fileurls:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 544
    :goto_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "update_audio"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 546
    iget-object v0, p0, Lfeem/PageAudio$AudioAdapterGrid$2;->this$1:Lfeem/PageAudio$AudioAdapterGrid;

    iget-object v0, v0, Lfeem/PageAudio$AudioAdapterGrid;->this$0:Lfeem/PageAudio;

    invoke-virtual {v0}, Lfeem/PageAudio;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 547
    iget-object p1, p0, Lfeem/PageAudio$AudioAdapterGrid$2;->this$1:Lfeem/PageAudio$AudioAdapterGrid;

    iget-object p1, p1, Lfeem/PageAudio$AudioAdapterGrid;->this$0:Lfeem/PageAudio;

    invoke-virtual {p1}, Lfeem/PageAudio;->update_footer_panel_visibility()V

    return-void
.end method
