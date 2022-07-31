.class Lfeem/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfeem/MainActivity;->handleSendFile(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfeem/MainActivity;

.field final synthetic val$json:Ljava/lang/String;


# direct methods
.method constructor <init>(Lfeem/MainActivity;Ljava/lang/String;)V
    .locals 0

    .line 346
    iput-object p1, p0, Lfeem/MainActivity$5;->this$0:Lfeem/MainActivity;

    iput-object p2, p0, Lfeem/MainActivity$5;->val$json:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 349
    iget-object v0, p0, Lfeem/MainActivity$5;->this$0:Lfeem/MainActivity;

    iget-object v1, p0, Lfeem/MainActivity$5;->val$json:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfeem/MainActivity;->loadUrl(Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lfeem/MainActivity$5;->val$json:Ljava/lang/String;

    const-string v1, "feem"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
