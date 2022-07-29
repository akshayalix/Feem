.class Lfeem/PageVideos$VideoAdapterGrid;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PageVideos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfeem/PageVideos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VideoAdapterGrid"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lfeem/PageVideos$VideoViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lfeem/PageVideos$FeemVideo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lfeem/PageVideos;


# direct methods
.method public constructor <init>(Lfeem/PageVideos;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lfeem/PageVideos$FeemVideo;",
            ">;)V"
        }
    .end annotation

    .line 368
    iput-object p1, p0, Lfeem/PageVideos$VideoAdapterGrid;->this$0:Lfeem/PageVideos;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 369
    iput-object p2, p0, Lfeem/PageVideos$VideoAdapterGrid;->mItems:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public feemHeaderClicked(ILjava/lang/String;Lfeem/PageVideos$VideoViewHolder;Z)V
    .locals 0

    .line 404
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "header clicked "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "adapter"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public feemIconClicked(ILjava/lang/String;Lfeem/PageVideos$VideoViewHolder;)V
    .locals 0

    .line 400
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "icon clicked "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "adapter"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public feemItemClicked(ILjava/lang/String;Lfeem/PageVideos$VideoViewHolder;)V
    .locals 0

    .line 396
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "item clicked "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "adapter"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 454
    iget-object v0, p0, Lfeem/PageVideos$VideoAdapterGrid;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 374
    iget-object v0, p0, Lfeem/PageVideos$VideoAdapterGrid;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfeem/PageVideos$FeemVideo;

    .line 375
    iget-object p1, p1, Lfeem/PageVideos$FeemVideo;->type:Lfeem/PageVideos$Type;

    invoke-virtual {p1}, Lfeem/PageVideos$Type;->ordinal()I

    move-result p1

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 365
    check-cast p1, Lfeem/PageVideos$VideoViewHolder;

    invoke-virtual {p0, p1, p2}, Lfeem/PageVideos$VideoAdapterGrid;->onBindViewHolder(Lfeem/PageVideos$VideoViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lfeem/PageVideos$VideoViewHolder;I)V
    .locals 4

    .line 414
    iget-object v0, p0, Lfeem/PageVideos$VideoAdapterGrid;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfeem/PageVideos$FeemVideo;

    .line 417
    iget-object v1, v0, Lfeem/PageVideos$FeemVideo;->type:Lfeem/PageVideos$Type;

    sget-object v2, Lfeem/PageVideos$Type;->Video:Lfeem/PageVideos$Type;

    if-ne v1, v2, :cond_0

    .line 418
    iget-object v1, v0, Lfeem/PageVideos$FeemVideo;->videoSource:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lfeem/PageVideos$VideoViewHolder;->setFeemId(Ljava/lang/String;)V

    .line 419
    invoke-virtual {p1}, Lfeem/PageVideos$VideoViewHolder;->getLblTitle()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, v0, Lfeem/PageVideos$FeemVideo;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    invoke-virtual {p1}, Lfeem/PageVideos$VideoViewHolder;->getLblDescription()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, v0, Lfeem/PageVideos$FeemVideo;->fileSize:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pushing video thumbnail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lfeem/PageVideos$FeemVideo;->videoId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "feemthumbnailer"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v1, p0, Lfeem/PageVideos$VideoAdapterGrid;->this$0:Lfeem/PageVideos;

    iget v2, v0, Lfeem/PageVideos$FeemVideo;->videoId:I

    invoke-virtual {p1}, Lfeem/PageVideos$VideoViewHolder;->getImgThumb()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lfeem/PageVideos;->loadBitmap(ILandroid/widget/ImageView;)V

    .line 424
    invoke-virtual {p1}, Lfeem/PageVideos$VideoViewHolder;->updateCell()V

    .line 427
    invoke-virtual {p1}, Lfeem/PageVideos$VideoViewHolder;->getView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lfeem/PageVideos$VideoAdapterGrid$1;

    invoke-direct {v2, p0, v0, p2, p1}, Lfeem/PageVideos$VideoAdapterGrid$1;-><init>(Lfeem/PageVideos$VideoAdapterGrid;Lfeem/PageVideos$FeemVideo;ILfeem/PageVideos$VideoViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 365
    invoke-virtual {p0, p1, p2}, Lfeem/PageVideos$VideoAdapterGrid;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lfeem/PageVideos$VideoViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lfeem/PageVideos$VideoViewHolder;
    .locals 2

    .line 385
    sget-object v0, Lfeem/PageVideos$Type;->Video:Lfeem/PageVideos$Type;

    invoke-virtual {v0}, Lfeem/PageVideos$Type;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 386
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b0037

    const/4 v1, 0x0

    .line 387
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 391
    :goto_0
    new-instance p2, Lfeem/PageVideos$VideoViewHolder;

    iget-object v0, p0, Lfeem/PageVideos$VideoAdapterGrid;->this$0:Lfeem/PageVideos;

    invoke-direct {p2, v0, p1}, Lfeem/PageVideos$VideoViewHolder;-><init>(Lfeem/PageVideos;Landroid/view/View;)V

    return-object p2
.end method
