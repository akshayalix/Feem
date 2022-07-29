.class Lfeem/PagePhotos$PictureOrDateAdapterGrid;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PagePhotos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfeem/PagePhotos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PictureOrDateAdapterGrid"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lfeem/PagePhotos$PictureOrDateViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lfeem/PagePhotos$FeemPhoto;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lfeem/PagePhotos;


# direct methods
.method public constructor <init>(Lfeem/PagePhotos;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lfeem/PagePhotos$FeemPhoto;",
            ">;)V"
        }
    .end annotation

    .line 438
    iput-object p1, p0, Lfeem/PagePhotos$PictureOrDateAdapterGrid;->this$0:Lfeem/PagePhotos;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 439
    iput-object p2, p0, Lfeem/PagePhotos$PictureOrDateAdapterGrid;->mItems:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public feemHeaderClicked(ILjava/lang/String;Lfeem/PagePhotos$PictureOrDateViewHolder;Z)V
    .locals 0

    .line 477
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

.method public feemIconClicked(ILjava/lang/String;Lfeem/PagePhotos$PictureOrDateViewHolder;)V
    .locals 0

    .line 473
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

.method public feemItemClicked(ILjava/lang/String;Lfeem/PagePhotos$PictureOrDateViewHolder;)V
    .locals 0

    .line 469
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

    .line 626
    iget-object v0, p0, Lfeem/PagePhotos$PictureOrDateAdapterGrid;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 444
    iget-object v0, p0, Lfeem/PagePhotos$PictureOrDateAdapterGrid;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfeem/PagePhotos$FeemPhoto;

    .line 445
    iget-object p1, p1, Lfeem/PagePhotos$FeemPhoto;->type:Lfeem/PagePhotos$Type;

    invoke-virtual {p1}, Lfeem/PagePhotos$Type;->ordinal()I

    move-result p1

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 435
    check-cast p1, Lfeem/PagePhotos$PictureOrDateViewHolder;

    invoke-virtual {p0, p1, p2}, Lfeem/PagePhotos$PictureOrDateAdapterGrid;->onBindViewHolder(Lfeem/PagePhotos$PictureOrDateViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lfeem/PagePhotos$PictureOrDateViewHolder;I)V
    .locals 4

    .line 487
    iget-object v0, p0, Lfeem/PagePhotos$PictureOrDateAdapterGrid;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfeem/PagePhotos$FeemPhoto;

    .line 489
    iget-object v1, v0, Lfeem/PagePhotos$FeemPhoto;->type:Lfeem/PagePhotos$Type;

    sget-object v2, Lfeem/PagePhotos$Type;->Date:Lfeem/PagePhotos$Type;

    if-ne v1, v2, :cond_0

    .line 490
    invoke-virtual {p1}, Lfeem/PagePhotos$PictureOrDateViewHolder;->getLblTitle()Landroid/widget/TextView;

    move-result-object p2

    .line 491
    iget-object v1, v0, Lfeem/PagePhotos$FeemPhoto;->day:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 492
    iget-object p2, v0, Lfeem/PagePhotos$FeemPhoto;->day:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lfeem/PagePhotos$PictureOrDateViewHolder;->setFeemId(Ljava/lang/String;)V

    .line 495
    invoke-virtual {p1}, Lfeem/PagePhotos$PictureOrDateViewHolder;->getView()Landroid/view/View;

    move-result-object p2

    new-instance v1, Lfeem/PagePhotos$PictureOrDateAdapterGrid$1;

    invoke-direct {v1, p0, v0}, Lfeem/PagePhotos$PictureOrDateAdapterGrid$1;-><init>(Lfeem/PagePhotos$PictureOrDateAdapterGrid;Lfeem/PagePhotos$FeemPhoto;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 519
    invoke-virtual {p1}, Lfeem/PagePhotos$PictureOrDateViewHolder;->updateCell()V

    goto :goto_0

    .line 521
    :cond_0
    iget-object v1, v0, Lfeem/PagePhotos$FeemPhoto;->type:Lfeem/PagePhotos$Type;

    sget-object v2, Lfeem/PagePhotos$Type;->Picture:Lfeem/PagePhotos$Type;

    if-ne v1, v2, :cond_1

    .line 522
    iget-object v1, v0, Lfeem/PagePhotos$FeemPhoto;->imgSource:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lfeem/PagePhotos$PictureOrDateViewHolder;->setFeemId(Ljava/lang/String;)V

    .line 524
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pushing thumbnail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lfeem/PagePhotos$FeemPhoto;->imageId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "feemthumbnailer"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object v1, p0, Lfeem/PagePhotos$PictureOrDateAdapterGrid;->this$0:Lfeem/PagePhotos;

    iget v2, v0, Lfeem/PagePhotos$FeemPhoto;->imageId:I

    invoke-virtual {p1}, Lfeem/PagePhotos$PictureOrDateViewHolder;->getImgThumb()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lfeem/PagePhotos;->loadBitmap(ILandroid/widget/ImageView;)V

    .line 526
    invoke-virtual {p1}, Lfeem/PagePhotos$PictureOrDateViewHolder;->updateCell()V

    .line 529
    invoke-virtual {p1}, Lfeem/PagePhotos$PictureOrDateViewHolder;->getView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lfeem/PagePhotos$PictureOrDateAdapterGrid$2;

    invoke-direct {v2, p0, v0, p2, p1}, Lfeem/PagePhotos$PictureOrDateAdapterGrid$2;-><init>(Lfeem/PagePhotos$PictureOrDateAdapterGrid;Lfeem/PagePhotos$FeemPhoto;ILfeem/PagePhotos$PictureOrDateViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 435
    invoke-virtual {p0, p1, p2}, Lfeem/PagePhotos$PictureOrDateAdapterGrid;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lfeem/PagePhotos$PictureOrDateViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lfeem/PagePhotos$PictureOrDateViewHolder;
    .locals 2

    .line 455
    sget-object v0, Lfeem/PagePhotos$Type;->Date:Lfeem/PagePhotos$Type;

    invoke-virtual {v0}, Lfeem/PagePhotos$Type;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 456
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b0036

    .line 457
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 458
    :cond_0
    sget-object v0, Lfeem/PagePhotos$Type;->Picture:Lfeem/PagePhotos$Type;

    invoke-virtual {v0}, Lfeem/PagePhotos$Type;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 459
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b0034

    .line 460
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 464
    :goto_0
    new-instance p2, Lfeem/PagePhotos$PictureOrDateViewHolder;

    iget-object v0, p0, Lfeem/PagePhotos$PictureOrDateAdapterGrid;->this$0:Lfeem/PagePhotos;

    invoke-direct {p2, v0, p1}, Lfeem/PagePhotos$PictureOrDateViewHolder;-><init>(Lfeem/PagePhotos;Landroid/view/View;)V

    return-object p2
.end method
