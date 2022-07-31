.class Lfeem/PageFileBrowser$AsyncDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "PageFileBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfeem/PageFileBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AsyncDrawable"
.end annotation


# instance fields
.field private final bitmapWorkerTaskReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lfeem/PageFileBrowser$BitmapWorkerTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lfeem/PageFileBrowser$BitmapWorkerTask;)V
    .locals 0

    .line 378
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 379
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lfeem/PageFileBrowser$AsyncDrawable;->bitmapWorkerTaskReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public getBitmapWorkerTask()Lfeem/PageFileBrowser$BitmapWorkerTask;
    .locals 1

    .line 384
    iget-object v0, p0, Lfeem/PageFileBrowser$AsyncDrawable;->bitmapWorkerTaskReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfeem/PageFileBrowser$BitmapWorkerTask;

    return-object v0
.end method
