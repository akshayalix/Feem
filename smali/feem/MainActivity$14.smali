.class Lfeem/MainActivity$14;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfeem/MainActivity;->to_ui(Ljava/lang/String;)V
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

    .line 976
    iput-object p1, p0, Lfeem/MainActivity$14;->this$0:Lfeem/MainActivity;

    iput-object p2, p0, Lfeem/MainActivity$14;->val$json:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 979
    iget-object v0, p0, Lfeem/MainActivity$14;->this$0:Lfeem/MainActivity;

    iget-object v1, p0, Lfeem/MainActivity$14;->val$json:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfeem/MainActivity;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
