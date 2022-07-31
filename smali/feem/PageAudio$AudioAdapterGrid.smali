.class Lfeem/PageAudio$AudioAdapterGrid;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PageAudio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfeem/PageAudio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AudioAdapterGrid"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lfeem/PageAudio$AudioViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lfeem/PageAudio$FeemAudio;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lfeem/PageAudio;


# direct methods
.method public constructor <init>(Lfeem/PageAudio;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lfeem/PageAudio$FeemAudio;",
            ">;)V"
        }
    .end annotation

    .line 433
    iput-object p1, p0, Lfeem/PageAudio$AudioAdapterGrid;->this$0:Lfeem/PageAudio;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 434
    iput-object p2, p0, Lfeem/PageAudio$AudioAdapterGrid;->mItems:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public feemHeaderClicked(ILjava/lang/String;Lfeem/PageAudio$AudioViewHolder;Z)V
    .locals 0

    .line 473
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

.method public feemIconClicked(ILjava/lang/String;Lfeem/PageAudio$AudioViewHolder;)V
    .locals 0

    .line 469
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

.method public feemItemClicked(ILjava/lang/String;Lfeem/PageAudio$AudioViewHolder;)V
    .locals 0

    .line 465
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

    .line 568
    iget-object v0, p0, Lfeem/PageAudio$AudioAdapterGrid;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 439
    iget-object v0, p0, Lfeem/PageAudio$AudioAdapterGrid;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfeem/PageAudio$FeemAudio;

    .line 440
    iget-object p1, p1, Lfeem/PageAudio$FeemAudio;->type:Lfeem/PageAudio$Type;

    invoke-virtual {p1}, Lfeem/PageAudio$Type;->ordinal()I

    move-result p1

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 430
    check-cast p1, Lfeem/PageAudio$AudioViewHolder;

    invoke-virtual {p0, p1, p2}, Lfeem/PageAudio$AudioAdapterGrid;->onBindViewHolder(Lfeem/PageAudio$AudioViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lfeem/PageAudio$AudioViewHolder;I)V
    .locals 6

    .line 483
    iget-object v0, p0, Lfeem/PageAudio$AudioAdapterGrid;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfeem/PageAudio$FeemAudio;

    .line 486
    iget-object v1, v0, Lfeem/PageAudio$FeemAudio;->type:Lfeem/PageAudio$Type;

    sget-object v2, Lfeem/PageAudio$Type;->Song:Lfeem/PageAudio$Type;

    const-string v3, "feemthumbnailer"

    const-string v4, " - "

    if-ne v1, v2, :cond_1

    .line 487
    iget-object v1, v0, Lfeem/PageAudio$FeemAudio;->audioSource:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lfeem/PageAudio$AudioViewHolder;->setFeemId(Ljava/lang/String;)V

    .line 489
    iget-object v1, v0, Lfeem/PageAudio$FeemAudio;->track:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lfeem/PageAudio$FeemAudio;->track:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 490
    invoke-virtual {p1}, Lfeem/PageAudio$AudioViewHolder;->getLblTitle()Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lfeem/PageAudio$FeemAudio;->track:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lfeem/PageAudio$FeemAudio;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 494
    :cond_0
    invoke-virtual {p1}, Lfeem/PageAudio$AudioViewHolder;->getLblTitle()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, v0, Lfeem/PageAudio$FeemAudio;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    :goto_0
    invoke-virtual {p1}, Lfeem/PageAudio$AudioViewHolder;->getLblDescription()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, v0, Lfeem/PageAudio$FeemAudio;->fileSize:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 499
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pushing video thumbnail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lfeem/PageAudio$FeemAudio;->audioId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget-object v1, p0, Lfeem/PageAudio$AudioAdapterGrid;->this$0:Lfeem/PageAudio;

    iget v2, v0, Lfeem/PageAudio$FeemAudio;->albumId:I

    invoke-virtual {p1}, Lfeem/PageAudio$AudioViewHolder;->getImgThumb()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lfeem/PageAudio;->loadBitmap(ILandroid/widget/ImageView;)V

    .line 501
    invoke-virtual {p1}, Lfeem/PageAudio$AudioViewHolder;->updateCell()V

    .line 504
    invoke-virtual {p1}, Lfeem/PageAudio$AudioViewHolder;->getView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lfeem/PageAudio$AudioAdapterGrid$1;

    invoke-direct {v2, p0, v0, p2, p1}, Lfeem/PageAudio$AudioAdapterGrid$1;-><init>(Lfeem/PageAudio$AudioAdapterGrid;Lfeem/PageAudio$FeemAudio;ILfeem/PageAudio$AudioViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 523
    :cond_1
    iget-object p2, v0, Lfeem/PageAudio$FeemAudio;->type:Lfeem/PageAudio$Type;

    sget-object v1, Lfeem/PageAudio$Type;->Album:Lfeem/PageAudio$Type;

    if-ne p2, v1, :cond_2

    .line 524
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, Lfeem/PageAudio$FeemAudio;->artist:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lfeem/PageAudio$FeemAudio;->albumName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lfeem/PageAudio$AudioViewHolder;->setFeemId(Ljava/lang/String;)V

    .line 525
    invoke-virtual {p1}, Lfeem/PageAudio$AudioViewHolder;->getLblTitle()Landroid/widget/TextView;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lfeem/PageAudio$FeemAudio;->artist:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lfeem/PageAudio$FeemAudio;->albumName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 528
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pushing audio thumbnail "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lfeem/PageAudio$FeemAudio;->audioId:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    invoke-virtual {p1}, Lfeem/PageAudio$AudioViewHolder;->getView()Landroid/view/View;

    move-result-object p2

    new-instance v1, Lfeem/PageAudio$AudioAdapterGrid$2;

    invoke-direct {v1, p0, v0}, Lfeem/PageAudio$AudioAdapterGrid$2;-><init>(Lfeem/PageAudio$AudioAdapterGrid;Lfeem/PageAudio$FeemAudio;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 555
    invoke-virtual {p1}, Lfeem/PageAudio$AudioViewHolder;->updateCell()V

    :cond_2
    :goto_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 430
    invoke-virtual {p0, p1, p2}, Lfeem/PageAudio$AudioAdapterGrid;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lfeem/PageAudio$AudioViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lfeem/PageAudio$AudioViewHolder;
    .locals 2

    .line 450
    sget-object v0, Lfeem/PageAudio$Type;->Song:Lfeem/PageAudio$Type;

    invoke-virtual {v0}, Lfeem/PageAudio$Type;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 451
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b0035

    .line 452
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 454
    :cond_0
    sget-object v0, Lfeem/PageAudio$Type;->Album:Lfeem/PageAudio$Type;

    invoke-virtual {v0}, Lfeem/PageAudio$Type;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 455
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b0030

    .line 456
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 460
    :goto_0
    new-instance p2, Lfeem/PageAudio$AudioViewHolder;

    iget-object v0, p0, Lfeem/PageAudio$AudioAdapterGrid;->this$0:Lfeem/PageAudio;

    invoke-direct {p2, v0, p1}, Lfeem/PageAudio$AudioViewHolder;-><init>(Lfeem/PageAudio;Landroid/view/View;)V

    return-object p2
.end method
