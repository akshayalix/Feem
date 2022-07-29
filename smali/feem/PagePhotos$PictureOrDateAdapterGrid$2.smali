.class Lfeem/PagePhotos$PictureOrDateAdapterGrid$2;
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

.field final synthetic val$holder:Lfeem/PagePhotos$PictureOrDateViewHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lfeem/PagePhotos$PictureOrDateAdapterGrid;Lfeem/PagePhotos$FeemPhoto;ILfeem/PagePhotos$PictureOrDateViewHolder;)V
    .locals 0

    .line 529
    iput-object p1, p0, Lfeem/PagePhotos$PictureOrDateAdapterGrid$2;->this$1:Lfeem/PagePhotos$PictureOrDateAdapterGrid;

    iput-object p2, p0, Lfeem/PagePhotos$PictureOrDateAdapterGrid$2;->val$f:Lfeem/PagePhotos$FeemPhoto;

    iput p3, p0, Lfeem/PagePhotos$PictureOrDateAdapterGrid$2;->val$position:I

    iput-object p4, p0, Lfeem/PagePhotos$PictureOrDateAdapterGrid$2;->val$holder:Lfeem/PagePhotos$PictureOrDateViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 532
    iget-object p1, p0, Lfeem/PagePhotos$PictureOrDateAdapterGrid$2;->val$f:Lfeem/PagePhotos$FeemPhoto;

    iget-object p1, p1, Lfeem/PagePhotos$FeemPhoto;->imgSource:Ljava/lang/String;

    .line 533
    iget-object v0, p0, Lfeem/PagePhotos$PictureOrDateAdapterGrid$2;->this$1:Lfeem/PagePhotos$PictureOrDateAdapterGrid;

    iget v1, p0, Lfeem/PagePhotos$PictureOrDateAdapterGrid$2;->val$position:I

    iget-object v2, p0, Lfeem/PagePhotos$PictureOrDateAdapterGrid$2;->val$holder:Lfeem/PagePhotos$PictureOrDateViewHolder;

    invoke-virtual {v0, v1, p1, v2}, Lfeem/PagePhotos$PictureOrDateAdapterGrid;->feemItemClicked(ILjava/lang/String;Lfeem/PagePhotos$PictureOrDateViewHolder;)V

    .line 534
    iget-object v0, p0, Lfeem/PagePhotos$PictureOrDateAdapterGrid$2;->this$1:Lfeem/PagePhotos$PictureOrDateAdapterGrid;

    iget-object v0, v0, Lfeem/PagePhotos$PictureOrDateAdapterGrid;->this$0:Lfeem/PagePhotos;

    iget-object v0, v0, Lfeem/PagePhotos;->m_selected_items:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lfeem/PagePhotos$PictureOrDateAdapterGrid$2;->this$1:Lfeem/PagePhotos$PictureOrDateAdapterGrid;

    iget-object v0, v0, Lfeem/PagePhotos$PictureOrDateAdapterGrid;->this$0:Lfeem/PagePhotos;

    iget-object v0, v0, Lfeem/PagePhotos;->m_selected_items:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 537
    :cond_0
    iget-object v0, p0, Lfeem/PagePhotos$PictureOrDateAdapterGrid$2;->this$1:Lfeem/PagePhotos$PictureOrDateAdapterGrid;

    iget-object v0, v0, Lfeem/PagePhotos$PictureOrDateAdapterGrid;->this$0:Lfeem/PagePhotos;

    iget-object v0, v0, Lfeem/PagePhotos;->m_selected_items:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 539
    :goto_0
    iget-object p1, p0, Lfeem/PagePhotos$PictureOrDateAdapterGrid$2;->val$holder:Lfeem/PagePhotos$PictureOrDateViewHolder;

    invoke-virtual {p1}, Lfeem/PagePhotos$PictureOrDateViewHolder;->updateCell()V

    .line 540
    iget-object p1, p0, Lfeem/PagePhotos$PictureOrDateAdapterGrid$2;->this$1:Lfeem/PagePhotos$PictureOrDateAdapterGrid;

    iget-object p1, p1, Lfeem/PagePhotos$PictureOrDateAdapterGrid;->this$0:Lfeem/PagePhotos;

    invoke-virtual {p1}, Lfeem/PagePhotos;->update_footer_panel_visibility()V

    return-void
.end method
