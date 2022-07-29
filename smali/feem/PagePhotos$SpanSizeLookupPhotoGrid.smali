.class Lfeem/PagePhotos$SpanSizeLookupPhotoGrid;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "PagePhotos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfeem/PagePhotos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SpanSizeLookupPhotoGrid"
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

.field private mRecyclerView:Lfeem/RecyclerViewAutoFitGrid;

.field final synthetic this$0:Lfeem/PagePhotos;


# direct methods
.method public constructor <init>(Lfeem/PagePhotos;Ljava/util/ArrayList;Lfeem/RecyclerViewAutoFitGrid;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lfeem/PagePhotos$FeemPhoto;",
            ">;",
            "Lfeem/RecyclerViewAutoFitGrid;",
            ")V"
        }
    .end annotation

    .line 156
    iput-object p1, p0, Lfeem/PagePhotos$SpanSizeLookupPhotoGrid;->this$0:Lfeem/PagePhotos;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    .line 157
    iput-object p2, p0, Lfeem/PagePhotos$SpanSizeLookupPhotoGrid;->mItems:Ljava/util/ArrayList;

    .line 158
    iput-object p3, p0, Lfeem/PagePhotos$SpanSizeLookupPhotoGrid;->mRecyclerView:Lfeem/RecyclerViewAutoFitGrid;

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    .line 163
    iget-object v0, p0, Lfeem/PagePhotos$SpanSizeLookupPhotoGrid;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfeem/PagePhotos$FeemPhoto;

    const/4 p1, 0x1

    return p1
.end method
