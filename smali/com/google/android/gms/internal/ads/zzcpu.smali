.class public final Lcom/google/android/gms/internal/ads/zzcpu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.3.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcub;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcub<",
        "Lcom/google/android/gms/internal/ads/zzcpv;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfgl:Lcom/google/android/gms/internal/ads/zzczu;

.field private final zzgej:Lcom/google/android/gms/internal/ads/zzdhd;

.field private final zzgek:Landroid/view/View;

.field private final zzup:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdhd;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzczu;Landroid/view/ViewGroup;)V
    .locals 0
    .param p4    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpu;->zzgej:Lcom/google/android/gms/internal/ads/zzdhd;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcpu;->zzup:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcpu;->zzfgl:Lcom/google/android/gms/internal/ads/zzczu;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcpu;->zzgek:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final zzanc()Lcom/google/android/gms/internal/ads/zzdhe;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdhe<",
            "Lcom/google/android/gms/internal/ads/zzcpv;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpu;->zzgej:Lcom/google/android/gms/internal/ads/zzdhd;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcpx;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcpx;-><init>(Lcom/google/android/gms/internal/ads/zzcpu;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdhd;->zzd(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzdhe;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzand()Lcom/google/android/gms/internal/ads/zzcpv;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcpv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcpu;->zzup:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcpu;->zzfgl:Lcom/google/android/gms/internal/ads/zzczu;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzczu;->zzblm:Lcom/google/android/gms/internal/ads/zzuj;

    .line 9
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcpu;->zzgek:Landroid/view/View;

    :goto_0
    if-eqz v4, :cond_1

    .line 12
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_1

    const/4 v6, -0x1

    .line 15
    instance-of v7, v5, Landroid/view/ViewGroup;

    if-eqz v7, :cond_0

    .line 16
    move-object v6, v5

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v6

    .line 17
    :cond_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 18
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "type"

    invoke-virtual {v4, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "index_of_child"

    .line 19
    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 20
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    instance-of v4, v5, Landroid/view/View;

    if-eqz v4, :cond_1

    .line 22
    move-object v4, v5

    check-cast v4, Landroid/view/View;

    goto :goto_0

    .line 25
    :cond_1
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcpv;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzuj;Ljava/util/List;)V

    return-object v0
.end method
