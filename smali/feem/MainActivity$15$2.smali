.class Lfeem/MainActivity$15$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfeem/MainActivity$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lfeem/MainActivity$15;


# direct methods
.method constructor <init>(Lfeem/MainActivity$15;)V
    .locals 0

    .line 1308
    iput-object p1, p0, Lfeem/MainActivity$15$2;->this$1:Lfeem/MainActivity$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1311
    iget-object v0, p0, Lfeem/MainActivity$15$2;->this$1:Lfeem/MainActivity$15;

    iget-object v0, v0, Lfeem/MainActivity$15;->this$0:Lfeem/MainActivity;

    const-string v1, "Feem does not support remote files."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
