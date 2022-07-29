.class Lfeem/PagePhotos$PictureOrDateAdapterGrid$1;
.super Ljava/lang/Object;
.source "PagePhotos.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfeem/PagePhotos$PictureOrDateAdapterGrid;->onBindViewHolder(Lfeem/PagePhotos$PictureOrDateViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lfeem/PagePhotos$PictureOrDateAdapterGrid;

.field final synthetic val$f:Lfeem/PagePhotos$FeemPhoto;


# direct methods
.method constructor <init>(Lfeem/PagePhotos$PictureOrDateAdapterGrid;Lfeem/PagePhotos$FeemPhoto;)V
    .locals 0

    .line 495
    iput-object p1, p0, Lfeem/PagePhotos$PictureOrDateAdapterGrid$1;->this$1:Lfeem/PagePhotos$PictureOrDateAdapterGrid;

    iput-object p2, p0, Lfeem/PagePhotos$PictureOrDateAdapterGrid$1;->val$f:Lfeem/PagePhotos$FeemPhoto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 499
    iget-object p1, p0, Lfeem/PagePhotos$PictureOrDateAdapterGrid$1;->this$1:Lfeem/PagePhotos$PictureOrDateAdapterGrid;

    iget-object p1, p1, Lfeem/PagePhotos$PictureOrDateAdapterGrid;->this$0:Lfeem/PagePhotos;

    iget-object p1, p1, Lfeem/PagePhotos;->m_selected_items:Ljava/util/HashSet;

    iget-object v0, p0, Lfeem/PagePhotos$PictureOrDateAdapterGrid$1;->val$f:Lfeem/PagePhotos$FeemPhoto;

    iget-object v0, v0, Lfeem/PagePhotos$FeemPhoto;->day:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 500
    iget-object p1, p0, Lfeem/PagePhotos$PictureOrDateAdapterGrid$1;->this$1:Lfeem/PagePhotos$PictureOrDateAdapterGrid;

    iget-object p1, p1, Lfeem/PagePhotos$PictureOrDateAdapterGrid;->this$0:Lfeem/PagePhotos;

    iget-object p1, p1, Lfeem/PagePhotos;->m_selected_items:Ljava/util/HashSet;

    iget-object v0, p0, Lfeem/PagePhotos$PictureOrDateAdapterGrid$1;->this$1:Lfeem/PagePhotos$PictureOrDateAdapterGrid;

    iget-object v0, v0, Lfeem/PagePhotos$PictureOrDateAdapterGrid;->this$0:Lfeem/PagePhotos;

    iget-object v0, v0, Lfeem/PagePhotos;->map_date_to_fileurls:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lfeem/PagePhotos$PictureOrDateAdapterGrid$1;->val$f:Lfeem/PagePhotos$FeemPhoto;

    iget-object v1, v1, Lfeem/PagePhotos$FeemPhoto;->day:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 501
    iget-object p1, p0, Lfeem/PagePhotos$PictureOrDateAdapterGrid$1;->this$1:Lfeem/PagePhotos$PictureOrDateAdapterGrid;

    iget-object p1, p1, Lfeem/PagePhotos$PictureOrDateAdapterGrid;->this$0:Lfeem/PagePhotos;

    iget-object p1, p1, Lfeem/PagePhotos;->m_selected_items:Ljava/util/HashSet;

    iget-object v0, p0, Lfeem/PagePhotos$PictureOrDateAdapterGrid$1;->val$f:Lfeem/PagePhotos$FeemPhoto;

    iget-object v0, v0, Lfeem/PagePhotos$FeemPhoto;->day:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 503
    :cond_0
    iget-object p1, p0, Lfeem/PagePhotos$PictureOrDateAdapterGrid$1;->this$1:Lfeem/PagePhotos$PictureOrDateAdapterGrid;

    iget-object p1, p1, Lfeem/PagePhotos$PictureOrDateAdapterGrid;->this$0:Lfeem/PagePhotos;

    iget-object p1, p1, Lfeem/PagePhotos;->m_selected_items:Ljava/util/HashSet;

    iget-object v0, p0, Lfeem/PagePhotos$PictureOrDateAdapterGrid$1;->val$f:Lfeem/PagePhotos$FeemPhoto;

    iget-object v0, v0, Lfeem/PagePhotos$FeemPhoto;->day:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 504
    iget-object p1, p0, Lfeem/PagePhotos$PictureOrDateAdapterGrid$1;->this$1:Lfeem/PagePhotos$PictureOrDateAdapterGrid;

    iget-object p1, p1, Lfeem/PagePhotos$PictureOrDateAdapterGrid;->this$0:Lfeem/PagePhotos;

    iget-object p1, p1, Lfeem/PagePhotos;->m_selected_items:Ljava/util/HashSet;

    iget-object v0, p0, Lfeem/PagePhotos$PictureOrDateAdapterGrid$1;->this$1:Lfeem/PagePhotos$PictureOrDateAdapterGrid;

    iget-object v0, v0, Lfeem/PagePhotos$PictureOrDateAdapterGrid;->this$0:Lfeem/PagePhotos;

    iget-object v0, v0, Lfeem/PagePhotos;->map_date_to_fileurls:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lfeem/PagePhotos$PictureOrDateAdapterGrid$1;->val$f:Lfeem/PagePhotos$FeemPhoto;

    iget-object v1, v1, Lfeem/PagePhotos$FeemPhoto;->day:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 508
    :goto_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "update_photos"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 510
    iget-object v0, p0, Lfeem/PagePhotos$PictureOrDateAdapterGrid$1;->this$1:Lfeem/PagePhotos$PictureOrDateAdapterGrid;

    iget-object v0, v0, Lfeem/PagePhotos$PictureOrDateAdapterGrid;->this$0:Lfeem/PagePhotos;

    invoke-virtual {v0}, Lfeem/PagePhotos;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 511
    iget-object p1, p0, Lfeem/PagePhotos$PictureOrDateAdapterGrid$1;->this$1:Lfeem/PagePhotos$PictureOrDateAdapterGrid;

    iget-object p1, p1, Lfeem/PagePhotos$PictureOrDateAdapterGrid;->this$0:Lfeem/PagePhotos;

    invoke-virtual {p1}, Lfeem/PagePhotos;->update_footer_panel_visibility()V

    return-void
.end method
