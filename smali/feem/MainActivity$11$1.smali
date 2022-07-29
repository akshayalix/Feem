.class Lfeem/MainActivity$11$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lfeem/RequestPermissionHandler$RequestPermissionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfeem/MainActivity$11;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lfeem/MainActivity$11;


# direct methods
.method constructor <init>(Lfeem/MainActivity$11;)V
    .locals 0

    .line 508
    iput-object p1, p0, Lfeem/MainActivity$11$1;->this$1:Lfeem/MainActivity$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 3

    .line 516
    iget-object v0, p0, Lfeem/MainActivity$11$1;->this$1:Lfeem/MainActivity$11;

    iget-object v0, v0, Lfeem/MainActivity$11;->this$0:Lfeem/MainActivity;

    const-string v1, "Request permission failed. Feem will not be able to send or receive files."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onSuccess()V
    .locals 0

    return-void
.end method
