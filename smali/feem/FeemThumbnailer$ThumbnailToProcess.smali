.class Lfeem/FeemThumbnailer$ThumbnailToProcess;
.super Ljava/lang/Object;
.source "FeemThumbnailer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfeem/FeemThumbnailer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ThumbnailToProcess"
.end annotation


# instance fields
.field imageView:Landroid/widget/ImageView;

.field private mImageViewWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mPosition:I

.field parameter:Ljava/lang/Object;

.field table:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lfeem/FeemThumbnailer$ThumbnailToProcess;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 258
    iget-object p0, p0, Lfeem/FeemThumbnailer$ThumbnailToProcess;->mImageViewWeakReference:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$002(Lfeem/FeemThumbnailer$ThumbnailToProcess;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 258
    iput-object p1, p0, Lfeem/FeemThumbnailer$ThumbnailToProcess;->mImageViewWeakReference:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method static synthetic access$100(Lfeem/FeemThumbnailer$ThumbnailToProcess;)I
    .locals 0

    .line 258
    iget p0, p0, Lfeem/FeemThumbnailer$ThumbnailToProcess;->mPosition:I

    return p0
.end method

.method static synthetic access$102(Lfeem/FeemThumbnailer$ThumbnailToProcess;I)I
    .locals 0

    .line 258
    iput p1, p0, Lfeem/FeemThumbnailer$ThumbnailToProcess;->mPosition:I

    return p1
.end method
