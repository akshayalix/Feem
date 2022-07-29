.class Lfeem/FeemFolderSelect$FolderAdapterGrid;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "FeemFolderSelect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfeem/FeemFolderSelect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FolderAdapterGrid"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lfeem/FeemFolderSelect$FolderViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lfeem/FeemFolderSelect$FeemFileOrFolder;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lfeem/FeemFolderSelect;


# direct methods
.method public constructor <init>(Lfeem/FeemFolderSelect;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lfeem/FeemFolderSelect$FeemFileOrFolder;",
            ">;)V"
        }
    .end annotation

    .line 507
    iput-object p1, p0, Lfeem/FeemFolderSelect$FolderAdapterGrid;->this$0:Lfeem/FeemFolderSelect;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 508
    iput-object p2, p0, Lfeem/FeemFolderSelect$FolderAdapterGrid;->mItems:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public feemHeaderClicked(ILjava/lang/String;Lfeem/FeemFolderSelect$FolderViewHolder;Z)V
    .locals 0

    .line 547
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

.method public feemIconClicked(ILjava/lang/String;Lfeem/FeemFolderSelect$FolderViewHolder;)V
    .locals 0

    .line 543
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

.method public feemItemClicked(ILjava/lang/String;Lfeem/FeemFolderSelect$FolderViewHolder;)V
    .locals 0

    .line 539
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

    .line 657
    iget-object v0, p0, Lfeem/FeemFolderSelect$FolderAdapterGrid;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 513
    iget-object v0, p0, Lfeem/FeemFolderSelect$FolderAdapterGrid;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfeem/FeemFolderSelect$FeemFileOrFolder;

    .line 514
    iget-object p1, p1, Lfeem/FeemFolderSelect$FeemFileOrFolder;->type:Lfeem/FeemFolderSelect$Type;

    invoke-virtual {p1}, Lfeem/FeemFolderSelect$Type;->ordinal()I

    move-result p1

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 504
    check-cast p1, Lfeem/FeemFolderSelect$FolderViewHolder;

    invoke-virtual {p0, p1, p2}, Lfeem/FeemFolderSelect$FolderAdapterGrid;->onBindViewHolder(Lfeem/FeemFolderSelect$FolderViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lfeem/FeemFolderSelect$FolderViewHolder;I)V
    .locals 4

    .line 557
    iget-object v0, p0, Lfeem/FeemFolderSelect$FolderAdapterGrid;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfeem/FeemFolderSelect$FeemFileOrFolder;

    .line 560
    iget-object v1, v0, Lfeem/FeemFolderSelect$FeemFileOrFolder;->type:Lfeem/FeemFolderSelect$Type;

    sget-object v2, Lfeem/FeemFolderSelect$Type;->File:Lfeem/FeemFolderSelect$Type;

    const-string v3, ""

    if-ne v1, v2, :cond_0

    .line 561
    iget-object v1, v0, Lfeem/FeemFolderSelect$FeemFileOrFolder;->filePath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lfeem/FeemFolderSelect$FolderViewHolder;->setFeemId(Ljava/lang/String;)V

    .line 562
    invoke-virtual {p1}, Lfeem/FeemFolderSelect$FolderViewHolder;->getLblTitle()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, v0, Lfeem/FeemFolderSelect$FeemFileOrFolder;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    invoke-virtual {p1}, Lfeem/FeemFolderSelect$FolderViewHolder;->getLblDescription()Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lfeem/FeemFolderSelect$FeemFileOrFolder;->description:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 565
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pushing app thumbnail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lfeem/FeemFolderSelect$FeemFileOrFolder;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "feemthumbnailer"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-object v1, p0, Lfeem/FeemFolderSelect$FolderAdapterGrid;->this$0:Lfeem/FeemFolderSelect;

    iget-object v2, v0, Lfeem/FeemFolderSelect$FeemFileOrFolder;->filePath:Ljava/lang/String;

    invoke-virtual {p1}, Lfeem/FeemFolderSelect$FolderViewHolder;->getImgThumb()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lfeem/FeemFolderSelect;->loadBitmap(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 567
    invoke-virtual {p1}, Lfeem/FeemFolderSelect$FolderViewHolder;->updateCell()V

    .line 570
    invoke-virtual {p1}, Lfeem/FeemFolderSelect$FolderViewHolder;->getView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lfeem/FeemFolderSelect$FolderAdapterGrid$1;

    invoke-direct {v2, p0, v0, p2, p1}, Lfeem/FeemFolderSelect$FolderAdapterGrid$1;-><init>(Lfeem/FeemFolderSelect$FolderAdapterGrid;Lfeem/FeemFolderSelect$FeemFileOrFolder;ILfeem/FeemFolderSelect$FolderViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 589
    :cond_0
    iget-object p2, v0, Lfeem/FeemFolderSelect$FeemFileOrFolder;->type:Lfeem/FeemFolderSelect$Type;

    sget-object v1, Lfeem/FeemFolderSelect$Type;->Folder:Lfeem/FeemFolderSelect$Type;

    if-ne p2, v1, :cond_1

    .line 590
    iget-object p2, v0, Lfeem/FeemFolderSelect$FeemFileOrFolder;->filePath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lfeem/FeemFolderSelect$FolderViewHolder;->setFeemId(Ljava/lang/String;)V

    .line 591
    invoke-virtual {p1}, Lfeem/FeemFolderSelect$FolderViewHolder;->getLblTitle()Landroid/widget/TextView;

    move-result-object p2

    iget-object v1, v0, Lfeem/FeemFolderSelect$FeemFileOrFolder;->fileName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 592
    invoke-virtual {p1}, Lfeem/FeemFolderSelect$FolderViewHolder;->getLblDescription()Landroid/widget/TextView;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lfeem/FeemFolderSelect$FeemFileOrFolder;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 595
    iget-object p2, p0, Lfeem/FeemFolderSelect$FolderAdapterGrid;->this$0:Lfeem/FeemFolderSelect;

    iget-object v1, v0, Lfeem/FeemFolderSelect$FeemFileOrFolder;->filePath:Ljava/lang/String;

    invoke-virtual {p1}, Lfeem/FeemFolderSelect$FolderViewHolder;->getImgThumb()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lfeem/FeemFolderSelect;->loadBitmap(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 596
    invoke-virtual {p1}, Lfeem/FeemFolderSelect$FolderViewHolder;->updateCell()V

    .line 599
    new-instance p2, Lfeem/FeemFolderSelect$FolderAdapterGrid$2;

    invoke-direct {p2, p0, v0}, Lfeem/FeemFolderSelect$FolderAdapterGrid$2;-><init>(Lfeem/FeemFolderSelect$FolderAdapterGrid;Lfeem/FeemFolderSelect$FeemFileOrFolder;)V

    .line 610
    invoke-virtual {p1}, Lfeem/FeemFolderSelect$FolderViewHolder;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 504
    invoke-virtual {p0, p1, p2}, Lfeem/FeemFolderSelect$FolderAdapterGrid;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lfeem/FeemFolderSelect$FolderViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lfeem/FeemFolderSelect$FolderViewHolder;
    .locals 3

    .line 524
    sget-object v0, Lfeem/FeemFolderSelect$Type;->File:Lfeem/FeemFolderSelect$Type;

    invoke-virtual {v0}, Lfeem/FeemFolderSelect$Type;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7f0b0033

    if-ne p2, v0, :cond_0

    .line 525
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 526
    invoke-virtual {p2, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 528
    :cond_0
    sget-object v0, Lfeem/FeemFolderSelect$Type;->Folder:Lfeem/FeemFolderSelect$Type;

    invoke-virtual {v0}, Lfeem/FeemFolderSelect$Type;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 529
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 530
    invoke-virtual {p2, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 534
    :goto_0
    new-instance p2, Lfeem/FeemFolderSelect$FolderViewHolder;

    iget-object v0, p0, Lfeem/FeemFolderSelect$FolderAdapterGrid;->this$0:Lfeem/FeemFolderSelect;

    invoke-direct {p2, v0, p1}, Lfeem/FeemFolderSelect$FolderViewHolder;-><init>(Lfeem/FeemFolderSelect;Landroid/view/View;)V

    return-object p2
.end method
