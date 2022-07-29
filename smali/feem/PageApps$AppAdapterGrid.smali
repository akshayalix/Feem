.class Lfeem/PageApps$AppAdapterGrid;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PageApps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfeem/PageApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppAdapterGrid"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lfeem/PageApps$AppViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lfeem/PageApps$FeemApp;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lfeem/PageApps;


# direct methods
.method public constructor <init>(Lfeem/PageApps;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lfeem/PageApps$FeemApp;",
            ">;)V"
        }
    .end annotation

    .line 362
    iput-object p1, p0, Lfeem/PageApps$AppAdapterGrid;->this$0:Lfeem/PageApps;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 363
    iput-object p2, p0, Lfeem/PageApps$AppAdapterGrid;->mItems:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public feemHeaderClicked(ILjava/lang/String;Lfeem/PageApps$AppViewHolder;Z)V
    .locals 0

    .line 398
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

.method public feemIconClicked(ILjava/lang/String;Lfeem/PageApps$AppViewHolder;)V
    .locals 0

    .line 394
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

.method public feemItemClicked(ILjava/lang/String;Lfeem/PageApps$AppViewHolder;)V
    .locals 0

    .line 390
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

    .line 448
    iget-object v0, p0, Lfeem/PageApps$AppAdapterGrid;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 368
    iget-object v0, p0, Lfeem/PageApps$AppAdapterGrid;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfeem/PageApps$FeemApp;

    .line 369
    iget-object p1, p1, Lfeem/PageApps$FeemApp;->type:Lfeem/PageApps$Type;

    invoke-virtual {p1}, Lfeem/PageApps$Type;->ordinal()I

    move-result p1

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 359
    check-cast p1, Lfeem/PageApps$AppViewHolder;

    invoke-virtual {p0, p1, p2}, Lfeem/PageApps$AppAdapterGrid;->onBindViewHolder(Lfeem/PageApps$AppViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lfeem/PageApps$AppViewHolder;I)V
    .locals 4

    .line 408
    iget-object v0, p0, Lfeem/PageApps$AppAdapterGrid;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfeem/PageApps$FeemApp;

    .line 411
    iget-object v1, v0, Lfeem/PageApps$FeemApp;->type:Lfeem/PageApps$Type;

    sget-object v2, Lfeem/PageApps$Type;->App:Lfeem/PageApps$Type;

    if-ne v1, v2, :cond_0

    .line 412
    iget-object v1, v0, Lfeem/PageApps$FeemApp;->appSource:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lfeem/PageApps$AppViewHolder;->setFeemId(Ljava/lang/String;)V

    .line 413
    invoke-virtual {p1}, Lfeem/PageApps$AppViewHolder;->getLblTitle()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, v0, Lfeem/PageApps$FeemApp;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    invoke-virtual {p1}, Lfeem/PageApps$AppViewHolder;->getLblDescription()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, v0, Lfeem/PageApps$FeemApp;->fileSize:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pushing app thumbnail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lfeem/PageApps$FeemApp;->packageId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "feemthumbnailer"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v1, p0, Lfeem/PageApps$AppAdapterGrid;->this$0:Lfeem/PageApps;

    iget-object v2, v0, Lfeem/PageApps$FeemApp;->packageId:Ljava/lang/String;

    invoke-virtual {p1}, Lfeem/PageApps$AppViewHolder;->getImgThumb()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lfeem/PageApps;->loadBitmap(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 418
    invoke-virtual {p1}, Lfeem/PageApps$AppViewHolder;->updateCell()V

    .line 421
    invoke-virtual {p1}, Lfeem/PageApps$AppViewHolder;->getView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lfeem/PageApps$AppAdapterGrid$1;

    invoke-direct {v2, p0, v0, p2, p1}, Lfeem/PageApps$AppAdapterGrid$1;-><init>(Lfeem/PageApps$AppAdapterGrid;Lfeem/PageApps$FeemApp;ILfeem/PageApps$AppViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 359
    invoke-virtual {p0, p1, p2}, Lfeem/PageApps$AppAdapterGrid;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lfeem/PageApps$AppViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lfeem/PageApps$AppViewHolder;
    .locals 2

    .line 379
    sget-object v0, Lfeem/PageApps$Type;->App:Lfeem/PageApps$Type;

    invoke-virtual {v0}, Lfeem/PageApps$Type;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 380
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b0031

    const/4 v1, 0x0

    .line 381
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 385
    :goto_0
    new-instance p2, Lfeem/PageApps$AppViewHolder;

    iget-object v0, p0, Lfeem/PageApps$AppAdapterGrid;->this$0:Lfeem/PageApps;

    invoke-direct {p2, v0, p1}, Lfeem/PageApps$AppViewHolder;-><init>(Lfeem/PageApps;Landroid/view/View;)V

    return-object p2
.end method
