.class Lfeem/MainActivity$13$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfeem/MainActivity$13;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lfeem/MainActivity$13;


# direct methods
.method constructor <init>(Lfeem/MainActivity$13;)V
    .locals 0

    .line 870
    iput-object p1, p0, Lfeem/MainActivity$13$4;->this$1:Lfeem/MainActivity$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 872
    iget-object v0, p0, Lfeem/MainActivity$13$4;->this$1:Lfeem/MainActivity$13;

    iget-object v0, v0, Lfeem/MainActivity$13;->this$0:Lfeem/MainActivity;

    invoke-static {v0}, Lfeem/MainActivity;->access$700(Lfeem/MainActivity;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfeem/MainActivity$13$4;->this$1:Lfeem/MainActivity$13;

    iget-object v0, v0, Lfeem/MainActivity$13;->this$0:Lfeem/MainActivity;

    invoke-static {v0}, Lfeem/MainActivity;->access$700(Lfeem/MainActivity;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 873
    iget-object v0, p0, Lfeem/MainActivity$13$4;->this$1:Lfeem/MainActivity$13;

    iget-object v0, v0, Lfeem/MainActivity$13;->this$0:Lfeem/MainActivity;

    invoke-static {v0}, Lfeem/MainActivity;->access$700(Lfeem/MainActivity;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    .line 874
    iget-object v0, p0, Lfeem/MainActivity$13$4;->this$1:Lfeem/MainActivity$13;

    iget-object v0, v0, Lfeem/MainActivity$13;->this$0:Lfeem/MainActivity;

    invoke-virtual {v0}, Lfeem/MainActivity;->loadads()V

    :cond_0
    return-void
.end method
