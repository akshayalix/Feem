.class Lfeem/FeemThumbnailer$1;
.super Ljava/lang/Object;
.source "FeemThumbnailer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfeem/FeemThumbnailer;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfeem/FeemThumbnailer;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$ttp:Lfeem/FeemThumbnailer$ThumbnailToProcess;


# direct methods
.method constructor <init>(Lfeem/FeemThumbnailer;Lfeem/FeemThumbnailer$ThumbnailToProcess;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lfeem/FeemThumbnailer$1;->this$0:Lfeem/FeemThumbnailer;

    iput-object p2, p0, Lfeem/FeemThumbnailer$1;->val$ttp:Lfeem/FeemThumbnailer$ThumbnailToProcess;

    iput-object p3, p0, Lfeem/FeemThumbnailer$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 89
    iget-object v0, p0, Lfeem/FeemThumbnailer$1;->val$ttp:Lfeem/FeemThumbnailer$ThumbnailToProcess;

    invoke-static {v0}, Lfeem/FeemThumbnailer$ThumbnailToProcess;->access$000(Lfeem/FeemThumbnailer$ThumbnailToProcess;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lfeem/FeemThumbnailer$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
