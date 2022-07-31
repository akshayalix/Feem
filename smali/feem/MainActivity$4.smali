.class Lfeem/MainActivity$4;
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


# direct methods
.method constructor <init>(Lfeem/MainActivity;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lfeem/MainActivity$4;->this$0:Lfeem/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 322
    iget-object v0, p0, Lfeem/MainActivity$4;->this$0:Lfeem/MainActivity;

    const-string v1, "Feem does not support remote files."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
