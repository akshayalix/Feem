.class Lfeem/FeemService$5;
.super Ljava/lang/Object;
.source "FeemService.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfeem/FeemService;->from_core([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfeem/FeemService;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lfeem/FeemService;Ljava/lang/String;)V
    .locals 0

    .line 1126
    iput-object p1, p0, Lfeem/FeemService$5;->this$0:Lfeem/FeemService;

    iput-object p2, p0, Lfeem/FeemService$5;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 1130
    iget-object p1, p0, Lfeem/FeemService$5;->this$0:Lfeem/FeemService;

    iget-object p2, p0, Lfeem/FeemService$5;->val$message:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lfeem/FeemService;->to_ui(Ljava/lang/String;)V

    return-void
.end method
