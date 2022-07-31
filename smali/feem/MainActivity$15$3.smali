.class Lfeem/MainActivity$15$3;
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

.field final synthetic val$json:Ljava/lang/String;


# direct methods
.method constructor <init>(Lfeem/MainActivity$15;Ljava/lang/String;)V
    .locals 0

    .line 1398
    iput-object p1, p0, Lfeem/MainActivity$15$3;->this$1:Lfeem/MainActivity$15;

    iput-object p2, p0, Lfeem/MainActivity$15$3;->val$json:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1401
    iget-object v0, p0, Lfeem/MainActivity$15$3;->this$1:Lfeem/MainActivity$15;

    iget-object v0, v0, Lfeem/MainActivity$15;->this$0:Lfeem/MainActivity;

    iget-object v1, p0, Lfeem/MainActivity$15$3;->val$json:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfeem/MainActivity;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
