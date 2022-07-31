.class Lfeem/PageFileBrowser$FolderAdapterGrid;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PageFileBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfeem/PageFileBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FolderAdapterGrid"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lfeem/PageFileBrowser$FolderViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lfeem/PageFileBrowser$FeemFileOrFolder;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lfeem/PageFileBrowser;


# direct methods
.method public constructor <init>(Lfeem/PageFileBrowser;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lfeem/PageFileBrowser$FeemFileOrFolder;",
            ">;)V"
        }
    .end annotation

    .line 546
    iput-object p1, p0, Lfeem/PageFileBrowser$FolderAdapterGrid;->this$0:Lfeem/PageFileBrowser;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 547
    iput-object p2, p0, Lfeem/PageFileBrowser$FolderAdapterGrid;->mItems:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public feemHeaderClicked(ILjava/lang/String;Lfeem/PageFileBrowser$FolderViewHolder;Z)V
    .locals 0

    .line 586
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

.method public feemIconClicked(ILjava/lang/String;Lfeem/PageFileBrowser$FolderViewHolder;)V
    .locals 0

    .line 582
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

.method public feemItemClicked(ILjava/lang/String;Lfeem/PageFileBrowser$FolderViewHolder;)V
    .locals 0

    .line 578
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

    .line 696
    iget-object v0, p0, Lfeem/PageFileBrowser$FolderAdapterGrid;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 552
    iget-object v0, p0, Lfeem/PageFileBrowser$FolderAdapterGrid;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfeem/PageFileBrowser$FeemFileOrFolder;

    .line 553
    iget-object p1, p1, Lfeem/PageFileBrowser$FeemFileOrFolder;->type:Lfeem/PageFileBrowser$Type;

    invoke-virtual {p1}, Lfeem/PageFileBrowser$Type;->ordinal()I

    move-result p1

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 543
    check-cast p1, Lfeem/PageFileBrowser$FolderViewHolder;

    invoke-virtual {p0, p1, p2}, Lfeem/PageFileBrowser$FolderAdapterGrid;->onBindViewHolder(Lfeem/PageFileBrowser$FolderViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lfeem/PageFileBrowser$FolderViewHolder;I)V
    .locals 6

    .line 596
    iget-object v0, p0, Lfeem/PageFileBrowser$FolderAdapterGrid;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfeem/PageFileBrowser$FeemFileOrFolder;

    .line 599
    iget-object v1, v0, Lfeem/PageFileBrowser$FeemFileOrFolder;->type:Lfeem/PageFileBrowser$Type;

    sget-object v2, Lfeem/PageFileBrowser$Type;->File:Lfeem/PageFileBrowser$Type;

    const-string v3, "pushing app thumbnail "

    const-string v4, "feemthumbnailer"

    const-string v5, ""

    if-ne v1, v2, :cond_0

    .line 600
    iget-object v1, v0, Lfeem/PageFileBrowser$FeemFileOrFolder;->filePath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lfeem/PageFileBrowser$FolderViewHolder;->setFeemId(Ljava/lang/String;)V

    .line 601
    invoke-virtual {p1}, Lfeem/PageFileBrowser$FolderViewHolder;->getLblTitle()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, v0, Lfeem/PageFileBrowser$FeemFileOrFolder;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 602
    invoke-virtual {p1}, Lfeem/PageFileBrowser$FolderViewHolder;->getLblDescription()Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lfeem/PageFileBrowser$FeemFileOrFolder;->description:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 604
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lfeem/PageFileBrowser$FeemFileOrFolder;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    iget-object v1, p0, Lfeem/PageFileBrowser$FolderAdapterGrid;->this$0:Lfeem/PageFileBrowser;

    iget-object v2, v0, Lfeem/PageFileBrowser$FeemFileOrFolder;->filePath:Ljava/lang/String;

    invoke-virtual {p1}, Lfeem/PageFileBrowser$FolderViewHolder;->getImgThumb()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lfeem/PageFileBrowser;->loadBitmap(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 606
    invoke-virtual {p1}, Lfeem/PageFileBrowser$FolderViewHolder;->updateCell()V

    .line 609
    invoke-virtual {p1}, Lfeem/PageFileBrowser$FolderViewHolder;->getView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lfeem/PageFileBrowser$FolderAdapterGrid$1;

    invoke-direct {v2, p0, v0, p2, p1}, Lfeem/PageFileBrowser$FolderAdapterGrid$1;-><init>(Lfeem/PageFileBrowser$FolderAdapterGrid;Lfeem/PageFileBrowser$FeemFileOrFolder;ILfeem/PageFileBrowser$FolderViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 628
    :cond_0
    iget-object p2, v0, Lfeem/PageFileBrowser$FeemFileOrFolder;->type:Lfeem/PageFileBrowser$Type;

    sget-object v1, Lfeem/PageFileBrowser$Type;->Folder:Lfeem/PageFileBrowser$Type;

    if-ne p2, v1, :cond_1

    .line 629
    iget-object p2, v0, Lfeem/PageFileBrowser$FeemFileOrFolder;->filePath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lfeem/PageFileBrowser$FolderViewHolder;->setFeemId(Ljava/lang/String;)V

    .line 630
    invoke-virtual {p1}, Lfeem/PageFileBrowser$FolderViewHolder;->getLblTitle()Landroid/widget/TextView;

    move-result-object p2

    iget-object v1, v0, Lfeem/PageFileBrowser$FeemFileOrFolder;->fileName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 631
    invoke-virtual {p1}, Lfeem/PageFileBrowser$FolderViewHolder;->getLblDescription()Landroid/widget/TextView;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lfeem/PageFileBrowser$FeemFileOrFolder;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 633
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lfeem/PageFileBrowser$FeemFileOrFolder;->filePath:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    iget-object p2, p0, Lfeem/PageFileBrowser$FolderAdapterGrid;->this$0:Lfeem/PageFileBrowser;

    iget-object v1, v0, Lfeem/PageFileBrowser$FeemFileOrFolder;->filePath:Ljava/lang/String;

    invoke-virtual {p1}, Lfeem/PageFileBrowser$FolderViewHolder;->getImgThumb()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lfeem/PageFileBrowser;->loadBitmap(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 635
    invoke-virtual {p1}, Lfeem/PageFileBrowser$FolderViewHolder;->updateCell()V

    .line 638
    new-instance p2, Lfeem/PageFileBrowser$FolderAdapterGrid$2;

    invoke-direct {p2, p0, v0}, Lfeem/PageFileBrowser$FolderAdapterGrid$2;-><init>(Lfeem/PageFileBrowser$FolderAdapterGrid;Lfeem/PageFileBrowser$FeemFileOrFolder;)V

    .line 649
    invoke-virtual {p1}, Lfeem/PageFileBrowser$FolderViewHolder;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 651
    invoke-virtual {p1}, Lfeem/PageFileBrowser$FolderViewHolder;->getImgIcon()Landroid/widget/ImageView;

    move-result-object p2

    new-instance v1, Lfeem/PageFileBrowser$FolderAdapterGrid$3;

    invoke-direct {v1, p0, v0, p1}, Lfeem/PageFileBrowser$FolderAdapterGrid$3;-><init>(Lfeem/PageFileBrowser$FolderAdapterGrid;Lfeem/PageFileBrowser$FeemFileOrFolder;Lfeem/PageFileBrowser$FolderViewHolder;)V

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 543
    invoke-virtual {p0, p1, p2}, Lfeem/PageFileBrowser$FolderAdapterGrid;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lfeem/PageFileBrowser$FolderViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lfeem/PageFileBrowser$FolderViewHolder;
    .locals 3

    .line 563
    sget-object v0, Lfeem/PageFileBrowser$Type;->File:Lfeem/PageFileBrowser$Type;

    invoke-virtual {v0}, Lfeem/PageFileBrowser$Type;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7f0b0032

    if-ne p2, v0, :cond_0

    .line 564
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 565
    invoke-virtual {p2, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 567
    :cond_0
    sget-object v0, Lfeem/PageFileBrowser$Type;->Folder:Lfeem/PageFileBrowser$Type;

    invoke-virtual {v0}, Lfeem/PageFileBrowser$Type;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 568
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 569
    invoke-virtual {p2, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 573
    :goto_0
    new-instance p2, Lfeem/PageFileBrowser$FolderViewHolder;

    iget-object v0, p0, Lfeem/PageFileBrowser$FolderAdapterGrid;->this$0:Lfeem/PageFileBrowser;

    invoke-direct {p2, v0, p1}, Lfeem/PageFileBrowser$FolderViewHolder;-><init>(Lfeem/PageFileBrowser;Landroid/view/View;)V

    return-object p2
.end method
