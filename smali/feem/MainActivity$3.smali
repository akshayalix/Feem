.class Lfeem/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfeem/MainActivity;->handleActivityIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfeem/MainActivity;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lfeem/MainActivity;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lfeem/MainActivity$3;->this$0:Lfeem/MainActivity;

    iput-object p2, p0, Lfeem/MainActivity$3;->val$action:Ljava/lang/String;

    iput-object p3, p0, Lfeem/MainActivity$3;->val$type:Ljava/lang/String;

    iput-object p4, p0, Lfeem/MainActivity$3;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 286
    iget-object v0, p0, Lfeem/MainActivity$3;->val$action:Ljava/lang/String;

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfeem/MainActivity$3;->val$type:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "text/plain"

    .line 288
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 291
    :cond_0
    iget-object v0, p0, Lfeem/MainActivity$3;->this$0:Lfeem/MainActivity;

    iget-object v1, p0, Lfeem/MainActivity$3;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lfeem/MainActivity;->handleSendFile(Landroid/content/Intent;)V

    goto :goto_0

    .line 293
    :cond_1
    iget-object v0, p0, Lfeem/MainActivity$3;->val$action:Ljava/lang/String;

    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lfeem/MainActivity$3;->val$type:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 295
    iget-object v0, p0, Lfeem/MainActivity$3;->this$0:Lfeem/MainActivity;

    iget-object v1, p0, Lfeem/MainActivity$3;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lfeem/MainActivity;->handleSendMultipleFiles(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method
